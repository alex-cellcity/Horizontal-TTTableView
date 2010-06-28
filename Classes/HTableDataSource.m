//
//  HTableDataSource.m
//  HTable
//
//  Created by Alex Yao Cheng on 6/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "HTableDataSource.h"
#import "HTableItem.h"
#import "HTableItemCell.h"


@implementation HTableDataSource

- (void)tableViewDidLoadModel:(UITableView*)tableView {
  [self.items addObjectsFromArray:[NSArray arrayWithObjects:
                                   [HTableItem itemWithText:@"hello 0" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 1" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 2" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 3" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 4" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 5" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 6" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 7" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 8" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 9" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 10" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 11" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 12" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 13" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 14" URL:@"#hello"], 
                                   [HTableItem itemWithText:@"hello 15" URL:@"#hello"], 
                                   nil]];
}

- (Class)tableView:(UITableView*)tableView cellClassForObject:(id) object { 
	
	if ([object isKindOfClass:[HTableItem class]]) { 
		return [HTableItemCell class]; 		
	} else { 
		return [super tableView:tableView cellClassForObject:object]; 
	}
}

@end