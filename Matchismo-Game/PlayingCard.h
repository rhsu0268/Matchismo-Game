//
//  PlayingCard.h
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/16/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) int rank;

+ (NSArray *)validSuits;
+ (int)maxRank;

@end
