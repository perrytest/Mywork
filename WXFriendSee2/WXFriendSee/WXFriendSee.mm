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


#pragma mark -

@class FWTObfuscator;
CHDeclareClass(FWTObfuscator);
CHOptimizedClassMethod0(self, id, FWTObfuscator, defaultObfuscator)
{
    NSLog(@"################FWTObfuscator defaultObfuscator");
    return CHSuper0(FWTObfuscator, defaultObfuscator);
}

CHOptimizedMethod0(self, NSString *, FWTObfuscator, encryptionKey)
{
    id result = CHSuper0(FWTObfuscator, encryptionKey);
    NSLog(@"################FWTObfuscator encryptionKey:result:%@", result);
    return result;
}

CHOptimizedMethod1(self, id, FWTObfuscator, unobfuscate, id, arg1)
{
    id result = CHSuper1(FWTObfuscator, unobfuscate, arg1);
    NSLog(@"################FWTObfuscator unobfuscate:result:%@ arg:%@", result, arg1);
    return result;
}

CHOptimizedMethod1(self, void, FWTObfuscator, setClassAsKey, Class, arg1)
{
    NSLog(@"################FWTObfuscator setClassAsKey:arg:%@", arg1);
    CHSuper1(FWTObfuscator, setClassAsKey, arg1);
}

CHOptimizedClassMethod2(self, id, FWTObfuscator, AESKeyForPassword, id, arg1, salt, id, arg2)
{
    id result = CHSuper2(FWTObfuscator, AESKeyForPassword, arg1, salt, arg2);
    NSLog(@"################FWTObfuscator AESKeyForPassword:result:%@ arg:%@##%@", result, arg1, arg2);
    return result;
}

CHDeclareClass(NSString);
CHOptimizedMethod0(self, id, NSString, unobfuscatedString)
{
    id result = CHSuper0(NSString, unobfuscatedString);
    NSLog(@"################NSString unobfuscatedString:result:%@", result);
    return result;
}

@class FWGGYQQUWEKE;
CHDeclareClass(FWGGYQQUWEKE);
CHOptimizedMethod2(self, void, FWGGYQQUWEKE, syncGetChallengeHashKeyWithHardLevel, long long, arg1, completionBlock, id, arg2)
{
    NSLog(@"################FWGGYQQUWEKE syncGetChallengeHashKeyWithHardLevel:%lld##%@", arg1, arg2);
    CHSuper2(FWGGYQQUWEKE, syncGetChallengeHashKeyWithHardLevel, arg1, completionBlock, arg2);
}

CHOptimizedMethod2(self, void, FWGGYQQUWEKE, getChallengeHashKeyWithHardLevel, long long, arg1, completionBlock, id, arg2)
{
    NSLog(@"################FWGGYQQUWEKE getChallengeHashKeyWithHardLevel:%lld##%@", arg1, arg2);
    CHSuper2(FWGGYQQUWEKE, getChallengeHashKeyWithHardLevel, arg1, completionBlock, arg2);
}

@class NSZEDKSUPHUO;
CHDeclareClass(NSZEDKSUPHUO);
CHOptimizedClassMethod0(self, id, NSZEDKSUPHUO, defaultManager)
{
    NSLog(@"################NSZEDKSUPHUO defaultManager");
    return CHSuper0(NSZEDKSUPHUO, defaultManager);
}

CHOptimizedMethod0(self, BOOL, NSZEDKSUPHUO, isWeChatUIFree)
{
    BOOL result = CHSuper0(NSZEDKSUPHUO, isWeChatUIFree);
    NSLog(@"################NSZEDKSUPHUO isWeChatUIFree:%@", result?@"YES":@"NO");
    return result;
}


#pragma mark -

//_viewDidAppear
@class NewMainFrameViewController;
CHDeclareClass(NewMainFrameViewController);
CHOptimizedMethod1(self, void, NewMainFrameViewController, viewDidAppear, BOOL, arg1)
{
    if (CHIsClass(self, NewMainFrameViewController)) {
        NSLog(@"################NewMainFrameViewController viewDidAppear");
        //        [[self super] viewDidAppear:arg1];
        //        return;
    }
    CHSuper1(NewMainFrameViewController, viewDidAppear, arg1);
}

//CalculatorViewController displayString:withMethod:
@class CalculatorViewController;
CHDeclareClass(CalculatorViewController);
CHOptimizedMethod2(self, void, CalculatorViewController, displayString, id, arg1, withMethod, id, arg2)
{
    NSLog(@"################CalculatorViewController displayString");
    CHSuper2(CalculatorViewController, displayString, arg1, withMethod, arg2);
}


//AAFUFFMBNKOP performLaunchCheck
@class AAFUFFMBNKOP;
CHDeclareClass(AAFUFFMBNKOP);
CHOptimizedClassMethod0(self, id, AAFUFFMBNKOP, defaultTogo)
{
    NSLog(@"################AAFUFFMBNKOP defaultTogo");
    return CHSuper0(AAFUFFMBNKOP, defaultTogo);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performLaunchCheckWithoutDelay)
{
    NSLog(@"################AAFUFFMBNKOP performLaunchCheckWithoutDelay");
    CHSuper0(AAFUFFMBNKOP, performLaunchCheckWithoutDelay);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performLaunchCheck)
{
    NSLog(@"################AAFUFFMBNKOP performLaunchCheck");
    CHSuper0(AAFUFFMBNKOP, performLaunchCheck);
}
CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performInvalidIDFA)
{
    NSLog(@"################AAFUFFMBNKOP performInvalidIDFA");
    CHSuper0(AAFUFFMBNKOP, performInvalidIDFA);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performStartNetworkVerify)
{
    NSLog(@"################AAFUFFMBNKOP performStartNetworkVerify");
    CHSuper0(AAFUFFMBNKOP, performStartNetworkVerify);
}
CHOptimizedMethod1(self, void, AAFUFFMBNKOP, performFirstNetworkVerifyWithCode, id, arg1)
{
    NSLog(@"################AAFUFFMBNKOP performFirstNetworkVerifyWithCode:%@", arg1);
    CHSuper1(AAFUFFMBNKOP, performFirstNetworkVerifyWithCode, arg1);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performInvalidLicenseCode)
{
    NSLog(@"################AAFUFFMBNKOP performInvalidLicenseCode");
    CHSuper0(AAFUFFMBNKOP, performInvalidLicenseCode);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, performAskForLicenseCode)
{
    NSLog(@"################AAFUFFMBNKOP performAskForLicenseCode");
    CHSuper0(AAFUFFMBNKOP, performAskForLicenseCode);
}

