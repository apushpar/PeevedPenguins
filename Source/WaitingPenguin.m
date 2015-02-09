//
//  WaitingPenguin.m
//  PeevedPenguins
//
//  Created by Akshay Pushparaja on 2/5/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "WaitingPenguin.h"

@implementation WaitingPenguin

-(void) didLoadFromCCB
{
    
    float delay = (arc4random() % 2000) / 1000.f;
    
    [self performSelector:@selector(startBlinkAndJump) withObject:nil afterDelay:delay];
}

-(void) startBlinkAndJump
{
    CCAnimationManager* animationManager = self.animationManager;
    [animationManager runAnimationsForSequenceNamed:@"BlinkAndJump"];
}

@end
