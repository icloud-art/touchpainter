//
//  CanvasViewController.h
//  TouchPainter
//
//  Created by Charles on 2017/11/12.
//  Copyright © 2017年 Charles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

@interface CanvasViewController : UIViewController {
    @private
    CanvasView *_canvasView;
}

@property (nonatomic,strong) CanvasView *canvasView;

- (CanvasView *)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

@end
