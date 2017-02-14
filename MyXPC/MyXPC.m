//
//  MyXPC.m
//  MyXPC
//
//  Created by Eric Wang on 2/14/17.
//  Copyright © 2017 Eric Wang. All rights reserved.
//

#import "MyXPC.h"

@implementation MyXPC

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}

@end
