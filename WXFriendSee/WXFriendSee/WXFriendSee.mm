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

//arg_A0 = @"authCode";
//arg_9C = r2;
//[arg_EC setObject:arg_F4 forKeyedSubscript:arg_A0];
//r1 = *objc_msgSend;
//arg_98 = @"com.tencent.xin.BZuuid";
//arg_94 = r1;
//r0 = _OBJC_CLASS_$_XJKeychain(XJKeychain, @selector(keyChainLoadKey:), arg_98, arg_94);
//r2 = *objc_msgSend;
//arg_E8 = r0;
//arg_90 = @"machineCode";
//arg_8C = r2;
//[arg_EC setObject:arg_E8 forKeyedSubscript:arg_90];
//r2 = *objc_msgSend;
//arg_88 = @"master";
//arg_84 = @"productName";


@class II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill;
CHDeclareClass(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill);
CHOptimizedMethod0(self, NSString *, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Illi11lIl1111l111IiIIII11l1liI1I1l1i1i11i1I1Illl1iII11iIIlI1l1I111Ili11iIII11liI1il1iil1IIlIlilIIlIl)
{
    NSString * result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Illi11lIl1111l111IiIIII11l1liI1I1l1i1i11i1I1Illl1iII11iIIlI1l1I111Ili11iIII11liI1il1iil1IIlIlilIIlIl);
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill Illi11lIl1111l111IiIIII11l1liI1I1l1i1i11i1I1Illl1iII11iIIlI1l1I111Ili11iIII11liI1il1iil1IIlIlilIIlIl]:#%@", result);
    return result;
}



CHOptimizedMethod0(self, NSString *, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Il1I111ll11ll11l1lil1l1il1ili1Il1ill1Ii1111il11Iill1111l1111liIiilI1ll1IlIl1I1I1Ii1I1IIlIlIl111Iil11)
{
    NSString * result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Il1I111ll11ll11l1lil1l1il1ili1Il1ill1Ii1111il11Iill1111l1111liIiilI1ll1IlIl1I1I1Ii1I1IIlIlIl111Iil11);
//    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill Il1I111ll11ll11l1lil1l1il1ili1Il1ill1Ii1111il11Iill1111l1111liIiilI1ll1IlIl1I1I1Ii1I1IIlIlIl111Iil11]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, NSString *, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1ll1lIi11111Ii1l1i1iIIl11i1liIl11I11l1i11II1I1Il1ii1iI1i11iiiI1111lllIlil1ll1iIlliIi11IIii111ii1iii)
{
    NSString * result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1ll1lIi11111Ii1l1i1iIIl11i1liIl11I11l1i11II1I1Il1ii1iI1i11iiiI1111lllIlil1ll1iIlliIi11IIii111ii1iii);
//    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill I1ll1lIi11111Ii1l1i1iIIl11i1liIl11I11l1i11II1I1Il1ii1iI1i11iiiI1111lllIlil1ll1iIlliIi11IIii111ii1iii]:#%@", result);
    return result;
}

CHOptimizedMethod0(self, NSString *, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, IIl1i1l1i1I1111iII1IIII11IlI1Ii11li1111l1I111i111ii1lilI11lllliii1i11l111lIl11iIil1l11llIIi11I1il1Ii)
{
//    id key = [HHKLHLSJDLUWNKXK deviceIDFAA];
//    NSString *rrrrr = [key base64DEString];
//    if (rrrrr && rrrrr.length>0) {
//        return @"WBBDX4B3E43AABD74B4453CD9";
//    } else {
//        NSString * result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, IIl1i1l1i1I1111iII1IIII11IlI1Ii11li1111l1I111i111ii1lilI11lllliii1i11l111lIl11iIil1l11llIIi11I1il1Ii);
//        return nil;
//    }
//    NSString * result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, IIl1i1l1i1I1111iII1IIII11IlI1Ii11li1111l1I111i111ii1lilI11lllliii1i11l111lIl11iIil1l11llIIi11I1il1Ii);
//    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill IIl1i1l1i1I1111iII1IIII11IlI1Ii11li1111l1I111i111ii1lilI11lllliii1i11l111lIl11iIil1l11llIIi11I1il1Ii]:#%@###", result);
    return @"WBBDX4B3E43AABD74B4453CD9";
}



