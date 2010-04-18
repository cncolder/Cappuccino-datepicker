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
            ]]],
        datePickerSegmentFocusedColor = PatternColor([[CPThreePartImage alloc] initWithImageSlices:
            [
                [_CPCibCustomResource imageResourceWithName:"datepicker-segment-left.png" size:CGSizeMake(4.0, 18.0)],
                [_CPCibCustomResource imageResourceWithName:"datepicker-segment-center.png" size:CGSizeMake(1.0, 18.0)],
                [_CPCibCustomResource imageResourceWithName:"datepicker-segment-right.png" size:CGSizeMake(4.0, 18.0)]
            ] isVertical:NO]);

    [datepicker setBezeled:YES];

    [datepicker setValue:bezelColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBezeled];
    [datepicker setValue:bezelFocusedColor forThemeAttribute:@"bezel-color" inState:CPThemeStateBezeled|CPThemeStateEditing];

    [datepicker setValue:[CPFont systemFontOfSize:12.0] forThemeAttribute:@"font" inState:CPThemeStateBezeled];
    [datepicker setValue:[CPColor blackColor] forThemeAttribute:@"text-color"];

    [datepicker setValue:CGInsetMake(7.0, 6.0, 5.0, 6.0) forThemeAttribute:@"content-inset" inState:CPThemeStateBezeled];

    [datepicker setValue:CGInsetMake(4.0, 16.0, 3.0, 4.0) forThemeAttribute:@"bezel-inset" inState:CPThemeStateBezeled];
    [datepicker setValue:CGInsetMake(0.0, 13.0, 0.0, 0.0) forThemeAttribute:@"bezel-inset" inState:CPThemeStateBezeled|CPThemeStateEditing];

    [datepicker setValue:CGSizeMake(16.0, 29.0) forThemeAttribute:@"stepper-size"];
    [datepicker setValue:CGInsetMake(3.0, 0.0, 2.0, 4.0) forThemeAttribute:@"stepper-inset" inState:CPThemeStateBezeled];

    [datepicker setValue:datePickerSegmentFocusedColor forThemeAttribute:@"segment-focused-color"];

    var upBezel = [CPColor colorWithPatternImage:[_CPCibCustomResource imageResourceWithName:"datepicker-stepper-up.png" size:CGSizeMake(12.0, 10.0)]],
        pushedUpBezel = [CPColor colorWithPatternImage:[_CPCibCustomResource imageResourceWithName:"datepicker-stepper-up-highlighted.png" size:CGSizeMake(12.0, 10.0)]],
        downBezel = [CPColor colorWithPatternImage:[_CPCibCustomResource imageResourceWithName:"datepicker-stepper-down.png" size:CGSizeMake(12.0, 12.0)]],
        pushedDownBezel = [CPColor colorWithPatternImage:[_CPCibCustomResource imageResourceWithName:"datepicker-stepper-down-highlighted.png" size:CGSizeMake(12.0, 12.0)]],
        dividerBezel = [CPColor colorWithPatternImage:[_CPCibCustomResource imageResourceWithName:"datepicker-divider-bezel-color.png" size:CGSizeMake(12.0, 1.0)]];

    [datepicker setValue:CGPointMake(0, 0) forThemeAttribute:@"stepper-up-offset" inState:CPThemeStateBezeled];
    [datepicker setValue:upBezel forThemeAttribute:@"stepper-up-bezel-color" inState:CPThemeStateBezeled];
    [datepicker setValue:pushedUpBezel forThemeAttribute:@"stepper-up-bezel-color" inState:CPThemeStateBezeled|CPThemeStateHighlighted];

    [datepicker setValue:CGPointMake(0, 11) forThemeAttribute:@"stepper-down-offset" inState:CPThemeStateBezeled];
    [datepicker setValue:downBezel forThemeAttribute:@"stepper-down-bezel-color" inState:CPThemeStateBezeled];
    [datepicker setValue:pushedDownBezel forThemeAttribute:@"stepper-down-bezel-color" inState:CPThemeStateBezeled|CPThemeStateHighlighted];

    [datepicker setValue:CGPointMake(0, 10) forThemeAttribute:@"stepper-divider-offset" inState:CPThemeStateBezeled];
    [datepicker setValue:dividerBezel forThemeAttribute:@"stepper-divider-bezel-color" inState:CPThemeStateNormal];

    return datepicker;
}

@end

function PatternColor(anImage)
{
    return [CPColor colorWithPatternImage:anImage];
}
