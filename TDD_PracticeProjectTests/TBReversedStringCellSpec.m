//
//  TBReversedStringCellSpec.m
//  TDD_PracticeProject
//
//  Created by Amitai Blickstein on 12/24/15.
//  Copyright © 2015 Amitai Blickstein, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <OCMock.h>
#import <Specta.h>
#import <Expecta.h>
#import "NSString+Reversed.h"
#import "TBReversedStringCell.h"

//@class TBReversedStringCell;
SpecBegin(TBReversedStringCell)

describe(@"TBReversedStringCell", ^{
    it(@"reverses the string provided to it", ^{
        TBReversedStringCell *cell = [TBReversedStringCell new];
        id stringMock = [OCMockObject mockForClass:[NSString class]];
        [[stringMock expect] reversedString];
        
        [cell setReversedText:stringMock];
        
        [stringMock verify];
    });
    
    
    it(@"sets a string value on the internal label", ^{
        TBReversedStringCell *cell = [TBReversedStringCell new];
        id labelMock = [OCMockObject mockForClass:[UILabel class]];
        cell.reverseLabel = labelMock;
        [[labelMock expect] setText:@"gnirts elpmaxe"];
        
        [cell setReversedText:@"example string"];
        
        [labelMock verify];
    });
});

SpecEnd
