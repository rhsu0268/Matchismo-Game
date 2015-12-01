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

// designated initializer - have to call it to initialize our class
- (instancetype)initWithCardCount:(NSUInteger)count usingDeck: (Deck *)deck;

// need to allow user to choose a card
- (void)chooseCardAtIndex:(NSUInteger)index;

// need to find out state of game
- (Card *)cardAtIndex:(NSUInteger)index;

// want readonly publicly: no setter for the property
@property (nonatomic, readonly) NSInteger score;

@end
