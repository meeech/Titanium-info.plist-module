/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComMeeechPlistModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComMeeechPlistModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"9f589e5f-9866-4242-a057-d610f3bc8699";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.meeech.plist";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma Public APIs

-(id)getValue:(id)args
{
    NSString *key = [TiUtils stringValue:[args objectAtIndex:0]];

    // Create a new NSBundle pointer
    NSBundle* mainBundle;

    // The Info.plist is considered the mainBundle.
    mainBundle = [NSBundle mainBundle];

    // Another handy thing I had to search around for a little
    // Get the value for the "Bundle version" from the Info.plist
    return [mainBundle objectForInfoDictionaryKey:key];
}

@end
