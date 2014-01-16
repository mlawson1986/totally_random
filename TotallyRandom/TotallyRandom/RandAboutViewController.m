//
//  RandAboutViewController.m
//  TotallyRandom
//
//  Created by Development on 12/4/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import "RandAboutViewController.h"

@interface RandAboutViewController ()

@end

@implementation RandAboutViewController

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
- (IBAction)didPressBack:(id)sender {
    if([self.homeDelegate respondsToSelector:@selector(returnHome)]){
        [self.homeDelegate returnHome];
    }
}

@end
