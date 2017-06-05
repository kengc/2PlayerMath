//
//  QuestionManager.h
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject


@property (nonatomic) Question *question;
@property (nonatomic) NSInteger leftQ;
@property (nonatomic) NSInteger rightQ;

@property (nonatomic) NSString *player1;
@property (nonatomic) NSString *player2;

@property (nonatomic) NSString *currentPlayer;
@property (nonatomic) NSNumber *lives;

-(NSString *)generateNameAndQuestion;
@end
