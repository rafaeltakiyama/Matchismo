//
//  PlayingCard.m
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 24/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

//tem que ser declarada, pois sobrescrevemos o getter e o setter
@synthesize suit = _suit;

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits
{
    return @[@"♥︎", @"♦︎", @"♠︎", @"♣︎"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] -1;
}

+ (NSArray *) rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J",@"Q",@"K"];
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

@end