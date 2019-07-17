//
//  ContactsVC.m
//  DocumentPlayer
//
//  Created by 黄瑞 on 2019/7/17.
//  Copyright © 2019 黄瑞. All rights reserved.
//

#import "ContactsVC.h"
#import <Contacts/Contacts.h>

@interface ContactsVC ()

@end

@implementation ContactsVC

#pragma mark - View did load
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Contacts";
    self.view.backgroundColor = [UIColor whiteColor];
    
    CNMutableContact *contact = [[CNMutableContact alloc] init];
    
    contact.givenName = @"RUI";
    contact.familyName = @"HUANG";
    contact.imageData = [NSData new];
    
    CNLabeledValue *homeEmail = [[CNLabeledValue alloc] initWithLabel:CNLabelHome value:@"345381783@qq.com"];
    CNLabeledValue *workEmail = [[CNLabeledValue alloc] initWithLabel:CNLabelWork value:@"13618641207@163.com"];
    contact.emailAddresses = @[homeEmail, workEmail];
    
    CNLabeledValue *homePhone = [[CNLabeledValue alloc] initWithLabel:CNLabelHome value:[CNPhoneNumber phoneNumberWithStringValue:@"13618641207"]];
    CNLabeledValue *workPhone = [[CNLabeledValue alloc] initWithLabel:CNLabelWork value:[CNPhoneNumber phoneNumberWithStringValue:@"17157864462"]];
    contact.phoneNumbers = @[homePhone, workPhone];
    
    CNMutablePostalAddress *address = [[CNMutablePostalAddress alloc] init];
    address.street = @"友谊大道";
    address.city = @"武汉";
    address.state = @"湖北";
    address.postalCode = @"430070";
    address.country = @"中国";
    address.ISOCountryCode = @"+86";
    CNLabeledValue *homeAddress = [[CNLabeledValue alloc] initWithLabel:CNLabelHome value:address];
    contact.postalAddresses = @[homeAddress];
    
    NSDateComponents *birthday = [[NSDateComponents alloc] init];
    birthday.year = 1991;
    birthday.month = 12;
    birthday.day = 26;
    contact.birthday = birthday;
    
    CNContactStore *store = [[CNContactStore alloc] init];
    CNSaveRequest *request = [[CNSaveRequest alloc] init];
    [request addContact:contact toContainerWithIdentifier:nil];
    
    NSError *error = nil;
    [store executeSaveRequest:request error:&error];
    if (error)
    {
        NSLog(@"error = %@", error);
    }
    
    NSString *fullName = [CNContactFormatter stringFromContact:contact style:CNContactFormatterStyleFullName];
    NSLog(@"fullName = %@", fullName);
    
    NSString *postalString = [CNPostalAddressFormatter stringFromPostalAddress:address style:CNPostalAddressFormatterStyleMailingAddress];
    NSLog(@"postalString = %@", postalString);
    
    NSString *displayName = [CNContact localizedStringForKey:CNContactNicknameKey];
    NSLog(@"displayName = %@", displayName);
    
    NSString *displayLabel = [CNLabeledValue localizedStringForLabel:CNLabelHome];
    NSLog(@"displayLabel = %@", displayLabel);
    
}

#pragma mark - NSNotification method
#pragma mark - Gesture method
#pragma mark - IB action
#pragma mark - Delegate
#pragma mark - Data source
#pragma mark - Other
#pragma mark - UI config
#pragma mark - UI update
#pragma mark - Network
#pragma mark - Get
#pragma mark - Set

@end