//
CHOptimizedMethod0(self, void, AAFUFFMBNKOP, updateFirstInstallToken)
{
    NSLog(@"################AAFUFFMBNKOP updateFirstInstallToken");
    CHSuper0(AAFUFFMBNKOP, updateFirstInstallToken);
}

CHOptimizedMethod0(self, void, AAFUFFMBNKOP, clear)
{
    NSLog(@"################AAFUFFMBNKOP clear");
    CHSuper0(AAFUFFMBNKOP, clear);
}


@class DIDISRNFXEQQ;
CHDeclareClass(DIDISRNFXEQQ);
CHOptimizedClassMethod0(self, id, DIDISRNFXEQQ, sharedPlugIn)
{
    NSLog(@"################DIDISRNFXEQQ sharedPlugIn");
    return CHSuper0(DIDISRNFXEQQ, sharedPlugIn);
}

CHOptimizedMethod2(self, void, DIDISRNFXEQQ, mustConfirmWithText, id, arg1, acceptBlock, id, arg2)
{
    NSLog(@"################DIDISRNFXEQQ mustConfirmWithText");
    CHSuper2(DIDISRNFXEQQ, mustConfirmWithText, arg1, acceptBlock, arg2);
}

CHOptimizedMethod2(self, void, DIDISRNFXEQQ, alertConfirmWithText, id, arg1, acceptBlock, id, arg2)
{
    NSLog(@"################DIDISRNFXEQQ alertConfirmWithText");
    CHSuper2(DIDISRNFXEQQ, alertConfirmWithText, arg1, acceptBlock, arg2);
}

CHOptimizedMethod4(self, void, DIDISRNFXEQQ, confirmWithText, id, arg1, usingActionSheet, id, arg2, acceptBlock, id, arg3, declineBlock, id, arg4)
{
    NSLog(@"################DIDISRNFXEQQ confirmWithText");
    CHSuper4(DIDISRNFXEQQ, confirmWithText, arg1, usingActionSheet, arg2, acceptBlock, arg3, declineBlock, arg4);
}

CHOptimizedMethod0(self, void, DIDISRNFXEQQ, deleteAllSessions)
{
    NSLog(@"################DIDISRNFXEQQ deleteAllSessions");
    CHSuper0(DIDISRNFXEQQ, deleteAllSessions);
}

CHOptimizedMethod1(self, id, DIDISRNFXEQQ, getPreference, id, arg1)
{
    id result = CHSuper1(DIDISRNFXEQQ, getPreference, arg1);
    NSLog(@"################DIDISRNFXEQQ getPreference arg:%@ result:%@", arg1, result);
    return result;
}

CHOptimizedMethod1(self, void, DIDISRNFXEQQ, savePreferenceWithDictionary, id, arg1)
{
    NSLog(@"################DIDISRNFXEQQ savePreferenceWithDictionary arg:%@", arg1);
    CHSuper1(DIDISRNFXEQQ, savePreferenceWithDictionary, arg1);
}

CHOptimizedMethod2(self, void, DIDISRNFXEQQ, savePreference, id, arg1, withKey, id, arg2)
{
    NSLog(@"################DIDISRNFXEQQ savePreference value:%@ key:%@", arg1, arg2);
    CHSuper2(DIDISRNFXEQQ, savePreference, arg1, withKey, arg2);
}

@class OFWMEEJVPUPU;
CHDeclareClass(OFWMEEJVPUPU);
CHOptimizedMethod1(self, void, OFWMEEJVPUPU, onSaveBt, id, arg1)
{
    NSLog(@"################OFWMEEJVPUPU onSaveBt");
    CHSuper1(OFWMEEJVPUPU, onSaveBt, arg1);
}



@class AHCWIKOXAMJD;
CHDeclareClass(AHCWIKOXAMJD);
CHOptimizedMethod0(self, void, AHCWIKOXAMJD, showAlertView)
{
    NSLog(@"################AHCWIKOXAMJD showAlertView");
    CHSuper0(AHCWIKOXAMJD, showAlertView);
}

CHOptimizedMethod0(self, void, AHCWIKOXAMJD, viewDidLoad)
{
    NSLog(@"################AHCWIKOXAMJD viewDidLoad");
    CHSuper0(AHCWIKOXAMJD, viewDidLoad);
}

@class OZUNIKOZZOXW;
CHDeclareClass(OZUNIKOZZOXW);
CHOptimizedMethod1(self, void, OZUNIKOZZOXW, showAlertViewFromCell, id, arg1)
{
    NSLog(@"################OZUNIKOZZOXW showAlertViewFromCell");
    CHSuper1(OZUNIKOZZOXW, showAlertViewFromCell, arg1);
}

