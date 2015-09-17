//
//  GATile.h
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct {
    int row;
    int col;
} tileLocation;

@interface GATile : UIButton

@property (strong,nonatomic) NSString *letter;
@property (assign,nonatomic) tileLocation tileLocation;
-(id)initWithFrame:(CGRect)frame letter:(NSString*)letter tileLocation:(tileLocation)tileLocation boardSize:(int)boardSize;


@end
