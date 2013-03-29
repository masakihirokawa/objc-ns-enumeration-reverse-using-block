//
//  ViewController.m
//  InTheArrayReverseUsingBlock
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"Apple",
                      @"Banana",
                      @"Orange",
                      nil];
  
  //順序付けされたセットを取得する
  NSOrderedSet *orderdSet;
  orderdSet = [NSOrderedSet orderedSetWithArray:myArray];
  
  //オブジェクトを順番に取得する
  NSLog(@"From myArray");
  [myArray enumeratorObjectsWithOptions:NSEnumerationReverse
                             usingBlock:
   ^(id obj, NSInteger idx, BOOL *stop) {
     NSLog(@"%@", obj);
   }];
  
  //各オブジェクトを取得する
  NSLog(@"From orderdSet");
  [orderedSet enumeratorObjectsWithOptions:NSEnumerationReverse
                               usingBlock:
   ^(id obj, NSInteger idx, BOOL *stop) {
     NSLog(@"%@", obj);
   }];
}

@end
