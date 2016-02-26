//
//  ViewController.m
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 23/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import "CardGameViewController.h"
#import "Deck.h"
#import "PLayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (IBAction)touchCardGame:(UIButton *)sender
{
    NSString *imageName = @"";
    NSString *cardTitle = @"";
    
    if ([sender.currentTitle length]) {
        imageName = @"cardback";
        cardTitle = @"";
    } else {
        imageName = @"cardfront";
        cardTitle = [[self.deck drawRandomCard] contents];
    }

    [sender setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [sender setTitle:cardTitle forState:UIControlStateNormal];
    
    self.flipCount++;
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (Deck *)deck
{
    if (_deck == nil) {
        _deck = [[PlayingCardDeck alloc] init];
    }

    return _deck;
}


@end
