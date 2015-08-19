//
//  Student.m
//  练习------XML  JSON
//
//  Created by lanou3g on 15/7/30.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}
-(NSString *)description{
    return [NSString stringWithFormat:@"%@  %@  %@  %@",_name,_number,_time,_address];
}
@end
