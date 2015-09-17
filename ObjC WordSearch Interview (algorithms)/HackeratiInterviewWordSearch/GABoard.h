//
//  GABoard.h
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GASolver;

@interface GABoard : UIViewController

+(id)newBoardWithFrame:(CGRect)frame andBoardSize:(int)boardSize andSolver:(GASolver*)solver;

@property (strong,nonatomic) NSArray *tiles;

@property (strong,nonatomic) GASolver *solver;

@end
