//
//  main.m
//  OCRuntime
//
//  Created by xingye yang on 2021/9/18.
//


#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

@interface Person:NSObject
{
@public
    //定义一个私有属性,这个属性系统不会生成set/get方法
    int _age;
}
//定义一个property类型的属性,这个属性系统会帮我们生成set/get方法
@property(nonatomic,assign)int height;
-(void)run;
+(void)home;
@end

@implementation Person
-(void)run{
}

+(void)home{
}
@end


int main(int argc, const char * argv[]) {
    
    
    Person *p = [[Person alloc] init];
    
    p->_age = 20;
    int a = p->_age;
    
    p.height = 100;
    
    int h = p.height;
    
    [p run];
    
    [Person home];
    
    return 0;
}
