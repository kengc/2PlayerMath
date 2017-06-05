//
//  QuestionManager.m
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _player1 = @"Player 1";
        _player2 = @"Player 2";
        _question = [[Question alloc] init];
        _leftQ = _question.leftValue;
        _rightQ = _question.rightValue;
        _currentPlayer = _player1;
    }
    return self;
}

-(NSString *)generateNameAndQuestion{
    
    [self.question generateNumbers];
    
    NSString *leftValue = [NSString stringWithFormat:@"%li", (long)self.leftQ];
    NSString *rightValue = [NSString stringWithFormat:@"%li", (long)self.rightQ];
    
    NSString *lv = [leftValue stringByAppendingString:@" + "];
    NSString *question = [lv stringByAppendingString:rightValue];
    
    NSString *p1temp;
    NSString *player1Question;

    NSString *p2temp;
    NSString *player2Question;
    
    if([self.currentPlayer isEqualToString:self.player1]){
        
        p1temp = [self.player1 stringByAppendingString:@": "];
        player1Question = [p1temp stringByAppendingString:question];
        return player1Question;
        
    } else if ([self.currentPlayer isEqualToString:self.player2]){
        
        p2temp = [self.player2 stringByAppendingString:@":"];
        player2Question = [p2temp stringByAppendingString:question];
        return player2Question;
    }
    
    return nil;
}

@end
