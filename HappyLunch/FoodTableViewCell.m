//
//  FoodTableViewCell.m
//  HappyLunch
//
//  Created by Edil Ashimov on 7/22/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "FoodTableViewCell.h"

@implementation FoodTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(IBAction)onFoodItemTapped:(id)sender{
    NSLog(@"FOOD ITEM TAPPED");
    [self.delegate foodTableViewCell:self didTapButton:sender];
}
@end
