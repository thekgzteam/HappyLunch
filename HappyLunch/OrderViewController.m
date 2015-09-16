//
//  ViewController.m
//  HappyLunch
//
//  Created by Edil Ashimov on 7/22/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "OrderViewController.h"
//step 3.1
#import "FoodTableViewCell.h"
#import "DrinkTableViewCell.h"
//step 3.1
@interface OrderViewController ()<UITableViewDataSource, UITableViewDelegate, FoodTableViewCellDelegate, DrinkTableViewCellDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImageView;

@end

@implementation OrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        //        step 3.2
        FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FoodCellId"];
        cell.delegate = self;
        return cell;
    }else {
        DrinkTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:@"DrinkCellId"];
        cell.delegate = self;
        return cell;
    }
}


//step 3.1
- (void)foodTableViewCell:(FoodTableViewCell *)cell didTapButton:(UIButton *)button {
    NSLog(@"ORDER VIEW CONTROLLER");
    self.foodImage.image = button.imageView.image;
}

-(void)drinkTableViewCell:(DrinkTableViewCell *)cell didTapButton:(UIButton *)button {
    NSLog(@"Setting the drinkImageView's image. Button: %@", button);
    self.drinkImageView.image = button.imageView.image;
}
@end
