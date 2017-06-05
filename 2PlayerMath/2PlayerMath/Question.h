//
//  Question.h
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;

@property (nonatomic) long randomOne;
@property (nonatomic) long randomTwo;

-(void)generateNumbers;

@end
