//
//  UILabel+Extension.m
//  Add_ property_in_category
//
//  Created by 方冬冬 on 2017/7/26.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "UILabel+Extension.h"
#import <objc/runtime.h>
//定义常量 必须是C语言字符串
static char *CloudoxKey = "CloudoxKey";

@implementation UILabel (Extension)


- (void)setLabelName:(NSString *)labelName{
    
  /*
    关联方法：
    objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy);
    
    参数：
    * id object 给哪个对象的属性赋值
    const void *key 属性对应的key
    id value  设置属性值为value
    objc_AssociationPolicy policy  使用的策略，是一个枚举值，和copy，retain，assign是一样的，手机开发一般都选择NONATOMIC
    */
    objc_setAssociatedObject(self, CloudoxKey, labelName, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UILabel *)labelName{
    return objc_getAssociatedObject(self, CloudoxKey);

}

@end
