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
   
        _question = [[Question alloc] init];
        _player1 = [[Player alloc] initWithPlayerName:@"Player 1"];
        _player2 = [[Player alloc] initWithPlayerName:@"Player 2"];
        _currentPlayer = [[Player alloc] init];
        _currentPlayer = _player1;
        _leftQ = _question.leftValue;
        _rightQ = _question.rightValue;

    }
    return self;
}

-(NSString *)checkAnswer:(NSInteger)answer{
   
    NSLog(@"user answer: %ld", (long)answer);
    NSLog(@"question answer: %ld", (long)self.question.answer);
    
    if(answer == self.question.answer){
        if([_currentPlayer.playerName isEqualToString:self.player1.playerName]){
            [self.player1 score];
            self.currentPlayer = self.player2;
            return @"Correct!";
        } else {
            [self.player2 score];
            self.currentPlayer = self.player1;
            return @"Correct!";
        }
        
    } else {
        if([_currentPlayer.playerName isEqualToString:self.player1.playerName]){
            [self.player1 decrementLife];
            self.currentPlayer = self.player2;
            return @"Wrong";
        } else {
             [self.player2 decrementLife];
            self.currentPlayer = self.player1;
            return @"Wrong";
        }
       
    }
    
}

-(NSString *)generateNameAndQuestion{
    
    [self.question generateNumbers];
    
    _leftQ = self.question.leftValue;
    _rightQ = self.question.rightValue;
    
    
    
    NSString *leftValue = [NSString stringWithFormat:@"%li", (long)self.leftQ];
    NSString *rightValue = [NSString stringWithFormat:@"%li", (long)self.rightQ];
    
    NSString *lv = [leftValue stringByAppendingString:@" + "];
    NSString *question = [lv stringByAppendingString:rightValue];
    
    NSString *p1temp;
    //NSString *player1Question;

    NSString *p2temp;
    //NSString *player2Question;
    
    if([self.currentPlayer.playerName isEqualToString:self.player1.playerName]){
        p1temp = [self.player1.playerName stringByAppendingString:@": "];
        self.playerAndQuestion = [p1temp stringByAppendingString:question];
        return self.playerAndQuestion;
        
    } else if ([self.currentPlayer.playerName isEqualToString:self.player2.playerName]){
        
        p2temp = [self.player2.playerName stringByAppendingString:@": "];
        self.playerAndQuestion = [p2temp stringByAppendingString:question];
        return self.playerAndQuestion;
    }
    
    return nil;
}

@end
