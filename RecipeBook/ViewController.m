//
//  ViewController.m
//  RecipeBook
//
//  Created by Kadirt on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "RecipeDetailViewControllerViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray * recipes;
}
@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    recipes=[NSArray arrayWithObjects:@"Egg Benedict",@"Mushroom Risotto",@"Full Breakfast",@"Ham and Cheese Panini",nil];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleIdendifier=@"RecipeCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleIdendifier ];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleIdendifier ];
    }
    cell.textLabel.text=[recipes objectAtIndex:indexPath.row  ];
    return cell;
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier  isEqualToString:@"showRecipeDetail"])
    {
        NSIndexPath * indexPath1=[self.tableView indexPathForSelectedRow];
        RecipeDetailViewControllerViewController * destViewController= segue.destinationViewController;
        destViewController.recipeName=[recipes objectAtIndex:indexPath1.row];
        NSLog(@"indexPathrow:%d",indexPath1.row);
        
    }
    
}

@end
