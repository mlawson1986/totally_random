//
//  RandHomeScreenViewController.m
//  TotallyRandom
//
//  Created by Development on 12/23/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import "RandHomeScreenViewController.h"
#import "RandAboutViewController.h"
#import "RandViewController.h"
@interface RandHomeScreenViewController () <RandAboutViewControllerDelegate>
@property (nonatomic) int numGenerators;
@property (nonatomic) NSArray *generatorList;//array of NSDictionary objects that define our generator listing
@end

@implementation RandHomeScreenViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}
-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    self.numGenerators = [self.generatorList count];//dynamically determine this number based on number of generators registered
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

//create an array of RandViewController objects based on the passed in array of dictionaries.
- (BOOL) loadGeneratorsFromPlist:(NSArray *)genList{
    
    
    //loop through the array
    self.numGenerators = [genList count];
    if(self.numGenerators == 0){
        NSLog(@"No generators found");
        return NO;
    }
    self.generatorList = genList;
    return YES;
}
- (void)returnHome{
    [self dismissViewControllerAnimated:YES completion:NULL];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;//it's all one section for the time being.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.numGenerators;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"RNGenerator";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    NSDictionary *genEntry = (NSDictionary *) [self.generatorList objectAtIndex:indexPath.row];
    //for each cell, use the label as the label, and the class name as the value represented by the cell when tapped
    //if possible, try to go ahead and create the controller object, if not just use a string to load the controller from nib file.
    
    //check to ensure the referenced generator conforms to the RandViewController protocol before loading it
    if([self doesControllerConformToGeneratorProtocol:genEntry[@"controller"]]){
        cell.textLabel.text = genEntry[@"label"];
    }
    else{
        self.numGenerators--;
    }
    return cell;
}


-(BOOL) doesControllerConformToGeneratorProtocol: (NSString *)controllerName{
    
    return NO;
}


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here, for example:
    // Create the next view controller.
    //View loaded based on index of what was tapped
    //------------
    
    //-------------
    // Pass the selected object to the new view controller.
    
    // Push the view controller.
    //  [self.navigationController pushViewController:detailViewController animated:YES];
}


@end
