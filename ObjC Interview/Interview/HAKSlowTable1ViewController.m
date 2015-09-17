//
//  HAKSlowTable1ViewController.m
//  Interview
//
//  Copyright (c) 2014 Hackerati. All rights reserved.
//

#import "HAKSlowTable1ViewController.h"
#import "HAKDummyData.h"
#import "HAKSlowTable1TableViewCell.h"


@interface HAKSlowTable1ViewController ()
@property (strong,nonatomic) NSArray *tableData;
@end


@implementation HAKSlowTable1ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _tableData = [HAKDummyData dataForTables];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *data = self.tableData[indexPath.row];
    NSString *comment = data[@"comment"];
    
    NSString *urlString = data[@"url"];
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *imageData = [NSData dataWithContentsOfURL:url];
    UIImage *image = [[UIImage alloc] initWithData:imageData];
    
    HAKSlowTable1TableViewCell *cell = [[HAKSlowTable1TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];

    [cell setUpWithImage:image andComment:comment];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.tableData count];
}


@end
