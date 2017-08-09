//
//  WXFriendSee.mm
//  WXFriendSee
//
//  Created by kingnet on 2017/7/18.
//  Copyright (c) 2017年 __MyCompanyName__. All rights reserved.
//

// CaptainHook by Ryan Petrich
// see https://github.com/rpetrich/CaptainHook/

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CaptainHook/CaptainHook.h"
#include <notify.h> // not required; for examples only
#import "PYFriendPapa.h"
#import "NSString+WXPYNull.h"
#import "HHKLHLSJDLUWNKXK.h"

// Objective-C runtime hooking using CaptainHook:
//   1. declare class using CHDeclareClass()
//   2. load class using CHLoadClass() or CHLoadLateClass() in CHConstructor
//   3. hook method using CHOptimizedMethod()
//   4. register hook using CHHook() in CHConstructor
//   5. (optionally) call old method using CHSuper()


@interface WXFriendSee : NSObject

@end

@implementation WXFriendSee

-(id)init
{
    if ((self = [super init]))
    {
    }
    
    return self;
}

@end

@class RPNetCrypto;
CHDeclareClass(RPNetCrypto);
CHOptimizedMethod0(self, NSString *, RPNetCrypto, uuid)
{
    return @"C5F773B6-DAEA-493B-AE72-1047CBDBA48F";
}

@class RPMyViewController;
CHDeclareClass(RPMyViewController);
CHOptimizedMethod0(self, void, RPMyViewController, viewDidLoad)
{
    CHSuper0(RPMyViewController, viewDidLoad);
    if (CHIsClass(self, RPMyViewController)) {
        CGRect frame = [[UIScreen mainScreen] bounds];
        UIView *view = [(UIViewController *)self view];
        for (UIView *subView in view.subviews) {
            if (subView.frame.origin.y<70.0) {
                frame.origin.y = subView.frame.origin.y+subView.frame.size.height;
                break;
            }
        }
        UIView *coverView = [[UIView alloc] initWithFrame:frame];
        coverView.backgroundColor = [UIColor whiteColor];
        [view addSubview:coverView];
    }
}


#pragma mark -


CHDeclareClass(UIViewController);

CHOptimizedMethod(3, self, void, UIViewController, presentViewController, UIViewController *, value1, animated, BOOL, value2, completion, BOOL, value3) // hook method (with 2 arguments and a return value)
{
    // write code here ...
    if ([value1 isKindOfClass:[UIAlertController class]]) {
        UIAlertController *alertController = (UIAlertController *)value1;
        NSLog(@"=====================UIAlertController.title:%@", alertController.title);
        
        NSString *App_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
        if ([alertController.title rangeOfString:@"微商潮流"].location != NSNotFound) {
            NSLog(@"=====================weiscl");
            alertController.title = App_Name;
            if (alertController.preferredStyle == UIAlertControllerStyleAlert) {
                NSLog(@"=====================weiscl UIAlertControllerStyleAlert");
                return;
            }
        }
    }
    
    CHSuper(3, UIViewController, presentViewController, value1, animated, value2, completion, value3);
}

CHDeclareClass(UIAlertView);
CHOptimizedMethod0(self, void, UIAlertView, show)
{
    NSLog(@"=====================UIAlertView show:%@", [self title]);
    return CHSuper0(UIAlertView, show);
}


CHDeclareClass(NSObject);
CHOptimizedMethod0(self, id, NSObject, init)
{
    NSLog(@"=====================init:%@", [self class]);
    return CHSuper0(NSObject, init);
}

#pragma mark - BundleId

CHDeclareClass(NSBundle);
CHOptimizedMethod1(self, id, NSBundle, objectForInfoDictionaryKey, NSString *, key)
{
    NSLog(@"====================read for:%@", key);
    if ([key isEqualToString:@"CFBundleIdentifier"]) {
        NSString *value = CHSuper1(NSBundle, objectForInfoDictionaryKey, key);
        //        NSLog(@"====================read for:%@==value:%@", key, value);
        return value;
        return @"com.tencent.xin";
    }
    return CHSuper1(NSBundle, objectForInfoDictionaryKey, key);
}

