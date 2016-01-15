//
//  ViewController.m
//  TomCatGame
//
//  Created by 田野 on 15/6/24.
//  Copyright (c) 2015年 Fire2Sky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *tomImageView;
- (IBAction)touchHeadOnClick:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)touchHeadOnClick:(UIButton *)sender {
    //添加轮播动画
    //首先创建图片数组
    NSMutableArray *tomImages = [NSMutableArray array];
    for (int i =0; i<81 ; i++){
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg" , @"knockout", i ];
        //UIImage *image = [UIImage imageNamed:imagesName];
        
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        [tomImages addObject:image];
        
//        参考案例
//        NSBundle *bundle = [NSBundle mainBundle];
//        NSString *plistPath = [bundle pathForResource:@"team"
//                                               ofType:@"plist"];

    }
    //设置动画过程
    
    //添加动画的执行图片的数组
    [self.tomImageView setAnimationImages:tomImages];
    
    //设置动画执行的时间
    [self.tomImageView setAnimationDuration:self.tomImageView.animationImages.count *0.1];
    
    //设置动画执行的次数
    [self.tomImageView setAnimationRepeatCount:1];
    
    //设置动画开始执行
    [self.tomImageView startAnimating];
    
    //在动画结束,清空数组
    [self performSelector:@selector(clearImages) withObject:nil afterDelay:self.tomImageView.animationDuration];
    
}


-(void) clearImages
{
    self.tomImageView.animationImages =nil;
}

@end
