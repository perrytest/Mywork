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

@class XJKeychain;
CHDeclareClass(XJKeychain);
CHOptimizedClassMethod1(self, id, XJKeychain, keyChainLoadKey, id, arg1)
{
    //    if ([arg1 isEqualToString:@"com.tencent.xin.auth"]) {
    //        NSLog(@"######moni return");
    //        return @"579DBEC45ECB73042BFE7A70E3157D0DDAAABD68033061556ECCB4303CF73B2257344A51FAAA8C1BDF63DB15E0D4B175811BAE7AA3C08A064AB44C8177EDD90D53AB5BA439EEA61D7DCE5003978D1B5B1849A21DD7F4702244E2C4089A9FC1FF7BD0A77AD9B8A95CA74411FD38582718B4B69D99115CA203E64D76545D2C956F43DE7D69CD338C87DDE0661441FC26EF2AC23560520BFDAB59098647BECF450F1EFD424E181628A700A8FADEC607BE1E4887725B06F0F9E9AED4DF32BE525F34EB7CAAAEEE83CA349E8C44B5FB62D4D3";
    //    }
    id result = CHSuper1(XJKeychain, keyChainLoadKey, arg1);
    NSLog(@"#####################keyChainLoadKey:%@##:%@[%@]", arg1, result, [result class]);
    return result;
}

CHOptimizedClassMethod2(self, void, XJKeychain, keyChainSave, id, arg1, withKey, id, arg2)
{
    CHSuper2(XJKeychain, keyChainSave, arg1, withKey, arg2);
    NSLog(@"#####################keyChainSave:%@##:%@", arg1, arg2);
}




@class tkpFiOALbSHsXBsv;
CHDeclareClass(tkpFiOALbSHsXBsv);
CHOptimizedMethod0(self, NSString *, tkpFiOALbSHsXBsv, sqState)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, sqState);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv sqState]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, BOOL, tkpFiOALbSHsXBsv, canuse)
{
    BOOL result = CHSuper0(tkpFiOALbSHsXBsv, canuse);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv canuse]:#%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, NSString *, tkpFiOALbSHsXBsv, tmpUUID)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, tmpUUID);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv tmpUUID]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, NSString *, tkpFiOALbSHsXBsv, time)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, time);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv time]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, NSString *, tkpFiOALbSHsXBsv, state)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, state);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv state]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, NSString *, tkpFiOALbSHsXBsv, CpTOobibCBYmgQlA)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, CpTOobibCBYmgQlA);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv CpTOobibCBYmgQlA]:#%@###", result);
    return @"MSJYA6CE1FE2FD667FD229E80";
}

CHOptimizedMethod0(self, id, tkpFiOALbSHsXBsv, QkHfazTsngWnLKLT)
{
    NSString * result = CHSuper0(tkpFiOALbSHsXBsv, QkHfazTsngWnLKLT);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv QkHfazTsngWnLKLT]:#%@[%@]", result, [result class]);
    return result;
}

CHOptimizedMethod1(self, id, tkpFiOALbSHsXBsv, JYDfHnMMYISiepFy, id, arg1)
{
    id result = CHSuper1(tkpFiOALbSHsXBsv, JYDfHnMMYISiepFy, arg1);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv JYDfHnMMYISiepFy:%@]:#%@[%@]", arg1, result, [result class]);
    return result;
}

CHOptimizedMethod1(self, id, tkpFiOALbSHsXBsv, LceXVhhTMgEfauoj, id, arg1)
{
    id result = CHSuper1(tkpFiOALbSHsXBsv, LceXVhhTMgEfauoj, arg1);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv LceXVhhTMgEfauoj:%@]:#%@[%@]", arg1, result, [result class]);
    return result;
}

CHOptimizedMethod1(self, id, tkpFiOALbSHsXBsv, zQIXnQMSzqrHeODD, id, arg1)
{
    id result = CHSuper1(tkpFiOALbSHsXBsv, zQIXnQMSzqrHeODD, arg1);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv zQIXnQMSzqrHeODD:%@]:#%@[%@]", arg1, result, [result class]);
    return result;
}

CHOptimizedMethod0(self, void, tkpFiOALbSHsXBsv, LgPVIsbEuRsdSgIy)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv LgPVIsbEuRsdSgIy]");
    CHSuper0(tkpFiOALbSHsXBsv, LgPVIsbEuRsdSgIy);
}

