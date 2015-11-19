//
//  Card.h
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/15/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;


@end
