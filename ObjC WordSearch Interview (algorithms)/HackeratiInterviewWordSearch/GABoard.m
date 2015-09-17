//
//  GABoard.m
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "GABoard.h"
#import "GATile.h"
#import "GASolver.h"

#define spaceBetweenTiles 5

@interface GABoard ()
@property (assign,nonatomic) int boardSize;

@end

@implementation GABoard

+(id)newBoardWithFrame:(CGRect)frame andBoardSize:(int)boardSize andSolver:(GASolver *)solver{
    GABoard *board = [[GABoard alloc] initWithNibName:nil bundle:nil];
    board.boardSize = boardSize;
    board.view.frame = frame;
    board.solver = solver;
    return board;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self setUpBoardWithSize:self.boardSize];
}

-(void)setUpBoardWithSize:(int)boardSize{
    NSArray *letters = [self alphabetLettersWithScrabbleFrequencies];
    CGSize tileSize = [self tileSizeForBoardSize:boardSize];
    
    float xx = spaceBetweenTiles;
    float yy = spaceBetweenTiles;
    
    NSMutableArray *mutBoard = [NSMutableArray array];
    
    for(int i=0; i<boardSize; i++){
        NSMutableArray *rowArray = [NSMutableArray array];
        [mutBoard addObject:rowArray];
        for(int j=0; j<boardSize; j++){
            
            NSString *randomLetter = letters[arc4random_uniform([letters count])];
            tileLocation location;
            location.row = i;
            location.col = j;
            GATile *newTile = [[GATile alloc] initWithFrame:CGRectMake(xx, yy, tileSize.width, tileSize.height)
                                                     letter:randomLetter
                                               tileLocation:location
                                                  boardSize:self.boardSize];
            [newTile addTarget:self action:@selector(tileClicked:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:newTile];
            [rowArray addObject:randomLetter];
            xx += tileSize.width + spaceBetweenTiles;
            
        }
        yy += tileSize.height + spaceBetweenTiles;
        xx = spaceBetweenTiles;
    }
    
    self.tiles = [mutBoard copy];
}


-(NSArray*)alphabetLetters{
    NSMutableArray *letters = [NSMutableArray array];
    for (char a = 'A'; a <= 'Z'; a++){
        [letters addObject:[NSString stringWithFormat:@"%c", a]];
    }
    return [letters copy];
}

-(NSArray*)alphabetLettersWithScrabbleFrequencies{
    NSString *lettersWithScrabbleFrequencies = @"eeeeeeeeeeeeaaaaaaaaaiiiiiiiiioooooooonnnnnnrrrrrrttttttllllssssuuuuddddgggbbccmmppffhhvvwwyykjxqz";
    NSMutableArray *letters = [NSMutableArray array];
    for(int i=0; i<lettersWithScrabbleFrequencies.length; i++){
        NSString *oneLetter = [lettersWithScrabbleFrequencies substringWithRange:NSMakeRange(i, 1)];
        [letters addObject:oneLetter];
    }
    return [letters copy];
}

-(CGSize)tileSizeForBoardSize:(int)boardSize{
    float smallestSide = self.view.bounds.size.width;
    if(self.view.bounds.size.height < smallestSide) smallestSide = self.view.bounds.size.height;
    smallestSide -= (boardSize + 1) * spaceBetweenTiles;
    float tileSide = smallestSide / boardSize;
    return CGSizeMake(tileSide, tileSide);
}

-(void)tileClicked:(GATile*)sender{
    //NSLog(@"cicked = %@",sender.letter);
    //NSLog(@"location = %d %d",sender.tileLocation.row, sender.tileLocation.col);
    
    [self.solver solveBoard:self.tiles clickedAtRow:sender.tileLocation.row col:sender.tileLocation.col];
}




@end