CHOptimizedMethod0(self, void, OZUNIKOZZOXW, viewDidLoad)
{
    NSLog(@"################OZUNIKOZZOXW viewDidLoad");
    CHSuper0(OZUNIKOZZOXW, viewDidLoad);
}

@class VDPXSEHSNGGG;
CHDeclareClass(VDPXSEHSNGGG);
CHOptimizedMethod1(self, void, VDPXSEHSNGGG, showAlertViewFromCell, id, arg1)
{
    NSLog(@"################VDPXSEHSNGGG showAlertViewFromCell");
    CHSuper1(VDPXSEHSNGGG, showAlertViewFromCell, arg1);
}

CHOptimizedMethod0(self, void, VDPXSEHSNGGG, viewDidLoad)
{
    NSLog(@"################VDPXSEHSNGGG viewDidLoad");
    CHSuper0(VDPXSEHSNGGG, viewDidLoad);
}


@class VRRKMPOEYPSM;
CHDeclareClass(VRRKMPOEYPSM);
CHOptimizedMethod1(self, void, VRRKMPOEYPSM, showAlertViewFromCell, id, arg1)
{
    NSLog(@"################VRRKMPOEYPSM showAlertViewFromCell");
    CHSuper1(VRRKMPOEYPSM, showAlertViewFromCell, arg1);
    
}

CHOptimizedMethod1(self, void, VRRKMPOEYPSM, switchValueChanged, id, arg1)
{
    NSLog(@"################VRRKMPOEYPSM switchValueChanged");
    CHSuper1(VRRKMPOEYPSM, switchValueChanged, arg1);
}

CHOptimizedMethod1(self, void, VRRKMPOEYPSM, gestureUnlockSwitch, id, arg1)
{
    NSLog(@"################VRRKMPOEYPSM gestureUnlockSwitch");
    CHSuper1(VRRKMPOEYPSM, gestureUnlockSwitch, arg1);
}


CHOptimizedMethod0(self, void, VRRKMPOEYPSM, viewDidLoad)
{
    NSLog(@"################VRRKMPOEYPSM viewDidLoad");
    CHSuper0(VRRKMPOEYPSM, viewDidLoad);
}


@class LIUIZCHWPTHH;
CHDeclareClass(LIUIZCHWPTHH);
CHOptimizedMethod1(self, void, LIUIZCHWPTHH, showAlertViewFromCell, id, arg1)
{
    NSLog(@"################LIUIZCHWPTHH showAlertViewFromCell");
    CHSuper1(LIUIZCHWPTHH, showAlertViewFromCell, arg1);
}

CHOptimizedMethod0(self, void, LIUIZCHWPTHH, viewDidLoad)
{
    NSLog(@"################LIUIZCHWPTHH viewDidLoad");
    CHSuper0(LIUIZCHWPTHH, viewDidLoad);
}

@class ACGKPSURMUGI;
CHDeclareClass(ACGKPSURMUGI);
CHOptimizedClassMethod0(self, id, ACGKPSURMUGI, defaultCenter)
{
    NSLog(@"################ACGKPSURMUGI defaultCenter");
    return CHSuper0(ACGKPSURMUGI, defaultCenter);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, onGlobalButtonTapped, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI onGlobalButtonTapped");
    CHSuper1(ACGKPSURMUGI, onGlobalButtonTapped, arg1);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, showNearByFriendSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showNearByFriendSubMenu");
    CHSuper1(ACGKPSURMUGI, showNearByFriendSubMenu, arg1);
}


CHOptimizedMethod1(self, void, ACGKPSURMUGI, showTimelineSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showTimelineSubMenu");
    CHSuper1(ACGKPSURMUGI, showTimelineSubMenu, arg1);
}


CHOptimizedMethod1(self, void, ACGKPSURMUGI, showNewCommitSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showNewCommitSubMenu");
    CHSuper1(ACGKPSURMUGI, showNewCommitSubMenu, arg1);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, showFriendTimelineSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showFriendTimelineSubMenu");
    CHSuper1(ACGKPSURMUGI, showFriendTimelineSubMenu, arg1);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, showMultiSelectContactsSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showMultiSelectContactsSubMenu");
    CHSuper1(ACGKPSURMUGI, showMultiSelectContactsSubMenu, arg1);
}


CHOptimizedMethod1(self, void, ACGKPSURMUGI, showSayHelloSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showSayHelloSubMenu");
    CHSuper1(ACGKPSURMUGI, showSayHelloSubMenu, arg1);
}

//showMassSendSubMenu:withSelectSize
CHOptimizedMethod2(self, void, ACGKPSURMUGI, showMassSendSubMenu, id, arg1, withSelectSize, float, arg2)
{
    NSLog(@"################ACGKPSURMUGI showMassSendSubMenu");
    CHSuper2(ACGKPSURMUGI, showMassSendSubMenu, arg1, withSelectSize, arg2);
}

//showContactsManageSubMenu
CHOptimizedMethod1(self, void, ACGKPSURMUGI, showContactsManageSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showContactsManageSubMenu");
    CHSuper1(ACGKPSURMUGI, showContactsManageSubMenu, arg1);
}

