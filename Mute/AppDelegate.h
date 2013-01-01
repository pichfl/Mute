//
//  AppDelegate.h
//  Mute
//
//  Created by Florian Pichler on 01.01.13.
//  Copyright (c) 2013 TILOA. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Mixer.h"

@class MASShortcutView;

@interface AppDelegate : NSObject <NSApplicationDelegate> {
	Mixer *mixer;
}

@property IBOutlet NSMenu *statusMenu;
@property NSStatusItem *statusItem;

- (IBAction)toggleMute:(id)sender;

@end
