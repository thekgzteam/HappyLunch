//
//  DrinkTableViewCell.h
//  HappyLunch
//
//  Created by Edil Ashimov on 7/22/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DrinkTableViewCell;
@protocol  DrinkTableViewCellDelegate <NSObject>

 -(void)drinkTableViewCell:(DrinkTableViewCell *)cell didTapButton:(UIButton *)button;

@end
@interface DrinkTableViewCell : UITableViewCell
@property (nonatomic, assign) id <DrinkTableViewCellDelegate> delegate;
@end
