//
//  MyXPC.h
//  MyXPC
//
//  Created by Eric Wang on 2/14/17.
//  Copyright © 2017 Eric Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyXPCProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface MyXPC : NSObject <MyXPCProtocol>
@end
