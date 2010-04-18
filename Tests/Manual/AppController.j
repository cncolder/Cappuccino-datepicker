/*
 * AppController.j
 * Manual
 *
 * Created by Alexander Ljungberg on April 16, 2010.
 * Copyright 2010, WireLoad, LLC All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <cappuccino-datepicker/DatePicker.j>

@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        view = [theWindow contentView];

    var datePicker = [[DatePicker alloc] initWithFrame:CGRectMake(10.0, 10.0, 105, 28)];
	[datePicker setDisplayPreset:DatePickerDisplayPresetDate];
	[datePicker setDelegate:self];
	[view addSubview:datePicker];

    var timePicker = [[DatePicker alloc] initWithFrame:CGRectMake(115.0, 10.0, 90, 28)];
	[timePicker setDisplayPreset:DatePickerDisplayPresetTime];
	[timePicker setDelegate:self];
	[view addSubview:timePicker];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
}

@end
