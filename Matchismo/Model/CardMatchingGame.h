//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 13/03/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (instancetype) initWithCardCount: (NSUInteger) count usingDeck: (Deck *) deck;
- (void) chooseCardAtIndex: (NSUInteger) index;
- (Card *) cardAtIndex: (NSUInteger) index;

@property (nonatomic, readonly) NSInteger score;

@end
