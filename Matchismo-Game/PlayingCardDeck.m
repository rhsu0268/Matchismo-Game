//
//  PlayingCardDeck.m
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/16/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    
    if (self)
    {
        for (NSString *suit in [PlayingCard validSuits])
        {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = (int) rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
