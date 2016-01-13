//
//  Contact.h
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *email;

- (id) initWithName:(NSString *)fullName andEmail:(NSString *)email;

@end
