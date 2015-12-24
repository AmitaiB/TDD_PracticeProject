//
//  NSString+ReversedSpec.m
//  TDD_PracticeProject
//
//  Created by Amitai Blickstein on 12/24/15.
//  Copyright © 2015 Amitai Blickstein, LLC. All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "NSString+Reversed.h"

SpecBegin(NSString_Reversed)

describe(@"NSString+Reversed", ^{
    it(@"reverses strings", ^{
        NSString *originalString = @"example string";
        
        NSString *reversedString = [originalString reversedString];
        
        expect(reversedString).to.equal(@"gnirts elpmaxe");
    });
});

SpecEnd

