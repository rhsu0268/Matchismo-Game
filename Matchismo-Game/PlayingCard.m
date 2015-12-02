//
//  PlayingCard.m
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/16/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if ([otherCards count] == 1)
    {
        PlayingCard *otherCard = [otherCards firstObject];
        
        if ([self.suit isEqualToString:otherCard.suit])
        {
            score = 1;
            
        }
        else if (self.rank == otherCard.rank)
        {
            score = 4;
        }
    }
    
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits
{
    return @[@"♥︎", @"♦︎", @"♠︎", @"♣︎"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}



- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5",
              @"6", @"7", @"8", @"9", @"10", @"J",
             @"Q", @"K"];
}

+ (int)maxRank
{
    return (int) [[self rankStrings] count] - 1;
}

- (void)setRank:(int)rank
{
    if (rank <= [PlayingCard maxRank])
    {
        _rank = rank;
    }
}
@end
