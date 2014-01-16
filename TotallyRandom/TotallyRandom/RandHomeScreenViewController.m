//
//  RandHomeScreenViewController.m
//  TotallyRandom
//
//  Created by Development on 12/23/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import "RandHomeScreenViewController.h"
#import "RandAboutViewController.h"
#import "RandWeatherViewController.h"
#import "RandViewController.h"
@interface RandHomeScreenViewController () <RandAboutViewControllerDelegate>
@property (nonatomic) NSString *randomGeneratorName;
@property (nonatomic) int numGenerators;
@property (nonatomic) NSArray *generatorList;//array of NSDictionary objects that define our generator listing
@end

@implementation RandHomeScreenViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        //first, gotta load up that plist
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAboutView:(id)sender {
    NSLog(@"Showing about");
    RandAboutViewController *about = [[RandAboutViewController alloc] init];
    about.homeDelegate = self;
    [self presentViewController:about animated:YES completion:NULL];
}

- (void)returnHome{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    self.numGenerators = 1;
    return self.numGenerators;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
   
    return cell;
}





#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
//View loaded based on index of what was tapped
    id<RandViewController> generator = [[RandWeatherViewController alloc] init];
    // Pass the selected object to the new view controller.
   
    // Push the view controller.
  //  [self.navigationController pushViewController:detailViewController animated:YES];
}


@end