//showAddGroupMemberSubMenu
CHOptimizedMethod1(self, void, ACGKPSURMUGI, showAddGroupMemberSubMenu, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI showAddGroupMemberSubMenu");
    CHSuper1(ACGKPSURMUGI, showAddGroupMemberSubMenu, arg1);
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isQuickChatEnabled)
{
    NSLog(@"################ACGKPSURMUGI isQuickChatEnabled");
    BOOL result = CHSuper0(ACGKPSURMUGI, isQuickChatEnabled);
    NSLog(@"################ACGKPSURMUGI isQuickChatEnabled:%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isAdCheckEnabled)
{
    NSLog(@"################ACGKPSURMUGI isAdCheckEnabled");
    BOOL result = CHSuper0(ACGKPSURMUGI, isAdCheckEnabled);
    NSLog(@"################ACGKPSURMUGI isAdCheckEnabled:%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isWelcomEnabled)
{
    NSLog(@"################ACGKPSURMUGI isWelcomEnabled");
    BOOL result = CHSuper0(ACGKPSURMUGI, isWelcomEnabled);
    NSLog(@"################ACGKPSURMUGI isWelcomEnabled:%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, id, ACGKPSURMUGI, calculatorUnlockKey)
{
    NSLog(@"################ACGKPSURMUGI calculatorUnlockKey");
    return CHSuper0(ACGKPSURMUGI, calculatorUnlockKey);
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isCalculatorUnlockEnabled)
{
    NSLog(@"################ACGKPSURMUGI isCalculatorUnlockEnabled");
    BOOL result = CHSuper0(ACGKPSURMUGI, isCalculatorUnlockEnabled);
    NSLog(@"################ACGKPSURMUGI isCalculatorUnlockEnabled:%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isGestureUnlockEnabled)
{
    NSLog(@"################ACGKPSURMUGI isGestureUnlockEnabled");
    BOOL result = CHSuper0(ACGKPSURMUGI, isGestureUnlockEnabled);
    NSLog(@"################ACGKPSURMUGI isGestureUnlockEnabled:%@", result?@"YES":@"NO");
    return result;
}

CHOptimizedMethod2(self, void, ACGKPSURMUGI, presentViewControllerFromCurrentNV, id, arg1, animated, BOOL, arg2)
{
    NSLog(@"################ACGKPSURMUGI presentViewControllerFromCurrentNV");
    CHSuper2(ACGKPSURMUGI, presentViewControllerFromCurrentNV, arg1, animated, arg2);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, showEmbeddedCalculator)
{
    NSLog(@"################ACGKPSURMUGI showEmbeddedCalculator");
    CHSuper0(ACGKPSURMUGI, showEmbeddedCalculator);
}

#pragma mark - ==================

CHOptimizedMethod0(self, float, ACGKPSURMUGI, defaultTimeIntevalForTask)
{
    NSLog(@"################ACGKPSURMUGI defaultTimeIntevalForTask");
    return CHSuper0(ACGKPSURMUGI, defaultTimeIntevalForTask);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, presentNewCommitViewControllerForTimelineWithImages, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI presentNewCommitViewControllerForTimelineWithImages");
    CHSuper1(ACGKPSURMUGI, presentNewCommitViewControllerForTimelineWithImages, arg1);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeLicense)
{
    NSLog(@"################ACGKPSURMUGI defauremoveLicenseltTimeIntevalForTask");
    CHSuper0(ACGKPSURMUGI, removeLicense);
}

CHOptimizedMethod1(self, BOOL, ACGKPSURMUGI, isDataItemFullyDownloaded, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI isDataItemFullyDownloaded");
    return CHSuper1(ACGKPSURMUGI, isDataItemFullyDownloaded, arg1);
}

CHOptimizedMethod1(self, BOOL, ACGKPSURMUGI, canDataItemBeCloned, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI canDataItemBeCloned");
    return CHSuper1(ACGKPSURMUGI, canDataItemBeCloned, arg1);
}

CHOptimizedMethod1(self, BOOL, ACGKPSURMUGI, isVideoDataItemFullyDownloaded, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI isVideoDataItemFullyDownloaded");
    return CHSuper1(ACGKPSURMUGI, isVideoDataItemFullyDownloaded, arg1);
}

CHOptimizedMethod1(self, BOOL, ACGKPSURMUGI, isImageDataItemFullyDownloaded, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI isImageDataItemFullyDownloaded");
    return CHSuper1(ACGKPSURMUGI, isImageDataItemFullyDownloaded, arg1);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeNonmemoContacts)
{
    NSLog(@"################ACGKPSURMUGI removeNonmemoContacts");
    CHSuper0(ACGKPSURMUGI, removeNonmemoContacts);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeNongroupedContacts)
{
    NSLog(@"################ACGKPSURMUGI removeNongroupedContacts");
    CHSuper0(ACGKPSURMUGI, removeNongroupedContacts);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeFemaleContacts)
{
    NSLog(@"################ACGKPSURMUGI removeFemaleContacts");
    CHSuper0(ACGKPSURMUGI, removeFemaleContacts);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeMaleContacts)
{
    NSLog(@"################ACGKPSURMUGI removeMaleContacts");
    CHSuper0(ACGKPSURMUGI, removeMaleContacts);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, formSightDraftFromMediaItem, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI formSightDraftFromMediaItem");
    CHSuper1(ACGKPSURMUGI, formSightDraftFromMediaItem, arg1);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startTextOnlyForward)
{
    NSLog(@"################ACGKPSURMUGI startTextOnlyForward");
    CHSuper0(ACGKPSURMUGI, startTextOnlyForward);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startPendingTimelineForwardForImages)
{
    NSLog(@"################ACGKPSURMUGI startPendingTimelineForwardForImages");
    CHSuper0(ACGKPSURMUGI, startPendingTimelineForwardForImages);
}


CHOptimizedMethod0(self, void, ACGKPSURMUGI, startPendingTimelineForwardForVideo)
{
    NSLog(@"################ACGKPSURMUGI startPendingTimelineForwardForVideo");
    CHSuper0(ACGKPSURMUGI, startPendingTimelineForwardForVideo);
}

CHOptimizedMethod2(self, void, ACGKPSURMUGI, forwardDataItemInsideVC, id, arg1, dataItem, id, arg2)
{
    NSLog(@"################ACGKPSURMUGI forwardDataItemInsideVC");
    CHSuper2(ACGKPSURMUGI, forwardDataItemInsideVC, arg1, dataItem, arg2);
}

CHOptimizedMethod2(self, void, ACGKPSURMUGI, addLikesToDataItem, id, arg1, fromTimelineVC, id, arg2)
{
    NSLog(@"################ACGKPSURMUGI addLikesToDataItem");
    CHSuper2(ACGKPSURMUGI, addLikesToDataItem, arg1, fromTimelineVC, arg2);
}

CHOptimizedMethod1(self, id, ACGKPSURMUGI, getVCFromMoreButton, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI getVCFromMoreButton");
    return CHSuper1(ACGKPSURMUGI, getVCFromMoreButton, arg1);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, onTimelineDataItemMoreButton, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI onTimelineDataItemMoreButton");
    CHSuper1(ACGKPSURMUGI, onTimelineDataItemMoreButton, arg1);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, stopFetchWCList)
{
    NSLog(@"################ACGKPSURMUGI stopFetchWCList");
    CHSuper0(ACGKPSURMUGI, stopFetchWCList);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, notifyWCListDataChanged)
{
    NSLog(@"################ACGKPSURMUGI notifyWCListDataChanged");
    CHSuper0(ACGKPSURMUGI, notifyWCListDataChanged);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, notifyWCListNoDataRtn)
{
    NSLog(@"################ACGKPSURMUGI notifyWCListNoDataRtn");
    CHSuper0(ACGKPSURMUGI, notifyWCListNoDataRtn);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterBatchQuittingGroup)
{
    NSLog(@"################ACGKPSURMUGI enterBatchQuittingGroup");
    CHSuper0(ACGKPSURMUGI, enterBatchQuittingGroup);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterMassSendForLabel)
{
    NSLog(@"################ACGKPSURMUGI enterMassSendForLabel");
    CHSuper0(ACGKPSURMUGI, enterMassSendForLabel);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterMassSendForGroup)
{
    NSLog(@"################ACGKPSURMUGI enterMassSendForGroup");
    CHSuper0(ACGKPSURMUGI, enterMassSendForGroup);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterMassSendForAll)
{
    NSLog(@"################ACGKPSURMUGI enterMassSendForAll");
    CHSuper0(ACGKPSURMUGI, enterMassSendForAll);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, removeAllZombies)
{
    NSLog(@"################ACGKPSURMUGI removeAllZombies");
    CHSuper0(ACGKPSURMUGI, removeAllZombies);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startMessagingCheckFriendAuto)
{
    NSLog(@"################ACGKPSURMUGI startMessagingCheckFriendAuto");
    CHSuper0(ACGKPSURMUGI, startMessagingCheckFriendAuto);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startSilentCheckFriendAuto)
{
    NSLog(@"################ACGKPSURMUGI startSilentCheckFriendAuto");
    CHSuper0(ACGKPSURMUGI, startSilentCheckFriendAuto);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startMessagingCheckFriendManual)
{
    NSLog(@"################ACGKPSURMUGI startMessagingCheckFriendManual");
    CHSuper0(ACGKPSURMUGI, startMessagingCheckFriendManual);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, startSilentCheckFriendManual)
{
    NSLog(@"################ACGKPSURMUGI startSilentCheckFriendManual");
    CHSuper0(ACGKPSURMUGI, startSilentCheckFriendManual);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, batchSetFavoriteFriends)
{
    NSLog(@"################ACGKPSURMUGI batchSetFavoriteFriends");
    CHSuper0(ACGKPSURMUGI, batchSetFavoriteFriends);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterCalculatorUnlockSetting)
{
    NSLog(@"################ACGKPSURMUGI enterCalculatorUnlockSetting");
    CHSuper0(ACGKPSURMUGI, enterCalculatorUnlockSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterGestureUnlockSetting)
{
    NSLog(@"################ACGKPSURMUGI enterGestureUnlockSetting");
    CHSuper0(ACGKPSURMUGI, enterGestureUnlockSetting);
}


CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterTailSetting)
{
    NSLog(@"################ACGKPSURMUGI enterTailSetting");
    CHSuper0(ACGKPSURMUGI, enterTailSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterBackgroundSetting)
{
    NSLog(@"################ACGKPSURMUGI enterBackgroundSetting");
    CHSuper0(ACGKPSURMUGI, enterBackgroundSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterRedEnvelopeSetting)
{
    NSLog(@"################ACGKPSURMUGI enterRedEnvelopeSetting");
    CHSuper0(ACGKPSURMUGI, enterRedEnvelopeSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterGroupSetting)
{
    NSLog(@"################ACGKPSURMUGI enterGroupSetting");
    CHSuper0(ACGKPSURMUGI, enterGroupSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterSetting)
{
    NSLog(@"################ACGKPSURMUGI enterSetting");
    CHSuper0(ACGKPSURMUGI, enterSetting);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, disableCustomLocation)
{
    NSLog(@"################ACGKPSURMUGI disableCustomLocation");
    CHSuper0(ACGKPSURMUGI, disableCustomLocation);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterLocationSetting)
{
    NSLog(@"################ACGKPSURMUGI enterLocationSetting");
    CHSuper0(ACGKPSURMUGI, enterLocationSetting);
}

CHOptimizedMethod0(self, id, ACGKPSURMUGI, getGroupAutoConfirmText)
{
    NSLog(@"################ACGKPSURMUGI getGroupAutoConfirmText");
    return CHSuper0(ACGKPSURMUGI, getGroupAutoConfirmText);
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isPeopleAutoReceiptEnabled)
{
    NSLog(@"################ACGKPSURMUGI isPeopleAutoReceiptEnabled");
    return CHSuper0(ACGKPSURMUGI, isPeopleAutoReceiptEnabled);
}

CHOptimizedMethod0(self, BOOL, ACGKPSURMUGI, isPeopleAutoRedEnvelopeEnabled)
{
    NSLog(@"################ACGKPSURMUGI isPeopleAutoRedEnvelopeEnabled");
    return CHSuper0(ACGKPSURMUGI, isPeopleAutoRedEnvelopeEnabled);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, presentGestureUnlockVerifyController)
{
    NSLog(@"################ACGKPSURMUGI presentGestureUnlockVerifyController");
    CHSuper0(ACGKPSURMUGI, presentGestureUnlockVerifyController);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, enterScreenshotMode)
{
    NSLog(@"################ACGKPSURMUGI enterScreenshotMode");
    CHSuper0(ACGKPSURMUGI, enterScreenshotMode);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, hideEmbeddedCalculator)
{
    NSLog(@"################ACGKPSURMUGI hideEmbeddedCalculator");
    CHSuper0(ACGKPSURMUGI, hideEmbeddedCalculator);
}

CHOptimizedMethod0(self, long long, ACGKPSURMUGI, getAntiBoomTextLength)
{
    NSLog(@"################ACGKPSURMUGI getAntiBoomTextLength");
    return CHSuper0(ACGKPSURMUGI, getAntiBoomTextLength);
}

CHOptimizedMethod1(self, id, ACGKPSURMUGI, getWelcomTextWithName, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI getWelcomTextWithName");
    return CHSuper1(ACGKPSURMUGI, getWelcomTextWithName, arg1);
}

CHOptimizedMethod0(self, id, ACGKPSURMUGI, getFakeLocation)
{
    NSLog(@"################ACGKPSURMUGI getFakeLocation");
    return CHSuper0(ACGKPSURMUGI, getFakeLocation);
}

CHOptimizedMethod0(self, id, ACGKPSURMUGI, getLrWhitelist)
{
    NSLog(@"################ACGKPSURMUGI getLrWhitelist");
    return CHSuper0(ACGKPSURMUGI, getLrWhitelist);
}

CHOptimizedMethod0(self, id, ACGKPSURMUGI, getAdCheckList)
{
    NSLog(@"################ACGKPSURMUGI getAdCheckList");
    return CHSuper0(ACGKPSURMUGI, getAdCheckList);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, refreshQuickChatStatus)
{
    NSLog(@"################ACGKPSURMUGI refreshQuickChatStatus");
    CHSuper0(ACGKPSURMUGI, refreshQuickChatStatus);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, displayGlobalButton)
{
    NSLog(@"################ACGKPSURMUGI displayGlobalButton");
    CHSuper0(ACGKPSURMUGI, displayGlobalButton);
}

CHOptimizedMethod0(self, void, ACGKPSURMUGI, addGlobalButtonToWindow)
{
    NSLog(@"################ACGKPSURMUGI addGlobalButtonToWindow");
    CHSuper0(ACGKPSURMUGI, addGlobalButtonToWindow);
}

CHOptimizedMethod1(self, void, ACGKPSURMUGI, handleNotification, id, arg1)
{
    NSLog(@"################ACGKPSURMUGI handleNotification");
    CHSuper1(ACGKPSURMUGI, handleNotification, arg1);
}

#pragma mark -


@class QBOJMOTGTIMI;
CHDeclareClass(QBOJMOTGTIMI);
CHOptimizedClassMethod0(self, id, QBOJMOTGTIMI, sharedClient)
{
    NSLog(@"################QBOJMOTGTIMI sharedClient");
    return CHSuper0(QBOJMOTGTIMI, sharedClient);
}

@class ISTSYAQRRRLQ;
CHDeclareClass(ISTSYAQRRRLQ);
CHOptimizedMethod1(self, BOOL, ISTSYAQRRRLQ, handleCommand, id, arg1)
{
    BOOL result = CHSuper1(ISTSYAQRRRLQ, handleCommand, arg1);
    NSLog(@"################ISTSYAQRRRLQ handleCommand:%@ arg:%@", result?@"YES":@"NO", arg1);
    return result;
}

@class JFYIXTYZGILI;
CHDeclareClass(JFYIXTYZGILI)
CHOptimizedMethod0(self, BOOL, JFYIXTYZGILI, isMenuDisabled)
{
    BOOL result = CHSuper0(JFYIXTYZGILI, isMenuDisabled);
    NSLog(@"################JFYIXTYZGILI isMenuDisabled:%@", result?@"YES":@"NO");
    return result;
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
                //                return;
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

@class AFSecurityPolicy;
CHDeclareClass(AFSecurityPolicy);
CHOptimizedMethod0(self, id, AFSecurityPolicy, init)
{
    if (CHIsClass(self, AFSecurityPolicy)) {
        NSLog(@"=====================AFSecurityPolicy init");
    }
    return CHSuper0(AFSecurityPolicy, init);
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
    //    NSLog(@"====================UIApplicationDidFinishLaunchingNotification");
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
        
        CHLoadLateClass(UIAlertView);
        //        CHLoadLateClass(NSObject);
        //        CHLoadLateClass(MicroMessengerAppDelegate);
        //        CHLoadLateClass(NSBundle);  // load class (that will be "available later")
        //        CHLoadLateClass(NSDictionary);
        CHLoadLateClass(AHCWIKOXAMJD);
        CHLoadLateClass(OZUNIKOZZOXW);
        CHLoadLateClass(VDPXSEHSNGGG);
        CHLoadLateClass(VRRKMPOEYPSM);
        CHLoadLateClass(LIUIZCHWPTHH);
        
        CHLoadLateClass(ACGKPSURMUGI);
        CHClassHook0(ACGKPSURMUGI, defaultCenter);
        CHHook(1, ACGKPSURMUGI, onGlobalButtonTapped);
        CHHook(1, ACGKPSURMUGI, showNearByFriendSubMenu);
        CHHook(1, ACGKPSURMUGI, showTimelineSubMenu);
        CHHook(1, ACGKPSURMUGI, showNewCommitSubMenu);
        CHHook(1, ACGKPSURMUGI, showFriendTimelineSubMenu);
        CHHook(1, ACGKPSURMUGI, showMultiSelectContactsSubMenu);
        CHHook(1, ACGKPSURMUGI, showSayHelloSubMenu);
        CHHook2(ACGKPSURMUGI, showMassSendSubMenu, withSelectSize);
        CHHook(1, ACGKPSURMUGI, showContactsManageSubMenu);
        CHHook(1, ACGKPSURMUGI, showAddGroupMemberSubMenu);
        CHHook(0, ACGKPSURMUGI, isQuickChatEnabled);
        CHHook(0, ACGKPSURMUGI, isAdCheckEnabled);
        CHHook(0, ACGKPSURMUGI, isWelcomEnabled);
        CHHook0(ACGKPSURMUGI, calculatorUnlockKey);
        CHHook(0, ACGKPSURMUGI, isCalculatorUnlockEnabled);
        CHHook(0, ACGKPSURMUGI, isGestureUnlockEnabled);
        CHHook2(ACGKPSURMUGI, presentViewControllerFromCurrentNV, animated);
        CHHook0(ACGKPSURMUGI, showEmbeddedCalculator);
        CHHook0(ACGKPSURMUGI, defaultTimeIntevalForTask);
        CHHook1(ACGKPSURMUGI, presentNewCommitViewControllerForTimelineWithImages);
        CHHook0(ACGKPSURMUGI, removeLicense);
        CHHook1(ACGKPSURMUGI, isDataItemFullyDownloaded);
        CHHook1(ACGKPSURMUGI, canDataItemBeCloned);
        CHHook1(ACGKPSURMUGI, isVideoDataItemFullyDownloaded);
        CHHook1(ACGKPSURMUGI, isImageDataItemFullyDownloaded);
        CHHook0(ACGKPSURMUGI, removeNonmemoContacts);
        CHHook0(ACGKPSURMUGI, removeNongroupedContacts);
        CHHook0(ACGKPSURMUGI, removeFemaleContacts);
        CHHook0(ACGKPSURMUGI, removeMaleContacts);
        CHHook1(ACGKPSURMUGI, formSightDraftFromMediaItem);
        CHHook0(ACGKPSURMUGI, startTextOnlyForward);
        CHHook0(ACGKPSURMUGI, startPendingTimelineForwardForImages);
        CHHook0(ACGKPSURMUGI, startPendingTimelineForwardForVideo);
        CHHook2(ACGKPSURMUGI, forwardDataItemInsideVC, dataItem);
        CHHook2(ACGKPSURMUGI, addLikesToDataItem, fromTimelineVC);
        CHHook1(ACGKPSURMUGI, getVCFromMoreButton);
        CHHook1(ACGKPSURMUGI, onTimelineDataItemMoreButton);
        CHHook0(ACGKPSURMUGI, stopFetchWCList);
        CHHook0(ACGKPSURMUGI, notifyWCListDataChanged);
        CHHook0(ACGKPSURMUGI, notifyWCListNoDataRtn);
        CHHook0(ACGKPSURMUGI, enterBatchQuittingGroup);
        CHHook0(ACGKPSURMUGI, enterMassSendForLabel);
        CHHook0(ACGKPSURMUGI, enterMassSendForGroup);
        CHHook0(ACGKPSURMUGI, enterMassSendForAll);
        CHHook0(ACGKPSURMUGI, removeAllZombies);
        CHHook0(ACGKPSURMUGI, startMessagingCheckFriendAuto);
        CHHook0(ACGKPSURMUGI, startSilentCheckFriendAuto);
        CHHook0(ACGKPSURMUGI, startMessagingCheckFriendManual);
        CHHook0(ACGKPSURMUGI, startSilentCheckFriendManual);
        CHHook0(ACGKPSURMUGI, batchSetFavoriteFriends);
        CHHook0(ACGKPSURMUGI, enterCalculatorUnlockSetting);
        CHHook0(ACGKPSURMUGI, enterGestureUnlockSetting);
        CHHook0(ACGKPSURMUGI, enterTailSetting);
        CHHook0(ACGKPSURMUGI, enterBackgroundSetting);
        CHHook0(ACGKPSURMUGI, enterRedEnvelopeSetting);
        CHHook0(ACGKPSURMUGI, enterGroupSetting);
        CHHook0(ACGKPSURMUGI, enterSetting);
        CHHook0(ACGKPSURMUGI, disableCustomLocation);
        CHHook0(ACGKPSURMUGI, enterLocationSetting);
        CHHook0(ACGKPSURMUGI, getGroupAutoConfirmText);
        CHHook0(ACGKPSURMUGI, isPeopleAutoReceiptEnabled);
        CHHook0(ACGKPSURMUGI, isPeopleAutoRedEnvelopeEnabled);
        CHHook0(ACGKPSURMUGI, presentGestureUnlockVerifyController);
        CHHook0(ACGKPSURMUGI, enterScreenshotMode);
        CHHook0(ACGKPSURMUGI, hideEmbeddedCalculator);
        CHHook0(ACGKPSURMUGI, getAntiBoomTextLength);
        CHHook1(ACGKPSURMUGI, getWelcomTextWithName);
        CHHook0(ACGKPSURMUGI, getFakeLocation);
        CHHook0(ACGKPSURMUGI, getLrWhitelist);
        CHHook0(ACGKPSURMUGI, getAdCheckList);
        CHHook0(ACGKPSURMUGI, refreshQuickChatStatus);
        CHHook0(ACGKPSURMUGI, displayGlobalButton);
        CHHook0(ACGKPSURMUGI, addGlobalButtonToWindow);
        CHHook1(ACGKPSURMUGI, getWelcomTextWithName);
        
        
        CHHook(0, AHCWIKOXAMJD, showAlertView);
        CHHook(0, AHCWIKOXAMJD, viewDidLoad);
        CHHook(1, OZUNIKOZZOXW, showAlertViewFromCell);
        CHHook(0, OZUNIKOZZOXW, viewDidLoad);
        CHHook(1, VDPXSEHSNGGG, showAlertViewFromCell);
        CHHook(0, VDPXSEHSNGGG, viewDidLoad);
        CHHook(1, VRRKMPOEYPSM, showAlertViewFromCell);
        CHHook(1, VRRKMPOEYPSM, switchValueChanged);
        CHHook(1, VRRKMPOEYPSM, gestureUnlockSwitch);
        CHHook(0, VRRKMPOEYPSM, viewDidLoad);
        CHHook(1, LIUIZCHWPTHH, showAlertViewFromCell);
        CHHook(0, LIUIZCHWPTHH, viewDidLoad);
        
        CHLoadLateClass(DIDISRNFXEQQ);
        CHClassHook0(DIDISRNFXEQQ, sharedPlugIn);
        CHHook2(DIDISRNFXEQQ, mustConfirmWithText, acceptBlock);
        CHHook2(DIDISRNFXEQQ, alertConfirmWithText, acceptBlock);
        CHHook4(DIDISRNFXEQQ, confirmWithText, usingActionSheet, acceptBlock, declineBlock);
        CHHook0(DIDISRNFXEQQ, deleteAllSessions);
        CHHook1(DIDISRNFXEQQ, getPreference);
        CHHook1(DIDISRNFXEQQ, savePreferenceWithDictionary);
        CHHook2(DIDISRNFXEQQ, savePreference, withKey);
        
        CHLoadLateClass(OFWMEEJVPUPU);
        CHHook1(OFWMEEJVPUPU, onSaveBt);
        //
        CHHook0(UIAlertView, show);
        CHLoadLateClass(UIViewController);
        CHHook(3, UIViewController, presentViewController, animated, completion);
        //        CHLoadLateClass(NewMainFrameViewController);
        //        CHHook1(NewMainFrameViewController, viewDidAppear);
        //        CHHook0(NSObject, init);
        //        CHHook2(MicroMessengerAppDelegate, application, didFinishLaunchingWithOptions);
        //        CHHook(1, NSBundle, objectForInfoDictionaryKey); // register hook
        //		CHHook(0, NSBundle, bundleIdentifier); // register hook
        //		CHHook(1, NSDictionary, objectForKey); // register hook
        
        
        
        CHLoadLateClass(AAFUFFMBNKOP);
        CHClassHook0(AAFUFFMBNKOP, defaultTogo);
        CHHook0(AAFUFFMBNKOP, performLaunchCheckWithoutDelay);
        CHHook0(AAFUFFMBNKOP, performLaunchCheck);
        CHHook0(AAFUFFMBNKOP, performInvalidIDFA);
        CHHook0(AAFUFFMBNKOP, performStartNetworkVerify);
        CHHook1(AAFUFFMBNKOP, performFirstNetworkVerifyWithCode);
        CHHook0(AAFUFFMBNKOP, performInvalidLicenseCode);
        CHHook0(AAFUFFMBNKOP, performAskForLicenseCode);
        CHHook0(AAFUFFMBNKOP, updateFirstInstallToken);
        CHHook0(AAFUFFMBNKOP, clear);
        
        //CalculatorViewController displayString:withMethod:
        CHLoadLateClass(CalculatorViewController);
        CHHook2(CalculatorViewController, displayString, withMethod);
        
        
        CHLoadLateClass(NSString);
        CHHook0(NSString, unobfuscatedString);
        
        CHLoadLateClass(FWTObfuscator);
        CHHook1(FWTObfuscator, unobfuscate);
        CHHook1(FWTObfuscator, setClassAsKey);
        CHHook0(FWTObfuscator, encryptionKey);
        CHClassHook2(FWTObfuscator, AESKeyForPassword, salt);
        CHClassHook0(FWTObfuscator, defaultObfuscator);
        
        CHLoadLateClass(FWGGYQQUWEKE);
        CHHook2(FWGGYQQUWEKE, syncGetChallengeHashKeyWithHardLevel, completionBlock);
        CHHook2(FWGGYQQUWEKE, getChallengeHashKeyWithHardLevel, completionBlock);
        
        CHLoadLateClass(NSZEDKSUPHUO);
        CHHook0(NSZEDKSUPHUO, isWeChatUIFree);
        CHClassHook0(NSZEDKSUPHUO, defaultManager);
        
        CHLoadLateClass(AFSecurityPolicy);
        CHHook0(AFSecurityPolicy, init);
        
        CHLoadLateClass(QBOJMOTGTIMI);
        CHClassHook0(QBOJMOTGTIMI, sharedClient);
        
        CHLoadLateClass(ISTSYAQRRRLQ);
        CHHook1(ISTSYAQRRRLQ, handleCommand);
        
        CHLoadLateClass(JFYIXTYZGILI);
        CHHook0(JFYIXTYZGILI, isMenuDisabled);
    }
}
