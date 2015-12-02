//
//  ViewController.m
//  Matchismo-Game
//
//  Created by Richard Hsu on 11/15/15.
//  Copyright © 2015 Richard Hsu. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (strong, nonatomic) CardMatchingGame *game;


@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;



@end

@implementation ViewController

- (CardMatchingGame *)game
{
    if (!_game)
    {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    }
    return _game;
}



- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    // get the card associated with the button
    int cardIndex = (int) [self.cardButtons indexOfObject:sender];
    
    [self.game chooseCardAtIndex:cardIndex];
    
    // keep UI in sync with model
    [self updateUI];
    
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons)
    {
        // figure out which card it is
        int cardButtonIndex = (int) [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setTitle:[self titleForCard:card] forState:(UIControlStateNormal)];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        
        // button will be enabled only if not matched
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", (int) self.game.score];
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (NSString *)titleForCard:(Card *)card
{
    return card.isChosen ? card.contents: @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}



@end
