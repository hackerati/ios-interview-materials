//
//  GATile.m
//  HackeratiInterviewWordSearch
//
//  Created by Grace on 7/22/14.
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "GATile.h"

@implementation GATile

-(id)initWithFrame:(CGRect)frame letter:(NSString *)letter tileLocation:(tileLocation)tileLocation boardSize:(int)boardSize{
    self = [super initWithFrame:frame];
    if (self) {
        self.letter = letter;
        self.tileLocation = tileLocation;
        
        if(boardSize > 8){
            self.titleLabel.font = [UIFont systemFontOfSize:20];
        }else{
            self.titleLabel.font = [UIFont systemFontOfSize:30];
        }
        
        [self setTitle:letter forState:UIControlStateNormal];
        self.backgroundColor = [UIColor lightGrayColor];
        self.layer.cornerRadius = frame.size.width/7;
        
        self.layer.borderColor = [[UIColor grayColor] CGColor];
        self.layer.borderWidth = 1;
        self.layer.shadowOpacity = 0.3;
        self.layer.shadowOffset = CGSizeMake(2,2);
    }
    return self;
}



@end
