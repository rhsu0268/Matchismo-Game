//
//  Deck.h
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/16/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;


@end
