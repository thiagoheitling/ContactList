//
//  ContactList.m
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(id) init {
    
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addContact:(Contact *) newContact {
    
    [self.contacts addObject:newContact];
}

-(void) listContacts {
    
    for (Contact *aContact in self.contacts) {

        NSUInteger index = [self.contacts indexOfObject:aContact];
        NSLog(@"%li: %@", index, aContact.fullName);
    }
}

-(void) showContactDetails:(NSNumber *)index {
    
    
    if (index >= 0 && index.intValue < [self.contacts count]) {
        Contact *aContact = [self.contacts objectAtIndex:index.intValue];
        NSLog(@"Contact full name: %@", aContact.fullName);
        NSLog(@"Contact email: %@", aContact.email);
    }
    else {
        NSLog(@"There is no contact at that index position. The current last contact is at index %lu", [self.contacts count]-1);
    }
}

@end