CHOptimizedMethod3(self, void, tkpFiOALbSHsXBsv, WmckbLlOzFIdlGDz, id, arg1, andKey2pri, id, arg2, andMachine_id, id, arg3)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv WmckbLlOzFIdlGDz:%@andKey2pri:%@andMachine_id:%@]", arg1, arg2, arg3);
    CHSuper3(tkpFiOALbSHsXBsv, WmckbLlOzFIdlGDz, arg1, andKey2pri, arg2, andMachine_id, arg3);
}

CHOptimizedMethod1(self, void, tkpFiOALbSHsXBsv, mvaKbBmWbNYoZwGr, id, arg1)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv mvaKbBmWbNYoZwGr:%@]", arg1);
    //    CHSuper1(tkpFiOALbSHsXBsv, mvaKbBmWbNYoZwGr, arg1);
}

CHOptimizedMethod0(self, BOOL, tkpFiOALbSHsXBsv, wnWzkIrjpdUhooRb)
{
    BOOL result = CHSuper0(tkpFiOALbSHsXBsv, wnWzkIrjpdUhooRb);
    NSLog(@"#####################-[tkpFiOALbSHsXBsv wnWzkIrjpdUhooRb]:#%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod2(self, void, tkpFiOALbSHsXBsv, GgUUYoSZkRGbxfOI, id, arg1, andStyle, int, arg2)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv GgUUYoSZkRGbxfOI:%@andStyle:%d]", arg1, arg2);
    //    CHSuper2(tkpFiOALbSHsXBsv, GgUUYoSZkRGbxfOI, arg1, andStyle, arg2);
}

CHOptimizedMethod1(self, void, tkpFiOALbSHsXBsv, JofMwyBnHpaCncEw, id, arg1)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv JofMwyBnHpaCncEw:%@]", arg1);
    //    CHSuper1(tkpFiOALbSHsXBsv, JofMwyBnHpaCncEw, arg1);
}

CHOptimizedMethod1(self, void, tkpFiOALbSHsXBsv, alert, id, arg1)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv alert:%@]", arg1);
    //    CHSuper1(tkpFiOALbSHsXBsv, alert, arg1);
}

CHOptimizedMethod0(self, void, tkpFiOALbSHsXBsv, saveOldAuthdata)
{
    NSLog(@"#####################-[tkpFiOALbSHsXBsv saveOldAuthdata]");
    CHSuper0(tkpFiOALbSHsXBsv, saveOldAuthdata);
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
    //    NSLog(@"====================UIApplicationDidFinishLaunchingNotification");
    //    [NSUserDefaults standardUserDefaults] setInteger:<#(NSInteger)#> forKey:<#(nonnull NSString *)#>
    //    PYFriendPapa *check = [PYFriendPapa shareInstance];
    //    [check addFriend];
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
        
        CHLoadLateClass(XJKeychain);
        CHClassHook1(XJKeychain, keyChainLoadKey);
        CHClassHook2(XJKeychain, keyChainSave, withKey);
        
        CHLoadLateClass(tkpFiOALbSHsXBsv);
        CHHook0(tkpFiOALbSHsXBsv, sqState);
        CHHook0(tkpFiOALbSHsXBsv, canuse);
        CHHook0(tkpFiOALbSHsXBsv, tmpUUID);
        CHHook0(tkpFiOALbSHsXBsv, time);
        CHHook0(tkpFiOALbSHsXBsv, state);
        CHHook0(tkpFiOALbSHsXBsv, CpTOobibCBYmgQlA);
        CHHook0(tkpFiOALbSHsXBsv, QkHfazTsngWnLKLT);
        CHHook1(tkpFiOALbSHsXBsv, JYDfHnMMYISiepFy);
        CHHook1(tkpFiOALbSHsXBsv, LceXVhhTMgEfauoj);
        CHHook1(tkpFiOALbSHsXBsv, zQIXnQMSzqrHeODD);
        CHHook0(tkpFiOALbSHsXBsv, LgPVIsbEuRsdSgIy);
        CHHook3(tkpFiOALbSHsXBsv, WmckbLlOzFIdlGDz, andKey2pri, andMachine_id);
        CHHook1(tkpFiOALbSHsXBsv, mvaKbBmWbNYoZwGr);
        CHHook0(tkpFiOALbSHsXBsv, wnWzkIrjpdUhooRb);
        CHHook2(tkpFiOALbSHsXBsv, GgUUYoSZkRGbxfOI, andStyle);
        CHHook1(tkpFiOALbSHsXBsv, JofMwyBnHpaCncEw);
        CHHook1(tkpFiOALbSHsXBsv, alert);
        CHHook0(tkpFiOALbSHsXBsv, saveOldAuthdata);
    }
}
