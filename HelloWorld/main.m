//
//  main.m
//  HelloWorld
//
//  Created by Eric Wang on 2/14/17.
//  Copyright © 2017 Eric Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyXPCProtocol.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // Create connection and call XPC.
        NSXPCConnection *_connectionToService = [[NSXPCConnection alloc] initWithServiceName:@"ewang.MyXPC"];
        _connectionToService.remoteObjectInterface = [NSXPCInterface interfaceWithProtocol:@protocol(MyXPCProtocol)];
        [_connectionToService resume];
        
        //Once you have a connection to the service, you can use it like this:
        
        NSLog(@"Start to call XPC...");
        [[_connectionToService remoteObjectProxy] upperCaseString:@"hello" withReply:^(NSString *aString) {
            // We have received a response. Update our text field, but do it on the main thread.
            NSLog(@"Result string was: %@", aString);
        }];
        
        //And, when you are finished with the service, clean up the connection like this:
        
        [_connectionToService invalidate];
    }
    return 0;
}
