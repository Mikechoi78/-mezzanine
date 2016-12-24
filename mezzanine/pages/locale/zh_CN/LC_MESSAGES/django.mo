��          �      l      �     �  �   �  �  �     ;  J   ?  ?   �     �     �    �  3   �          ,     1     7     F     K     Q     `     p     ~  �  �  �   b	  �   I
  t  �
     b  B   i  <   �     �     �  �   �  0   �     �     �                         #     3     C     V        
                                                                           	               A sequence of IDs from the ``PAGE_MENU_TEMPLATES`` setting that defines the default menu templates selected when creating new pages. By default all menu templates are selected. Set this setting to an empty sequence to have no templates selected by default. A sequence of ``Page`` subclasses in the format ``app_label.model_name``, that controls the ordering of items in the select drop-down for adding new pages within the admin page tree interface. A sequence of templates used by the ``page_menu`` template tag. Each item in the sequence is a three item sequence, containing a unique ID for the template, a label for the template, and the template path. These templates are then available for selection when editing which menus a page should appear in. Note that if a menu template is used that doesn't appear in this setting, all pages will appear in it. Add An error occured with the following class. Does it subclass Page directly? Could not load the model for the following page,was it removed? Footer Home If ``True``, pages with ``login_required`` checked will still be listed in menus and search results, for unauthenticated users. Regardless of this setting, when an unauthenticated user accesses a page with ``login_required`` checked, they'll be redirected to the login page. If checked, only logged in users can view this page Left-hand tree Link Links Login required Page Pages Rich text page Rich text pages Show in menus Top navigation bar Project-Id-Version: Mezzanine
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-11-09 10:33-0430
PO-Revision-Date: 2016-11-18 17:42+0800
Last-Translator: Sebastián Ramírez Magrí <sebasmagri@gmail.com>
Language-Team: Chinese (China) (http://www.transifex.com/projects/p/mezzanine/language/zh_CN/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 1.8.9
 从`` PAGE_MENU_TEMPLATES``的选择的序列ID设置，它定义了在创建新页面时默认的菜单模板。默认情况下，所有的菜单模板被选中。将此项设置为空序列，表示没有默认模板被选中。 继承``Page``类且形如``path.to.model``的页面顺序的列表，这个是用来控制管理页面中添加新页面的下拉列表框中的顺序和内容。 ``page_menu`` 模板标签所使用的一系列模板。序列里的每项内容有一个三个项目的序列，包含模板唯一的ID，模板的label，以及模板的路径。当编辑选择一个页面应该出现在哪里时，这些模板将作为可选项。要注意的是，如果一个菜单模板已被使用但未出现在设置中，将显示所有页面。 添加 下面的类发生了一个错误。它是 Page 类的子类吗？ 不能正确读取此页的模型，是否已经删除了？ 页脚 首页 如果``True``，对于未经身份验证的用户`` 需要登陆``的页面仍然会被列在菜单和搜索结果里。否则，未经身份验证的用户于会被重定向到登录页面。 如果选中，只有登录的用户可以看到 左边树结构 链接 链接 需要登录 页面 页面 Rich text页面 Rich text页面 在菜单中显示 首层导航条 