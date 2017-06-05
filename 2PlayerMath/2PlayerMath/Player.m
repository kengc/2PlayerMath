//
//  Player.m
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithPlayerName:(NSString *)name
{
    self = [super init];
    if (self) {
        _playerName = name;
        _lives = 3;
    }
    return self;
}
            
    

@end
