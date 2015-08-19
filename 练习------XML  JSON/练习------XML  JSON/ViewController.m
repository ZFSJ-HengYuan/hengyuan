            //
//  ViewController.m
//  练习------XML  JSON
//
//  Created by lanou3g on 15/7/30.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ViewController.h"
#import "GDataXMLNode.h"
#import "Student.h"

@interface ViewController ()
{
    NSMutableArray *_stuArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"Student.txt" ofType:nil];
    NSData *data=[NSData dataWithContentsOfFile:filePath ];
    
    //解析XML
    _stuArray=[NSMutableArray array];
    GDataXMLDocument *XMLDocument=[[GDataXMLDocument alloc]initWithData:data options:0 error:nil];
    GDataXMLElement *rootElement=XMLDocument.rootElement;
    for (GDataXMLElement *StuElement in rootElement.children) {
        Student *student=[[Student alloc]init];
        for (GDataXMLElement *element in StuElement.children) {
            [student setValue:element.stringValue forKey:element.name];
        }
        [_stuArray addObject:student];
    }
    
    
    
    for (Student *stu in _stuArray) {
        NSLog(@"%@",stu);
    }
    
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
