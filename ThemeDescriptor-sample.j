/*
 * ThemeDescriptor-sample.j
 * cappuccino-datepicker
 *
 * Created by Alexander Ljungberg.
 * Copyright 2010, WireLoad, LLC. All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <AppKit/AppKit.j>

@implementation AristoThemeDescriptor : BKThemeDescriptor
{
}

+ (DatePicker)themedDatePicker
{
    var datepicker =  [[DatePicker alloc] initWithFrame:CGRectMake(0.0, 0.0, 60.0, 29.0)],
        bezelColor = [CPColor colorWithPatternImage:[[CPNinePartImage alloc] initWithImageSlices:
            [
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-0.png" size:CGSizeMake(2.0, 3.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-1.png" size:CGSizeMake(1.0, 3.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-2.png" size:CGSizeMake(2.0, 3.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-3.png" size:CGSizeMake(2.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-4.png" size:CGSizeMake(1.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-5.png" size:CGSizeMake(2.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-6.png" size:CGSizeMake(2.0, 2.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-7.png" size:CGSizeMake(1.0, 2.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-8.png" size:CGSizeMake(2.0, 2.0)]
            ]]],
        bezelFocusedColor = [CPColor colorWithPatternImage:[[CPNinePartImage alloc] initWithImageSlices:
            [
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-0.png" size:CGSizeMake(6.0, 7.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-1.png" size:CGSizeMake(1.0, 7.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-2.png" size:CGSizeMake(6.0, 7.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-3.png" size:CGSizeMake(6.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-4.png" size:CGSizeMake(1.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-5.png" size:CGSizeMake(6.0, 1.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-6.png" size:CGSizeMake(6.0, 5.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-7.png" size:CGSizeMake(1.0, 5.0)],
                [_CPCibCustomResource imageResourceWithName:"textfield-bezel-square-focused-8.png" size:CGSizeMake(6.0, 5.0)]
            ]]];

    [datepicker setBezeled:YES];

    [datepicker setValue:bezelColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBezeled];
    [datepicker setValue:bezelFocusedColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBezeled|CPThemeStateEditing];

    // TODO: Add support for these.

    [datepicker setValue:[CPFont systemFontOfSize:12.0] forThemeAttribute:@"font" inState:CPThemeStateBezeled];
    [datepicker setValue:CGInsetMake(9.0, 7.0, 5.0, 8.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBezeled];

    [datepicker setValue:CGInsetMake(4.0, 4.0, 3.0, 4.0) forThemeAttribute:@"bezel-inset" inState:CPThemeStateBezeled];
    [datepicker setValue:CGInsetMake(0.0, 0.0, 0.0, 0.0) forThemeAttribute:@"bezel-inset" inState:CPThemeStateBezeled|CPThemeStateEditing];

    return datepicker;
}

@end

function PatternColor(anImage)
{
    return [CPColor colorWithPatternImage:anImage];
}
