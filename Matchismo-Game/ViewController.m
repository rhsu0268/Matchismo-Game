//
//  ViewController.m
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/15/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    
    //UIImage *cardImage = [UIImage imageNamed:@"cardback"];
    
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
    
    [sender setTitle:@"" forState:UIControlStateNormal];
}



@end
