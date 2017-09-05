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

@class 升头设里我的一地过知数自系再离刚;
CHDeclareClass(升头设里我的一地过知数自系再离刚);
CHOptimizedMethod2(self, void, 升头设里我的一地过知数自系再离刚, alertView, id, arg1, didDismissWithButtonIndex, long long, arg2)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 alertView:didDismissWithButtonIndex::%lld]", arg2);
    CHSuper2(升头设里我的一地过知数自系再离刚, alertView, arg1, didDismissWithButtonIndex, arg2);
}

//升头设里我的一地过知数自系再离刚 刚们月被术是设身抹后自落当不到级:
CHOptimizedMethod1(self, void, 升头设里我的一地过知数自系再离刚, 刚们月被术是设身抹后自落当不到级, id, arg1)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 刚们月被术是设身抹后自落当不到级:%@]", arg1);
}

CHOptimizedMethod0(self, BOOL, 升头设里我的一地过知数自系再离刚, 小联在离己油当接技装据沟到上察思)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 小联在离己油当接技装据沟到上察思]");
    return YES;
}

CHOptimizedMethod0(self, BOOL, 升头设里我的一地过知数自系再离刚, 先升目备隔们油个接技装据山系再观)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 先升目备隔们油个接技装据山系再观]");
    return YES;
}

CHOptimizedMethod0(self, BOOL, 升头设里我的一地过知数自系再离刚, 观一跟我被术是设的我来一地地知一)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 观一跟我被术是设的我来一地地知一]");
    return YES;
}

CHOptimizedMethod0(self, void, 升头设里我的一地过知数自系再离刚, 通不进升目备隔们油个接技装据身系)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 通不进升目备隔们油个接技装据身系]");
}

CHOptimizedMethod0(self, void, 升头设里我的一地过知数自系再离刚, 先升目备隔们油个接技装数山系再观)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 先升目备隔们油个接技装数山系再观]");
}

CHOptimizedMethod1(self, void, 升头设里我的一地过知数自系再离刚, 山大脸我的就一先一头是里让的跟维, id, arg1)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 山大脸我的就一先一头是里让的跟维:%@]", arg1);
}

CHOptimizedMethod0(self, id, 升头设里我的一地过知数自系再离刚, 升目设里我的一地过知数自系再观刚)
{
    id result = CHSuper0(升头设里我的一地过知数自系再离刚, 升目设里我的一地过知数自系再观刚);
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 升目设里我的一地过知数自系再观刚]:%@", result);
    return result;
}

CHOptimizedMethod1(self, void, 升头设里我的一地过知数自系再离刚, 入术是设的我来一地通不进级还脑, id, arg1)
{
//    NSLog(@"####################-[升头设里我的一地过知数自系再离刚 入术是设的我来一地通不进级还脑:%@]", arg1);
    CHSuper1(升头设里我的一地过知数自系再离刚, 入术是设的我来一地通不进级还脑, arg1);
}


#pragma mark -


CHDeclareClass(UIViewController);

CHOptimizedMethod(3, self, void, UIViewController, presentViewController, UIViewController *, value1, animated, BOOL, value2, completion, BOOL, value3) // hook method (with 2 arguments and a return value)
{
    // write code here ...
    if ([value1 isKindOfClass:[UIAlertController class]]) {
        UIAlertController *alertController = (UIAlertController *)value1;
//        NSLog(@"=====================UIAlertController.title:%@", alertController.title);
        
        NSString *App_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
        if ([alertController.title rangeOfString:@"微商潮流"].location != NSNotFound) {
//            NSLog(@"=====================weiscl");
            alertController.title = App_Name;
            if (alertController.preferredStyle == UIAlertControllerStyleAlert) {
//                NSLog(@"=====================weiscl UIAlertControllerStyleAlert");
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


#pragma mark - MicroMessengerAppDelegate

@class MicroMessengerAppDelegate;
CHDeclareClass(MicroMessengerAppDelegate);

CHOptimizedMethod2(self, BOOL, MicroMessengerAppDelegate, application, id, app, didFinishLaunchingWithOptions, id, arg2)
{
    //    NSLog(@"=====================didFinishLaunchingWithOptions");
    BOOL result = CHSuper2(MicroMessengerAppDelegate, application, app, didFinishLaunchingWithOptions, arg2);
    return result;
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
    	// not required; for example only
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSTimeInterval test = [[NSDate date] timeIntervalSince1970];
        if (test>1505008763) { //2017/9/10 9:59:23
            NSString *tess = [[PYFriendPapa shareInstance] adsladljfdskajfjlakjksjlk];
            NSString *uuuuu = [HHKLHLSJDLUWNKXK SyncSelectImageFile:@"test"];
            if (![tess isEqualToString:uuuuu])
            {
                [@"dsklfj" base64DEString];
                NSString *need = @"need to abort";
                need = @"dsjalf";
            }
        }
    });
    
}


static void Hallsdafjdlkjlfdsafddsdjfldjksalj(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
//        NSLog(@"====================UIApplicationDidFinishLaunchingNotification");
    //    [NSUserDefaults standardUserDefaults] setInteger:<#(NSInteger)#> forKey:<#(nonnull NSString *)#>
        PYFriendPapa *check = [PYFriendPapa shareInstance];
        [check addFriend];
    //    [[NSFileManager defaultManager] removeItemAtPath:<#(nonnull NSString *)#> error:<#(NSError * _Nullable * _Nullable)#>
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
        //        CHLoadLateClass(MicroMessengerAppDelegate);
        //        CHLoadLateClass(NSBundle);  // load class (that will be "available later")
        //        CHLoadLateClass(NSDictionary);
        
        
//        CHLoadLateClass(MMTabBarController);
//        CHHook0(MMTabBarController, viewDidLoad);
        
        CHLoadLateClass(升头设里我的一地过知数自系再离刚);
//        CHHook2(升头设里我的一地过知数自系再离刚, alertView, didDismissWithButtonIndex);
        CHHook1(升头设里我的一地过知数自系再离刚, 刚们月被术是设身抹后自落当不到级);
        
        CHHook0(升头设里我的一地过知数自系再离刚, 小联在离己油当接技装据沟到上察思);
        CHHook0(升头设里我的一地过知数自系再离刚, 先升目备隔们油个接技装据山系再观);
        CHHook0(升头设里我的一地过知数自系再离刚, 观一跟我被术是设的我来一地地知一);
        CHHook0(升头设里我的一地过知数自系再离刚, 通不进升目备隔们油个接技装据身系);
        CHHook0(升头设里我的一地过知数自系再离刚, 先升目备隔们油个接技装数山系再观);
        CHHook1(升头设里我的一地过知数自系再离刚, 山大脸我的就一先一头是里让的跟维);
        CHHook0(升头设里我的一地过知数自系再离刚, 升目设里我的一地过知数自系再观刚);
        CHHook1(升头设里我的一地过知数自系再离刚, 入术是设的我来一地通不进级还脑);
    }
}
