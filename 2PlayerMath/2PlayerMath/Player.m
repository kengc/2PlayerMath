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
        _score = 0;
        
        NSString *pl = [NSString stringWithFormat:@": %ld", (long)_lives];
        _playerLives = [_playerName stringByAppendingString:pl];
    }
    return self;
}

-(void)decrementLife{
    self.lives -= 1;
    NSString *pl = [NSString stringWithFormat:@": %ld", (long)_lives];
    self.playerLives = [self.playerName stringByAppendingString:pl];
}
-(void)incrementScore{
    self.score += 1;
    self.playerScore = [NSString stringWithFormat:@"%ld", (long)self.score];
}

-(void)resetPlayerLives{
    self.lives = 3;
    NSString *pl = [NSString stringWithFormat:@": %ld", (long)_lives];
    self.playerLives = [self.playerName stringByAppendingString:pl];
}

@end
