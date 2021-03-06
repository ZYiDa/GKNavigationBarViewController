//
//  GKToutiaoHomeViewController.m
//  GKNavigationBarViewControllerDemo
//
//  Created by QuintGao on 2017/7/9.
//  Copyright © 2017年 高坤. All rights reserved.
//

#import "GKToutiaoHomeViewController.h"
#import "GKToutiaoDetailViewController.h"

@interface GKToutiaoHomeViewController ()

@end

@implementation GKToutiaoHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    self.gk_navBackgroundColor = [UIColor colorWithRed:(212 / 255.0) green:(25 /255.0) blue:(37 / 255.0) alpha:1.0];
    
    self.gk_navRightBarButtonItem = [UIBarButtonItem itemWithTitle:@"关闭" target:self action:@selector(closeAction)];
    
    UIImageView *pageImage = [UIImageView new];
    pageImage.frame = CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64 - 49);
    pageImage.image = [UIImage imageNamed:@"home_page"];
    [self.view addSubview:pageImage];
    
    pageImage.userInteractionEnabled = YES;
    [pageImage addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pageAction)]];
}

- (void)pageAction {
    GKToutiaoDetailViewController *detailVC = [GKToutiaoDetailViewController new];
    
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)closeAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
