//
//  NSString+Reversed.m
//  TDD_PracticeProject
//
//  Created by Amitai Blickstein on 12/24/15.
//  Copyright © 2015 Amitai Blickstein, LLC. All rights reserved.
//

#import "NSString+Reversed.h"

@implementation NSString (Reversed)

-(NSString *)reversedString {
    NSMutableString *reversedString = [NSMutableString new];
    
    NSRange range = NSMakeRange(0, [self length]);
    NSStringEnumerationOptions options = (NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences);
    
    [self enumerateSubstringsInRange:range options:options usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        [reversedString appendString:substring];
    }];
    
    return [reversedString copy];
}

@end