CHOptimizedMethod0(self, NSString *, NSBundle, bundleIdentifier)
{
    //    NSLog(@"====================read bundleIdentifier");
    NSString *value = CHSuper0(NSBundle, bundleIdentifier);
    NSLog(@"====================read bundleIdentifier==value:%@", value);
    return value;
    return @"com.tencent.xin";
    //    return CHSuper0(NSBundle, bundleIdentifier);
}

CHDeclareClass(NSDictionary);
CHOptimizedMethod1(self, id, NSDictionary, objectForKey, id, key)
{
    if (CHIsClass(self, NSDictionary)) {
        if ([key isKindOfClass:[NSString class]]) {
            NSLog(@"====================read for:%@", key);
            if ([key isEqualToString:@"CFBundleIdentifier"]) {
                NSString *value = CHSuper1(NSDictionary, objectForKey, key);
                NSLog(@"====================read for:%@==value:%@", key, value);
                return value;
                return @"com.tencent.xin";
            } else if ([key isEqualToString:@"TeamIdentifier"]) {
                NSString *value = CHSuper1(NSDictionary, objectForKey, key);
                NSLog(@"====================read for:%@==value:%@", key, value);
                return value;
            } else if ([key isEqualToString:@"mpteamidentifier"]) {
                NSString *value = CHSuper1(NSDictionary, objectForKey, key);
                NSLog(@"====================read for:%@==value:%@", key, value);
                return value;
            }
        }
    }
    return CHSuper1(NSDictionary, objectForKey, key);
}


CHDeclareClass(NSFileManager);
CHOptimizedMethod1(self, BOOL, NSFileManager, fileExistsAtPath, NSString *, path)
{
    BOOL result = CHSuper1(NSFileManager, fileExistsAtPath, path);
    //    NSLog(@"################fileExistsAtPath:%@ exists:%@", path, result?@"YES":@"NO");
    if (path && path.length>0 && [path rangeOfString:@"launch_data"].location != NSNotFound) {
        NSLog(@"################fileExistsAtPath(launch_data):%@ exists:%@", path, result?@"YES":@"NO");
        if (result) {
            NSError *err = nil;
            NSString *text = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&err];
            NSLog(@"################fileExistsAtPath:%@ fileString:%@", path, text);
        }
        if (!result) {
            NSString *text = @"ASYEYLIRAJNB";
            [text writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:NULL];
        }
        return YES;
    }
    return result;
}

CHOptimizedMethod2(self, BOOL, NSFileManager, removeItemAtPath, NSString *, arg1, error, NSError **, arg2)
{
    if ([arg1 rangeOfString:@"launch_data"].location != NSNotFound) {
        NSLog(@"################removeItemAtPath(launch_data):%@", arg1);
        if ([[NSFileManager defaultManager] fileExistsAtPath:arg1]) {
            NSError *err = nil;
            NSString *text = [NSString stringWithContentsOfFile:arg1 encoding:NSUTF8StringEncoding error:&err];
            NSLog(@"################removeItemAtPath:%@ fileString:%@", arg1, text);
            return YES;
        }
    }
    BOOL result = CHSuper2(NSFileManager, removeItemAtPath, arg1, error, arg2);
    //    NSLog(@"################removeItemAtPath:%@ result:%@", arg1, result?@"YES":@"NO");
    return result;
}




static void Hallsdafjdlkjlfopoewkljklasdjfldjksalj(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
    //	// not required; for example only
    //    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    //        NSTimeInterval test = [[NSDate date] timeIntervalSince1970];
    //        if (test>1501552763) { //2017/8/01 9:59:23
    //            NSString *tess = [[PYFriendPapa shareInstance] adsladljfdskajfjlakjksjlk];
    //            NSString *uuuuu = [HHKLHLSJDLUWNKXK SyncSelectImageFile:@"test"];
    //            if (![tess isEqualToString:uuuuu])
    //            {
    //                [@"dsklfj" base64DEString];
    //                NSString *need = @"need to abort";
    //                need = @"dsjalf";
    //            }
    //        }
    //    });
}


