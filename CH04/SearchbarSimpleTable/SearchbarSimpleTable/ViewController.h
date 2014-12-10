//
//  ViewController.h
//  SearchbarSimpleTable
//
//  Created by 田野 on 14/12/10.
//  Copyright (c) 2014年 Fire2Sky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UISearchBarDelegate,UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@property (strong, nonatomic) NSArray *lsitTeams;
@property (strong, nonatomic) NSMutableArray * listFilterTeams;

- (void) filterContentForSearchText:(NSString *)searchText scope:(NSUInteger) scope;



@end

