//
//  GAMainViewController.m
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "GAMainViewController.h"
#import "GABoard.h"
#import "GASolver.h"

#define boardSize 5

@interface GAMainViewController ()
@property (strong,nonatomic) GASolver *solver;
@end

@implementation GAMainViewController

+(id)newViewController{
    GAMainViewController *mainViewController = [[GAMainViewController alloc] initWithNibName:nil bundle:nil];
    mainViewController.currentBoardSize = boardSize;
    return mainViewController;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1.0];

    self.solver = [[GASolver alloc] init];
    [self addNewBoard];
    [self.solver setUpWtihBoard:self.board.tiles];
    
    [self addSliderToScreenAtY:self.board.view.frame.size.height + self.board.view.frame.origin.y + 10];
    [self addNewBoardButtonToScreenAtY:self.boardSizeSlider.frame.origin.y + 50];
    
    // Use these togglers if you want to compare the relative merits of different methods of solving the problem
    //[self addTogglersToScreenAtY:self.makeNewBoardButton.frame.origin.y + self.makeNewBoardButton.frame.size.height + 15];
}

-(void)addSliderToScreenAtY:(float)currentY{
    self.boardSizeSlider = [[UISlider alloc] initWithFrame:CGRectMake(10, currentY, self.view.bounds.size.width - 20, 40)];
    self.boardSizeSlider.minimumValue = 3;
    self.boardSizeSlider.maximumValue = 10;
    [self.boardSizeSlider setValue:boardSize];
    [self.boardSizeSlider addTarget:self action:@selector(onSliderValueChange:) forControlEvents:UIControlEventValueChanged];
    [self.boardSizeSlider addTarget:self action:@selector(onSliderTouchUp:) forControlEvents:(UIControlEventTouchUpInside | UIControlEventTouchUpOutside)];
    
    [self.view addSubview:self.boardSizeSlider];
}

-(void)addNewBoardButtonToScreenAtY:(float)currentY{
    self.makeNewBoardButton = [[UIButton alloc] initWithFrame:CGRectMake(10, currentY, 120, 40)];
    [self.makeNewBoardButton setTitle:@"New Board" forState:UIControlStateNormal];
    [self.makeNewBoardButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.makeNewBoardButton.layer.cornerRadius = 10;
    self.makeNewBoardButton.layer.borderWidth = 1;
    self.makeNewBoardButton.layer.borderColor = [[UIColor colorWithRed:0 green:0 blue:1.0 alpha:0.3] CGColor];
    self.makeNewBoardButton.center = CGPointMake(self.view.bounds.size.width/2, self.makeNewBoardButton.frame.origin.y + self.makeNewBoardButton.frame.size.height/2);
    [self.makeNewBoardButton addTarget:self action:@selector(onNewBoardButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.makeNewBoardButton];
}

-(void)addTogglersToScreenAtY:(float)currentY{
    self.toggler1 = [[UISwitch alloc] initWithFrame:CGRectMake(10, currentY, 80, 40)];
    self.toggler2 = [[UISwitch alloc] initWithFrame:CGRectMake(130, currentY, 80, 40)];
    self.toggler3 = [[UISwitch alloc] initWithFrame:CGRectMake(250, currentY, 80, 40)];
    
    [self.toggler1 addTarget:self action:@selector(onToggler1ValueChange:) forControlEvents:UIControlEventValueChanged];
    [self.toggler2 addTarget:self action:@selector(onToggler2ValueChange:) forControlEvents:UIControlEventValueChanged];
    [self.toggler3 addTarget:self action:@selector(onToggler3ValueChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.toggler1];
    [self.view addSubview:self.toggler2];
    [self.view addSubview:self.toggler3];
}



-(void)onNewBoardButtonPress:(UIButton*)sender{
    [self resetBoard];
}

-(void)resetBoard{
    [self.board.view removeFromSuperview];
    self.board = nil;
    [self addNewBoard];
}

-(void)addNewBoard{
    CGRect boardFrame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.width);
    self.board = [GABoard newBoardWithFrame:boardFrame andBoardSize:self.currentBoardSize andSolver:self.solver];
    [self.view addSubview:self.board.view];
}



-(void)onToggler1ValueChange:(UISwitch*)sender{

}

-(void)onToggler2ValueChange:(UISwitch*)sender{

}

-(void)onToggler3ValueChange:(UISwitch*)sender{

}


-(void)onSliderValueChange:(UISlider*)sender{
    int value = (int)sender.value;
    if(value != self.currentBoardSize){
        self.currentBoardSize = value;
        [self resetBoard];
    }
}

-(void)onSliderTouchUp:(UISlider*)sender{
    [self.solver setUpWtihBoard:self.board.tiles];
}


@end
