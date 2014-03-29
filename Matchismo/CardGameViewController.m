//
//  CardGameViewController.m
//  Matchismo
//
//  Created by gyuwon on 3/27/14.
//  Copyright (c) 2014 gyuwon. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController
- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length]   ){
        
        [sender setBackgroundImage:[UIImage imageNamed:@"stan-10-fav-icon-102x150"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        
    }else{
        
        [sender setBackgroundImage:[UIImage imageNamed:@"stanford_icon"] forState:UIControlStateNormal];
        [sender setTitle:@"A" forState:UIControlStateNormal];
    }
    self.flipCount++;
}


@end