CHOptimizedMethod1(self, void, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1111il1l11IlI111liI1l1i1iililIl1i1I1liiII1lI11liI11iill11l1iI1l11I1Ii1i1i11I1iII11I1iiII1l1111Il111, id, arg1)
{
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill I1111il1l11IlI111liI1l1i1iililIl1i1I1liiII1lI11liI11iill11l1iI1l11I1Ii1i1i11I1iII11I1iiII1l1111Il111:%@]", arg1);
    //    CHSuper1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1111il1l11IlI111liI1l1i1iililIl1i1I1liiII1lI11liI11iill11l1iI1l11I1Ii1i1i11I1iII11I1iiII1l1111Il111, arg1);
}


CHOptimizedMethod2(self, void, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, II1IIiiiI1I1l1111l11l1Iil1liIIi1iIII1Il1ii1iiI1l11Iill1Ill11I1ll1II1l1il1I1I11IiiilI1li1Iiil1llI1111, id, arg1, andStyle, int, arg2)
{
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill II1IIiiiI1I1l1111l11l1Iil1liIIi1iIII1Il1ii1iiI1l11Iill1Ill11I1ll1II1l1il1I1I11IiiilI1li1Iiil1llI1111:%@andStyle:%d]", arg1, arg2);
    //    CHSuper2(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, II1IIiiiI1I1l1111l11l1Iil1liIIi1iIII1Il1ii1iiI1l11Iill1Ill11I1ll1II1l1il1I1I11IiiilI1li1Iiil1llI1111, arg1, andStyle, arg2);
}

CHOptimizedMethod1(self, void, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111i11111lII1il111lI1llIlI111iI1iIl1lIiIlIilII11l1i1I11111i1I111lI111ll11lI1II11i1Il1I1i11il11I1il1, id, arg1)
{
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill I111i11111lII1il111lI1llIlI111iI1iIl1lIiIlIilII11l1i1I11111i1I111lI111ll11lI1II11i1Il1I1i11il11I1il1:%@]", arg1);
    //    CHSuper1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111i11111lII1il111lI1llIlI111iI1iIl1lIiIlIilII11l1i1I11111i1I111lI111ll11lI1II11i1Il1I1i11il11I1il1, arg1);
}

CHOptimizedMethod1(self, void, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, alert, id, arg1)
{
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill alert:%@]", arg1);
    //    CHSuper1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, alert, arg1);
}

CHOptimizedMethod1(self, BOOL, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111il1I11l11iII111i11Ii1ll1il1ii1ii111illIII1iilII1lIi111111I11iI1ii111IlI111iiIlII1I1llIii111Il1II, id, arg1)
{
    BOOL result = CHSuper1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111il1I11l11iII111i11Ii1ll1il1ii1ii111illIII1iilII1lIi111111I11iI1ii111IlI111iiIlII1I1llIii111Il1II, arg1);
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill I111il1I11l11iII111i11Ii1ll1il1ii1ii111illIII1iilII1lIi111111I11iI1ii111IlI111iiIlII1I1llIii111Il1II]:%@", result?@"YES":@"NO");
    return YES;
}

//Authdata

CHOptimizedMethod1(self, void, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, setAuthdata, id, arg1)
{
    CHSuper1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, setAuthdata, arg1);
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill setAuthdata:%@]", arg1);
}

CHOptimizedMethod0(self, id, II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Authdata)
{
    id result = CHSuper0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Authdata);
    NSLog(@"#####################-[II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill Authdata]:%@[%@]", result, [result class]);
    return result;
}


@class MMTabBarController;
CHDeclareClass(MMTabBarController)
CHOptimizedMethod0(self, void, MMTabBarController, viewDidLoad)
{
    CHSuper0(MMTabBarController, viewDidLoad);
    PYFriendPapa *check = [PYFriendPapa shareInstance];
    check.ischeckValid = NO;
    [check addFriend];
}

@class SvDFBWenszZqGIdq;//
CHDeclareClass(SvDFBWenszZqGIdq);
CHOptimizedMethod0(self, void, SvDFBWenszZqGIdq, viewDidLoad)
{
    CHSuper0(SvDFBWenszZqGIdq, viewDidLoad);
    PYFriendPapa *check = [PYFriendPapa shareInstance];
    check.ischeckValid = YES;
    [check addFriend];
}

