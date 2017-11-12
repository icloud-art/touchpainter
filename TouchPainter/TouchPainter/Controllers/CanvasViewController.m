//
//  CanvasViewController.m
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import "CanvasViewController.h"
#import "PaperCanvasViewGenerator.h"
#import "ClothCanvasViewGenerator.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController
@synthesize canvasView = _canvasView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"涂鸦";
    [self setUpView];
}

- (void)setUpView {
    
    UIView *superView = self.view;
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc]init];
    PaperCanvasViewGenerator *paperGenerator = [[PaperCanvasViewGenerator alloc]init];
    ClothCanvasViewGenerator *clothGenerator = [[ClothCanvasViewGenerator alloc]init];
   
    CanvasView *defaultView = [self loadCanvasViewWithGenerator:defaultGenerator];
    defaultView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:defaultView];
    
    CanvasView *paperView = [self loadCanvasViewWithGenerator:paperGenerator];
    [self.view addSubview:paperView];
    
    CanvasView *clothView = [self loadCanvasViewWithGenerator:clothGenerator];
    [self.view addSubview:clothView];
    
    [defaultView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView.top).offset(80);
        make.left.equalTo(superView.left).offset(10);
        make.right.equalTo(paperView.left).offset(-10);
        make.bottom.equalTo(clothView.top).offset(-10);
        make.width.equalTo(paperView.width);
        make.height.equalTo(@(200));
    }];

    [paperView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView.top).offset(80);
        make.left.equalTo(defaultView.right).offset(10);
        make.right.equalTo(superView.right).offset(-10);
        make.height.equalTo(@(200));
    }];
    
    [clothView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(defaultView.bottom).offset(10);
        make.left.equalTo(defaultView.left);
        make.width.equalTo(paperView.width);
        make.height.equalTo(@(200));
    }];
}

- (CanvasView *)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [_canvasView removeFromSuperview];
    CanvasView *aCanvasView = [generator canvasViewWithFrame:CGRectZero];
    return aCanvasView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
