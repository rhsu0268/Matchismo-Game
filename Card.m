//
//  Card.m
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/15/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
        
    }
    
    return score;
}

@end