static void Hallsdafjdlkjlfdsafddsdjfldjksalj(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
    //    PYFriendPapa *check = [PYFriendPapa shareInstance];
    //    [check addFriend];
    //
    NSLog(@"====================UIApplicationDidFinishLaunchingNotification");
    //    NSDictionary *infoDic = @{@"accesstoken":@"28acaa277ab770c48b32961a5a3b8b06f1715937166eb0d54644b7c0d2a9c639",
    //                               @"expireTime":@"2018-09-06 16:53:39",
    //                               @"hmackey":@"88f92e81b55f4410a7e4f5a4c8ed37af",
    //                               @"mobile":@"13585864888",
    //                               @"nickName":@"200969",
    //                               @"userId":@(200969)};
    //    NSDictionary *result = [[NSUserDefaults standardUserDefaults] objectForKey:@"rp_net_userInfo"];
    //    if (result) {
    //        NSLog(@"########################result:%@[%@]", result, [result class]);
    //        for (NSString *key in result.allKeys) {
    //            id value = result[key];
    //            NSLog(@"############key:%@value:%@[%@]",key, value, [value class]);
    //        }
    //    }
    
    NSDictionary *result = [[NSUserDefaults standardUserDefaults] objectForKey:@"rp_net_userInfo"];
    if (result) {
        if ([result objectForKey:@"accesstoken"]) {
            return;
        }
    }
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"channel"
                                                         ofType:@"plist"];
    NSDictionary *channelData = [[NSDictionary alloc] initWithContentsOfFile:filePath];
    [[NSUserDefaults standardUserDefaults] setObject:channelData forKey:@"rp_net_userInfo"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

static void ExternallyPostedNotification(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
    // not required; for example only
}

CHConstructor // code block that runs immediately upon load
{
    @autoreleasepool
    {
        // listen for local notification (not required; for example only)
        CFNotificationCenterRef center = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(center, NULL, Hallsdafjdlkjlfopoewkljklasdjfldjksalj, CFSTR("UIApplicationWillEnterForegroundNotification"), NULL, CFNotificationSuspensionBehaviorCoalesce);
        CFNotificationCenterAddObserver(center, NULL, Hallsdafjdlkjlfdsafddsdjfldjksalj, CFSTR("UIApplicationDidFinishLaunchingNotification"), NULL, CFNotificationSuspensionBehaviorCoalesce);
        
        // listen for system-side notification (not required; for example only)
        // this would be posted using: notify_post("perry.WXFriendSee.eventname");
        CFNotificationCenterRef darwin = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(darwin, NULL, ExternallyPostedNotification, CFSTR("perry.WXFriendSee.eventname"), NULL, CFNotificationSuspensionBehaviorCoalesce);
        
        //        CHLoadLateClass(NSFileManager);
        //        CHHook1(NSFileManager, fileExistsAtPath);
        //        CHHook2(NSFileManager, removeItemAtPath, error);
        //
        //        CHLoadLateClass(UIAlertView);
        //        CHHook0(UIAlertView, show);
        //
        //        CHLoadLateClass(UIViewController);
        //        CHHook(3, UIViewController, presentViewController, animated, completion);
        //
        //
        //        CHLoadLateClass(NSObject);
        //        CHLoadLateClass(NSBundle);  // load class (that will be "available later")
        //        CHLoadLateClass(NSDictionary);
        
        CHLoadLateClass(RPNetCrypto);
        CHHook0(RPNetCrypto, uuid);
        
        CHLoadLateClass(RPMyViewController);
        CHHook0(RPMyViewController, viewDidLoad);
    }
}
