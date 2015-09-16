//
//  FoodTableViewCell.h
//  HappyLunch
//
//  Created by Edil Ashimov on 7/22/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import <UIKit/UIKit.h>
//Step 1.1
@class FoodTableViewCell;
//step 2.1
@protocol FoodTableViewCellDelegate <NSObject>
//step 2.1
- (void)foodTableViewCell:(FoodTableViewCell *)cell didTapButton:(UIButton *)button;

@end

@interface FoodTableViewCell : UITableViewCell
//step 2.2 declare a delegate property
@property (nonatomic, assign) id<FoodTableViewCellDelegate> delegate;

@end
