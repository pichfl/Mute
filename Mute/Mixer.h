//
//  Mixer.h
//  Mute
//
//  Created by Florian Pichler on 01.01.13.
//  Copyright (c) 2013 TILOA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mixer : NSObject

@property double inputVolume;
@property (readonly) BOOL muted;

- (void)mute;
- (void)unmute;

@end
