//
//  QuestionManager.h
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Player.h"

@interface QuestionManager : NSObject

@property (nonatomic) Question *question;
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;
@property (nonatomic) Player *currentPlayer;

//break out player into its own manager
//questions only here. communicate via delegates

@property (nonatomic) NSString *playerAndQuestion;
@property (nonatomic) NSString *winMessage;

@property (nonatomic) NSInteger leftQ;
@property (nonatomic) NSInteger rightQ;

//@property (nonatomic) NSString *currentPlayer;

-(BOOL)hasPlayerLost;
-(NSString *)generateNameAndQuestion;
-(NSString *)checkAnswer:(NSInteger)answer;
@end
