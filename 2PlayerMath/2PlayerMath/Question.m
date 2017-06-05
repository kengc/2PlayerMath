//
//  Question.m
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
    }
    return self;
}

-(void)generateNumbers{
    self.leftValue = arc4random_uniform(90) + 10;
    self.rightValue = arc4random_uniform(90) + 10;
}
@end
