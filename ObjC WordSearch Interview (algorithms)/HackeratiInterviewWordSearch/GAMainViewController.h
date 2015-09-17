//
//  GAMainViewController.h
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GABoard;

@interface GAMainViewController : UIViewController

+(id)newViewController;

@property (assign,nonatomic) int currentBoardSize;

@property (strong,nonatomic) GABoard *board;

@property (strong,nonatomic) UISwitch *toggler1;

@property (strong,nonatomic) UISwitch *toggler2;

@property (strong,nonatomic) UISwitch *toggler3;

@property (strong,nonatomic) UIButton *makeNewBoardButton;

@property (strong,nonatomic) UISlider *boardSizeSlider;

@end
