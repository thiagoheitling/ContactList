//
//  InputCollector.m
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char userIpnutChar[255];
    fgets(userIpnutChar, 255, stdin);
    
    NSString *userInput = [NSString stringWithUTF8String:userIpnutChar];
    userInput = [userInput stringByReplacingOccurrencesOfString:@"/n" withString:@""];
    
    return userInput;
}

@end
