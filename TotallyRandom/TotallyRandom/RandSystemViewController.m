//
//  RandSystemViewController.m
//  TotallyRandom
//
//  Created by Michael Lawson on 4/25/14.
//  Copyright (c) 2014 com.funnel. All rights reserved.
//

#import "RandSystemViewController.h"
#import "RandViewController.h"

@interface RandSystemViewController () <RandViewController>

@end

@implementation RandSystemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) generateRandomNumber{
    return rand();
}
- (IBAction)displayNumber:(UIButton *)sender {
    
}
- (IBAction)returnToHome:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(NSString *) getTitle{
    return self.title;
}
@end
