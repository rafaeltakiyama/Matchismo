//
//  PlayingCard.h
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 24/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

@end
