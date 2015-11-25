//
//  CardMatchingGame.h
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/22/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck: (Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;


// no setter for the property
@property (nonatomic, readonly) NSInteger score;

@end
