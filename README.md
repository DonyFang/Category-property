# Category-property
add a new property in category
Category（类别）：

1.对于不熟悉Category的人，这里也先说明一下Category是什么以及怎么创建Category。由于一些特殊的需要，我们可能要给现有的类添加一些新的方法，
这个需求用继承也可以做到，但是会显得比较重，这时候就可以用Category来达到目的，创建一个已有类的Category，可以给这个类添加你需要的方法，
在使用的时候，只需要import你创建的Category，在使用的时候还是使用原来的类，但是你会惊奇的发现他支持你自己在Category中添加的方法。

2.类别可以为已有的类添加方法，但是却不能直接添加属性，因为即使你添加了@property，它既不会生成实例变量，也不会生成setter、getter方法，
即使你添加了也无法使用。所以我们首先需要自己去添加setter、getter方法，这个好办，直接在.m文件里加就可以了，但是要真正添加可以使用的属性，
还需要利用Runtime来关联对象，关于关联对象的技术可以看传送门：OC中Runtime浅析，这里只讲怎么用来添加属性，我们在setter方法里关联一个对象，
在getter方法里获取对应key关联的对象，就可以啦.
这是测试
