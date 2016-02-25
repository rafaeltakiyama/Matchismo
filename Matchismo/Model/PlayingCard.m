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
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J",@"Q",@"K"];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

-(void)setSuit:(NSString *)suit
{
    if ([@[@"", @"", @"", @""] containsObject:suit]) {
        _suit = suit;
    }
}

@end
