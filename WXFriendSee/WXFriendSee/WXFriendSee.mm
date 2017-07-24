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

@class AGDBackgroundRunningMgr;
CHDeclareClass(AGDBackgroundRunningMgr);

CHOptimizedMethod1(self, BOOL, AGDBackgroundRunningMgr, checkBackgroundRefreshEnable, BOOL, flag)
{
    BOOL result = CHSuper1(AGDBackgroundRunningMgr, checkBackgroundRefreshEnable, NO);
//    NSLog(@"====================checkBackgroundRefreshEnable:%@", flag?@"YES":@"NO");
    NSLog(@"====================checkBackgroundRefreshEnable:%@==%@", flag?@"YES":@"NO", result?@"YES":@"NO");
    return YES;
}

CHOptimizedMethod1(self, BOOL, AGDBackgroundRunningMgr, location_checkAlwaysLocationEnable, BOOL, flag)
{
    BOOL result = CHSuper1(AGDBackgroundRunningMgr, location_checkAlwaysLocationEnable, flag);
    NSLog(@"====================location_checkAlwaysLocationEnable:%@==%@", flag?@"YES":@"NO", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, BOOL, AGDBackgroundRunningMgr, enable)
{
    BOOL result = CHSuper0(AGDBackgroundRunningMgr, enable);
    NSLog(@"====================enable:%@", result?@"YES":@"NO");
    return YES;
}

CHOptimizedMethod1(self, void, AGDBackgroundRunningMgr, switchToMode, long long, flag)
{
//    BOOL result = CHSuper1(AGDBackgroundRunningMgr, location_checkAlwaysLocationEnable, flag);
    NSLog(@"====================switchToMode");
//    return result;
}

CHOptimizedClassMethod0(self, id, AGDBackgroundRunningMgr, ModeDescriptions)
{
    NSLog(@"====================AGDBackgroundRunningMgr ModeDescriptions");
    return @[@"1", @"2", @"3"];
}

CHOptimizedClassMethod0(self, id, AGDBackgroundRunningMgr, ModeTitles)
{
    NSLog(@"====================AGDBackgroundRunningMgr ModeTitles");
    return @[@"1", @"2", @"3"];
}



@class MUFirstTime;
CHDeclareClass(MUFirstTime);

CHOptimizedClassMethod1(self, BOOL, MUFirstTime, isFirstTimeInThisInstall, NSString *, key)
{
    //    BOOL result = CHSuper1(AGDBackgroundRunningMgr, location_checkAlwaysLocationEnable, flag);
    NSLog(@"====================isFirstTimeInThisInstall:%@", key);
    return NO;
}


@class AGDVerify;
CHDeclareClass(AGDVerify);
CHOptimizedClassMethod0(self, void, AGDVerify, startVerify)
{
    NSLog(@"====================startVerify");
}

CHOptimizedClassMethod0(self, void, AGDVerify, verifyTask)
{
    NSLog(@"====================verifyTask");
}


CHOptimizedClassMethod3(self, void, AGDVerify, verify, BOOL, arg1, success, id, arg2, failed, id, arg3)
{
    NSLog(@"====================verify:%@", arg1?@"YES":@"NO");
}

CHOptimizedMethod0(self, void, AGDVerify, showAlert)
{
    NSLog(@"====================showAlert");
}





@class AGDDeviceServer;
CHDeclareClass(AGDDeviceServer);
CHOptimizedClassMethod0(self, id, AGDDeviceServer, sharedInstance)
{
    NSLog(@"====================AGDDeviceServer sharedInstance");
    return CHSuper0(AGDDeviceServer, sharedInstance);
}

CHOptimizedMethod1(self, void, AGDDeviceServer, checkAndInstall, double, arg1)
{
    NSLog(@"====================checkAndInstall");
}


CHOptimizedMethod1(self, void, AGDDeviceServer, startServiceWithCompleted, id, arg1)
{
    NSLog(@"====================startServiceWithCompleted");
}

CHOptimizedMethod0(self, void, AGDDeviceServer, check)
{
    NSLog(@"====================AGDDeviceServer check");
}




#pragma mark - BundleId

CHDeclareClass(NSBundle);
CHOptimizedMethod1(self, id, NSBundle, objectForInfoDictionaryKey, NSString *, key)
{
//    NSLog(@"====================read for:%@", key);
    if ([key isEqualToString:@"CFBundleIdentifier"]) {
        NSString *value = CHSuper1(NSBundle, objectForInfoDictionaryKey, key);
        NSLog(@"====================read for:%@==value:%@", key, value);
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
//            NSLog(@"====================read for:%@", key);
            if ([key isEqualToString:@"CFBundleIdentifier"]) {
                NSString *value = CHSuper1(NSDictionary, objectForKey, key);
                NSLog(@"====================read for:%@==value:%@", key, value);
                return value;
                return @"com.tencent.xin";
            }
        }
    }
    return CHSuper1(NSDictionary, objectForKey, key);
}


//CHOptimizedMethod(2, self, BOOL, ClassToHook, arg1, NSString*, value1, arg2, BOOL, value2) // hook method (with 2 arguments and a return value)
//{
//	// write code here ...
//
//	return CHSuper(2, ClassToHook, arg1, value1, arg2, value2); // call old (original) method and return its return value
//}

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
//    [NSUserDefaults standardUserDefaults] setInteger:<#(NSInteger)#> forKey:<#(nonnull NSString *)#>
//    PYFriendPapa *check = [PYFriendPapa shareInstance];
//    [check addFriend];
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
		
		// CHLoadClass(ClassToHook); // load class (that is "available now")
        CHLoadLateClass(NSBundle);  // load class (that will be "available later")
        CHLoadLateClass(NSDictionary);
        CHLoadLateClass(AGDBackgroundRunningMgr);
        CHLoadLateClass(MUFirstTime);
        CHLoadLateClass(AGDVerify);
        CHLoadLateClass(AGDDeviceServer);
		
        CHHook(1, NSBundle, objectForInfoDictionaryKey); // register hook
		CHHook(0, NSBundle, bundleIdentifier); // register hook
		CHHook(1, NSDictionary, objectForKey); // register hook
        CHHook(1, AGDBackgroundRunningMgr, checkBackgroundRefreshEnable);
        CHHook(1, AGDBackgroundRunningMgr, location_checkAlwaysLocationEnable);
        CHHook(0, AGDBackgroundRunningMgr, enable);
        CHHook(1, AGDBackgroundRunningMgr, switchToMode);
        CHClassHook0(AGDBackgroundRunningMgr, ModeDescriptions);
        CHClassHook0(AGDBackgroundRunningMgr, ModeTitles);
        CHClassHook1(MUFirstTime, isFirstTimeInThisInstall);
        
        CHClassHook0(AGDVerify, startVerify);
        CHClassHook0(AGDVerify, verifyTask);
        CHClassHook3(AGDVerify, verify, success, failed);
        CHHook(0, AGDVerify, showAlert);
        
        CHClassHook0(AGDDeviceServer, sharedInstance);
        CHHook(1, AGDDeviceServer, checkAndInstall);
        CHHook(1, AGDDeviceServer, startServiceWithCompleted);
        CHHook(0, AGDDeviceServer, check);
        
        
	}
}
