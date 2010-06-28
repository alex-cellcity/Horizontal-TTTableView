//
//  HTableViewController.m
//  HTable
//
//  Created by Alex Yao Cheng on 6/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "HTableViewController.h"
#import "HTableDataSource.h"


@implementation HTableViewController

- (void)loadView {
  [super loadView];
  
  self.view.backgroundColor = [UIColor grayColor];
  
  self.tableView.transform = CGAffineTransformMakeRotation(-M_PI/2);
  CGRect frame = [self.tableView frame];
  frame.size.height = 44;
  frame.size.width = 310;
  frame.origin.y = 5;
  frame.origin.x = 5;
  [self.tableView setFrame:frame];
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)createModel {
  self.dataSource = [[[HTableDataSource alloc] init] autorelease];
}
///////////////////////////////////////////////////////////////////////////////////////////////////
- (id<UITableViewDelegate>)createDelegate {
  return [[[TTTableViewPlainVarHeightDelegate alloc] initWithController:self] autorelease];
}

- (void)hello {
  NSLog(@"hello");
}
@end
