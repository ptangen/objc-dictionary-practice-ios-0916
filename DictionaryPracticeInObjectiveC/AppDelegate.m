//
//  AppDelegate.m
//  objc-dictionary-practice
//
//  Created by Flatiron School on 5/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSDictionary *thePhysicalWorld = @{    @1 : @"Cheap Talk",
                                           @2 : @"Right On, Frankenstein!",
                                           @3 : @"Virgins",
                                           @4 : @"Always On",
                                           @5 : @"Crystal Ball",
                                           @6 : @"White Is Red",
                                           @7 : @"Trainwreck 1979",
                                           @8 : @"Nothin' Left",
                                           @9 : @"Government Trash",
                                           @10 : @"Gemini",
                                           @11 : @"The Physical World"  };
    
    NSDictionary *SongsForTheDeaf = @{    @11 : @"aaa",
                                           @12 : @"bbb",
                                           @13 : @"ccc",
                                           @14 : @"ddd",
                                           @15 : @"eee",
                                           @16 : @"fff",
                                           @17 : @"ggg",
                                           @18 : @"hhh",
                                           @19 : @"iii",
                                           @20 : @"jjj",
                                           @21 : @"KKK"  };
    
    NSDictionary *TheyWantMySoul = @{    @31 : @"mmm",
                                          @32 : @"nnn",
                                          @33 : @"ooo",
                                          @34 : @"ppp",
                                          @35 : @"qqq",
                                          @36 : @"rrr",
                                          @37 : @"sss",
                                          @38 : @"ttt",
                                          @39 : @"uuu",
                                          @40 : @"vvv",
                                          @41 : @"www"  };

    NSMutableDictionary *mFavoriteBands = [NSMutableDictionary dictionary];
    mFavoriteBands[@"Queens of the Stone Age"] = SongsForTheDeaf;
    mFavoriteBands[@"Death from Above 1979"] = thePhysicalWorld;
    mFavoriteBands[@"Spoon"] = TheyWantMySoul;
    //[mFavoriteBands removeObjectForKey:@"Spoon"];
    NSArray *aFavoriteBands = [mFavoriteBands allKeys];
    for(NSString *band in aFavoriteBands){
        NSArray *tracks = [mFavoriteBands[band] allKeys];
        for(NSString *track in tracks){
            NSLog(@"%@ > %@ > %@", band, track, [mFavoriteBands[band] objectForKey:track]);
        }
    }
    
//    NSString *knownObject = @"They Want My Soul";
//    NSArray *temp = [mFavoriteBands allKeysForObject:knownObject];
//    NSString *key = [temp objectAtIndex:0];
    
    //NSLog(@"Here's the favoriteBands dictionary: %@", mFavoriteBands);
    
    // create dictionary of only albums
    NSMutableDictionary *favoriteAlbums = [NSMutableDictionary dictionary];
    for(NSString *band in aFavoriteBands){
        [favoriteAlbums addEntriesFromDictionary:mFavoriteBands[band]];
    }
    NSLog(@"Here's the favoriteAlbums dictionary: %@", favoriteAlbums);
    
    
    // Do not alter
    return YES;  //
}   ///////////////

@end
