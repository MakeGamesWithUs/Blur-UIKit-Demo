//
//  ViewController.m
//  Blur
//
//  Created by Daniel Haaser on 11/12/14.
//  Copyright (c) 2014 MakeSchool. All rights reserved.
//

#import "ViewController.h"
#import "BlurTableViewCell.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.backgroundColor = [UIColor clearColor];
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - TableView Delegates

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BlurTableViewCell *cell = (BlurTableViewCell*) [tableView dequeueReusableCellWithIdentifier:@"BlurCell" forIndexPath:indexPath];

    switch (indexPath.row % 2)
    {
        case 0:
            cell.backgroundColor = [UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.05f];
            break;
            
        case 1:
            cell.backgroundColor = [UIColor clearColor];
//            cell.backgroundColor = [UIColor colorWithRed:1.0f green:1.0f blue:1.0f alpha:0.05f];
            break;
    }
    
    
    cell.lblContent.text = [NSString stringWithFormat:@"%d", indexPath.row];
    
    return cell;
}

@end
