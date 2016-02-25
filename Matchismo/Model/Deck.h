//
//  Deck.h
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 23/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void) addCard: (Card *) card atTop:(BOOL) atTop;
- (void) addCard: (Card *) card;
- (Card *) drawRandomCard;

@end
