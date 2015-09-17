//
//  HAKSlowTable1TableViewCell.m
//  Interview
//
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "HAKSlowTable1TableViewCell.h"


@interface HAKSlowTable1TableViewCell ()
@property (strong,nonatomic) UIImageView *photo;
@property (strong,nonatomic) UILabel *commentLabel;
@end


@implementation HAKSlowTable1TableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _photo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 60)];
        _photo.contentMode = UIViewContentModeScaleAspectFill;
        _photo.clipsToBounds = YES;
        _commentLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 0, self.frame.size.width - 120, 60)];
        [self addSubview:_photo];
        [self addSubview:_commentLabel];
    }
    return self;
}

-(void)setUpWithImage:(UIImage*)image andComment:(NSString*)comment{
    self.photo.image = image;
    self.commentLabel.text = comment;
}


@end
