//
//  GASolver.h
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GASolver : NSObject

-(void)solveBoard:(NSArray*)board clickedAtRow:(int)row col:(int)col;
-(void)setUpWtihBoard:(NSArray*)board;

@property (strong,nonatomic) NSArray *allWordsArray;



@end
