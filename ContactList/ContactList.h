//
//  ContactList.h
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

-(id) init;

-(void) addContact:(Contact *) newContact;

-(void) listContacts;

-(void) showContactDetails:(NSNumber *)index;

@end
