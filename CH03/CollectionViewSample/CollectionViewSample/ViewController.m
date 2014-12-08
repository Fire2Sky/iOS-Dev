////
////  ViewController.m
////  CollectionViewSample
////
////  Created by 田野 on 14/12/4.
////  Copyright (c) 2014年 Fire2Sky. All rights reserved.
////
//
//#import "ViewController.h"
//#import "Cell.h"
//
//@interface ViewController ()
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view, typically from a nib.
//    
//    //获取plsit文件中全部属性
//    NSBundle *bundle = [NSBundle mainBundle];
//    NSString *plistPath = [bundle pathForResource:@"events" ofType:@"plist"];
//    NSArray *array = [[NSArray alloc] initWithContentsOfFile:plistPath];
//    
//    self.events = array;
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//
//
//
////实现集合视图的数据源协议
////节中的行的数目
//- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *) collectionView
//{
//    return [self.events count] / 2;
//    
//}
////节中列的个数
//- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
//{
//    return 2;
//    
//}
////节中显示如何数据
//- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
//    NSDictionary *event = [self.events objectAtIndex:(indexPath.section * 2 + indexPath.row)];
//    cell.label.text = [event objectForKey:@"name"];
//    cell.imageView.image = [UIImage imageNamed:[event objectForKey:@"image"]];
//    return cell;
//}
//
//
////实现UICollectionView协议
//-(void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSDictionary *event = [self.events objectAtIndex:(indexPath.section *2 + indexPath.row)];
//    NSLog(@"select event name: %@",[event objectForKey:@"name"]);
//}
//
//@end







//
//  ViewController.m
//  CollectionViewSample
//
//  Created by 关东升 on 12-8-8.
//  本书网站：http://www.iosbook1.com
//  智捷iOS课堂：http://www.51work6.com
//  智捷iOS课堂在线课堂：http://v.51work6.com
//  智捷iOS课堂新浪微博：http://weibo.com/u/3215753973
//  作者微博：http://weibo.com/516inc
//  官方csdn博客：http://blog.csdn.net/tonny_guan
//  QQ：1575716557 邮箱：jylong06@163.com
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"events"
                                           ofType:@"plist"];
    //获取属性列表文件中的全部数据
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:plistPath];
    self.events = array;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self.events count] / 2;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *event = [self.events objectAtIndex:(indexPath.section*2 + indexPath.row)];
    cell.label.text = [event objectForKey:@"name"];
    cell.imageView.image = [UIImage imageNamed:[event objectForKey:@"image"]];
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *event = [self.events objectAtIndex:(indexPath.section*2 + indexPath.row)];
    NSLog(@"select event name : %@", [event objectForKey:@"name"]);
    
}


@end

