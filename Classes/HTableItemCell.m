//
//  HTableItemCell.m
//  HTable
//
//  Created by Alex Yao Cheng on 6/28/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "HTableItemCell.h"


@implementation HTableItemCell

- (void)layoutSubviews {
  [super layoutSubviews];
  self.textLabel.textAlignment = UITextAlignmentCenter;
  self.contentView.transform = CGAffineTransformMakeRotation(M_PI/2);
  self.accessoryType = UITableViewCellAccessoryNone;
}

+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object {
  return 150;
}
@end
