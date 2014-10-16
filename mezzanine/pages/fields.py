from __future__ import unicode_literals

from mezzanine.conf import settings
from mezzanine.core.fields import MultiChoiceField


class MenusField(MultiChoiceField):
    """
    ``MultiChoiceField`` for specifying which menus a page should appear in.
    """

    def __init__(self, *args, **kwargs):
        choices = (m[:2] for m in getattr(settings, "PAGE_MENU_TEMPLATES", []))
        defaults = {"max_length": 100, "choices": choices}
        defaults.update(kwargs)
        super(MenusField, self).__init__(*args, **defaults)
        self._overridden_default = ("default" in kwargs)

    def has_default(self):
        """
        We either have a user-provided default or can determine one based on
        settings.
        """
        return True

    def get_default(self):
        """
        If the user provided a default in the field definition, returns it,
        otherwise determines the default menus based on available choices and
        ``PAGE_MENU_TEMPLATES_DEFAULT``. Ensures the default is not mutable.
        """
        if self._overridden_default:
            # Even with user-provided default we'd rather not have it
            # forced to text. Compare with Field.get_default().
            if callable(self.default):
                default = self.default()
            else:
                default = self.default
        else:
            # Depending on PAGE_MENU_TEMPLATES_DEFAULT:
            # * None or no value: all choosable menus;
            # * some sequence: specified menus;
            # (* empty sequence: no menus).
            default = getattr(settings, "PAGE_MENU_TEMPLATES_DEFAULT", None)
            if default is None:
                choices = self.get_flatchoices(include_blank=False)
                default = (c[0] for c in choices)
        # Default can't be mutable, as references to it are shared among
        # model instances; all sane values should be castable to a tuple.
        return tuple(default)


# South requires custom fields to be given "rules".
# See http://south.aeracode.org/docs/customfields.html
if "south" in settings.INSTALLED_APPS:
    try:
        from south.modelsinspector import add_introspection_rules
        add_introspection_rules(patterns=["mezzanine\.pages\.fields\."],
                                rules=[((MenusField,), [], {})])
    except ImportError:
        pass
