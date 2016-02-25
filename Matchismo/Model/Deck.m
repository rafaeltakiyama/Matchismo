//
//  Deck.m
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 23/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

//getter de cards
- (NSMutableArray *) cards
{
    if (_cards == nil) {
        _cards = [[NSMutableArray alloc] init];
    }
    
    return _cards;
}

@end
