//
//  Player.h
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *playerName;
@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

- (instancetype)initWithPlayerName:(NSString *)name;
-(void)decrementLife;

@end
