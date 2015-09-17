//
//  GASolver.m
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "GASolver.h"

@interface GASolver ()

@end



@implementation GASolver


-(id)init{
    if(self = [super init]){
        self.allWordsArray = [self allTheWordsInTheiOSDictionary];
    }
    return self;
}


-(void)setUpWtihBoard:(NSArray*)board{
    /*
     do any setup you want here.
     board looks something like this:
     
     [["A","G","Y","E"],
      ["N","W","R","T"],
      ["B","I","I","P"],
      ["C","R","O","N"]]
     
    */

    //NSLog(@"board = %@",board);
}


-(void)solveBoard:(NSArray*)board clickedAtRow:(int)row col:(int)col{
    NSDate *date = [NSDate date];
    NSLog(@"All possible words = %@",[self findAllPossibleWordsForBoard:board clickedAtRow:row col:col]);
    NSLog(@"time to solve = %f",[[NSDate date] timeIntervalSinceDate:date]);
}

-(NSArray*)findAllPossibleWordsForBoard:(NSArray*)board clickedAtRow:(int)row col:(int)col{
    //NSLog(@"board = %@",board);
    //NSLog(@"%d %d",row,col);
    //NSLog(@"letter clicked = %@",board[row][col]);
    
    /*
     
     Solve it here!
     
     Feel free to add any classes, etc.
     
    */
    
    
    return @[];
}




-(NSArray*)allTheWordsInTheiOSDictionary{
    NSMutableArray *allWords = [NSMutableArray array];
    NSString *allTheWords = [NSString stringWithContentsOfFile: @"/usr/share/dict/words"
                                                      encoding: NSUTF8StringEncoding
                                                         error: nil];
    for (NSString *line in [allTheWords componentsSeparatedByString:@"\n"]) {
        [allWords addObject:line];
    }
    return [allWords copy];
}



@end