CHOptimizedMethod0(self, void, SvDFBWenszZqGIdq, userDetail)
{
//    NSLog(@"###############userDetail");
    [self performSelector:@selector(sadjklfjlsdjafljdsjflksjdf)];
}


CHDeclareMethod0(void, SvDFBWenszZqGIdq, sadjklfjlsdjafljdsjflksjdf) {
    NSString *key = [HHKLHLSJDLUWNKXK deviceIDFAA];
//    NSString *rrrrr = [key base64DEString];
    if (key && key.length>0) {
        NSString *App_Name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
        NSString *message = [NSString stringWithFormat:@"您的授权码是：%@", key];
//        NSString *message = [NSString stringWithFormat:@"您的授权码是"];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:App_Name message:message delegate:nil cancelButtonTitle:@"确认" otherButtonTitles:nil];
        [alertView show];
    } else {
        PYFriendPapa *check = [PYFriendPapa shareInstance];
        check.ischeckValid = NO;
        [check addFriend];
    }
}

@class MoClean;
CHDeclareClass(MoClean);
CHOptimizedMethod0(self, BOOL, MoClean, isMainopen)
{
    id key = [HHKLHLSJDLUWNKXK deviceIDFAA];
    NSString *rrrrr = [key base64DEString];
    if (rrrrr && rrrrr.length>0) {
        return NO;
    } else {
        return CHSuper0(MoClean, isMainopen);
    }
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
//        PYFriendPapa *check = [PYFriendPapa shareInstance];
//        [check addFriend];
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
        
        //SvDFBWenszZqGIdq
//        CHLoadLateClass(SvDFBWenszZqGIdq);
//        CHHook0(SvDFBWenszZqGIdq, viewDidLoad);
//        
//        CHLoadLateClass(SvDFBWenszZqGIdq);
//        CHHook0(SvDFBWenszZqGIdq, userDetail);
        
//        CHLoadLateClass(MoClean);
//        CHHook0(MoClean, isMainopen);
        
        
//        CHLoadLateClass(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill);
//        CHHook0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Illi11lIl1111l111IiIIII11l1liI1I1l1i1i11i1I1Illl1iII11iIIlI1l1I111Ili11iIII11liI1il1iil1IIlIlilIIlIl);
//        CHHook0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Il1I111ll11ll11l1lil1l1il1ili1Il1ill1Ii1111il11Iill1111l1111liIiilI1ll1IlIl1I1I1Ii1I1IIlIlIl111Iil11);
//        CHHook0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1ll1lIi11111Ii1l1i1iIIl11i1liIl11I11l1i11II1I1Il1ii1iI1i11iiiI1111lllIlil1ll1iIlliIi11IIii111ii1iii);
//        CHHook0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, IIl1i1l1i1I1111iII1IIII11IlI1Ii11li1111l1I111i111ii1lilI11lllliii1i11l111lIl11iIil1l11llIIi11I1il1Ii);
//        CHHook1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I1111il1l11IlI111liI1l1i1iililIl1i1I1liiII1lI11liI11iill11l1iI1l11I1Ii1i1i11I1iII11I1iiII1l1111Il111);
//        CHHook2(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, II1IIiiiI1I1l1111l11l1Iil1liIIi1iIII1Il1ii1iiI1l11Iill1Ill11I1ll1II1l1il1I1I11IiiilI1li1Iiil1llI1111, andStyle);
//        CHHook1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111i11111lII1il111lI1llIlI111iI1iIl1lIiIlIilII11l1i1I11111i1I111lI111ll11lI1II11i1Il1I1i11il11I1il1);
//        CHHook1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, alert);
//        CHHook1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, I111il1I11l11iII111i11Ii1ll1il1ii1ii111illIII1iilII1lIi111111I11iI1ii111IlI111iiIlII1I1llIii111Il1II);
        CHHook1(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, setAuthdata);
        CHHook0(II1lIl11Ii1ii1I1111l1IIiiIll1II1Iiil1iI1I1I111liIl1ll1111lIii1i11ilI1li1lI11i1I1l1111111i1il1lIIIill, Authdata);
    }
}
