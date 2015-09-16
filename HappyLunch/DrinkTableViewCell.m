//
//  DrinkTableViewCell.m
//  HappyLunch
//
//  Created by Edil Ashimov on 7/22/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "DrinkTableViewCell.h"

@implementation DrinkTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(IBAction)onDrinkItemTapped:(id)sender {
    [self.delegate drinkTableViewCell:self didTapButton:sender];
}
@end
