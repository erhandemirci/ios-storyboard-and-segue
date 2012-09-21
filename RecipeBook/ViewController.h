//
//  ViewController.h
//  RecipeBook
//
//  Created by Kadirt on 9/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    
}
@property(nonatomic,strong) IBOutlet UITableView * tableView; 
@end
