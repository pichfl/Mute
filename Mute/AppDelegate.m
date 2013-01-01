//
//  AppDelegate.m
//  Mute
//
//  Created by Florian Pichler on 01.01.13.
//  Copyright (c) 2013 TILOA. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate () {
	NSMenuItem *toggleMuteItem;

	NSImage *on;
	NSImage *onHighlighted;
	NSImage *off;
	NSImage *offHighlighted;
}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	mixer = [[Mixer alloc] init];
}

- (void)awakeFromNib {
	on = [NSImage imageNamed:@"on"];
	onHighlighted = [NSImage imageNamed:@"on-highlighted"];
	off = [NSImage imageNamed:@"off"];
	offHighlighted = [NSImage imageNamed:@"off-highlighted"];

	self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
	self.statusItem.image = on;
	self.statusItem.alternateImage = onHighlighted;
	self.statusItem.highlightMode = YES;
	self.statusItem.action = @selector(toggleMute:);
	//self.statusItem.menu = self.statusMenu;

	toggleMuteItem = [self.statusMenu itemWithTag:1];
	toggleMuteItem.state = NSOffState;
}

- (IBAction)toggleMute:(id)sender {
	if (toggleMuteItem.state == NSOffState) {
		[mixer mute];
		toggleMuteItem.state = NSOnState;
		self.statusItem.image = off;
		self.statusItem.alternateImage = offHighlighted;
		
	} else {
		[mixer unmute];
		toggleMuteItem.state = NSOffState;
		self.statusItem.image = on;
		self.statusItem.alternateImage = onHighlighted;
	}
}

-(BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app {
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)notification {
	[mixer unmute];
}

@end
