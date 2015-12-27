//
//  FibonacciSpec.m
//  TDD_PracticeProject
//
//  Created by Amitai Blickstein on 12/26/15.
//  Copyright © 2015 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta.h>
#import <Expecta.h>

#import "Fibonacci.h"

SpecBegin(Fibonacci)

describe(@"Fibonacci", ^{
    
    it(@"returns 1 for n = 1", ^{
        expect([Fibonacci 1]).to.equal(1);
    });
    
    it(@"returns 1 for n = 2", ^{
        expect([Fibonacci 2]).to.equal(2);
    });
    
    it(@"returns 2 for n = 3", ^{
        expect([Fibonacci 3]).to.equal(3);
    });
    
    it(@"returns the nth number in the Fibonacci Series", ^{
        
    });
});

SpecEnd
