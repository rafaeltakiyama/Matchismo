//
//  Card.h
//  Matchismo
//
//  Created by Rafael Teixeira Akiyama on 23/02/16.
//  Copyright © 2016 rafaeltakiyama. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic, getter=isChosen) BOOL chosen;
@property(nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;

@end
