//
//  Contact.m
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (id) initWithName:(NSString *)fullName andEmail:(NSString *)email {
    self = [super init];
    if (self) {
        _fullName = fullName;
        _email = email;
    }
    return self;
}


@end
