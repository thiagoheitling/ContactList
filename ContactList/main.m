//
//  main.m
//  ContactList
//
//  Created by Thiago Heitling on 2016-01-12.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        
        Contact *contact1 = [[Contact alloc] initWithName:@"Steve Jobs" andEmail:@"sjobs@apple.com"];
        [contactList addContact:contact1];

        Contact *contact2 = [[Contact alloc] initWithName:@"Marc Evens" andEmail:@"mevens@apple.com"];
        [contactList addContact:contact2];
        
        Contact *contact3 = [[Contact alloc] initWithName:@"Brian Show" andEmail:@"bshow@yahoo.com"];
        [contactList addContact:contact3];
        
        
        BOOL continues = YES;
        
        while (continues) {
        
            NSString *userInputMenuOption =[inputCollector inputForPrompt:@"What would you like to do next?\n new - Create a new contact list\n list - List all contacts\n show - show details of a contact\n quit - Exit Application \n > enter your option: "];
            
            //NSLog(@"User chosen option: %@", userInputMenuOption);
            
            if([userInputMenuOption isEqualToString:@"quit\n"]) {
                NSLog(@"Good bye!");
                continues = NO;
            }
            
            else if ([userInputMenuOption isEqualToString:@"new\n"]) {
                
                NSString *newContactFullName =[inputCollector inputForPrompt:@"Enter new contact full name: "];
                NSString *newContactEmail =[inputCollector inputForPrompt:@"Enter new contact email: "];
                
                Contact *newContact = [[Contact alloc] initWithName:newContactFullName andEmail:newContactEmail];
                
                [contactList addContact:newContact];
            }
            
            else if ([userInputMenuOption isEqualToString:@"list\n"]) {
                [contactList listContacts];
            }
            
            else if ([userInputMenuOption isEqualToString:@"show\n"]) {
                
                if ([contactList.contacts count] > 0) {
                    NSString *index = [inputCollector inputForPrompt:@"enter contact index (ex: type 0 for first contact): "];
                    
                    NSNumberFormatter *input = [[NSNumberFormatter alloc] init];
                    input.numberStyle = NSNumberFormatterDecimalStyle;
                    NSString *removeNewLine = [index stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                    NSNumber *indexAsNSNumber = [input numberFromString:removeNewLine];
                    
                    [contactList showContactDetails:indexAsNSNumber];
                }
                else {
                    NSLog(@"The contact list is empty. No details to show.");
                }
            }
        }
        
    }
    return 0;
}
