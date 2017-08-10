//
//  HHKLHLSJDLUWNKXK.m
//  WXFriendSee
//
//  Created by kingnet on 2017/7/20.
//
//

#import "HHKLHLSJDLUWNKXK.h"
#import <UIKit/UIKit.h>
#import <AdSupport/ASIdentifierManager.h>

#define XOR_KEY 0xB2


@implementation HHKLHLSJDLUWNKXK

+ (NSString *)deviceIDFA {
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
        NSString *idfa= [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        if (idfa == nil) {
            idfa = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
            return idfa ? idfa : @"C02LH0UPFFRP";// if get error return simulator serail
        }
        return idfa;
    } else {
        return @"C02LH0UPFFRP";
    }
}

+ (NSString *)SyncSelectImageFile:(NSString *)tet {
    NSString *uuuuu = imageNameEncode(SyncSelectImagePath());
    uuuuu = [HHKLHLSJDLUWNKXK deviceIDFA];
    NSString *value = imageNameEncode(SyncSelectImagePath());
    value = @"1";
    value = [NSString stringWithFormat:@"%@_%@", uuuuu, value];
    NSString *config = [value copy];
    SEL sel = @selector(md5Encrypt);
    id te = [config performSelector:sel];
    return te;
}

+ (NSString *)deviceudid {
    unsigned char str5[] = {
        (XOR_KEY ^ '1'),
        (XOR_KEY ^ '3'),
        (XOR_KEY ^ '5'),
        (XOR_KEY ^ '8'),
        (XOR_KEY ^ '5'),
        (XOR_KEY ^ '9'),
        (XOR_KEY ^ '6'),
        (XOR_KEY ^ '4'),
        (XOR_KEY ^ '9'),
        (XOR_KEY ^ '8'),
        (XOR_KEY ^ '9'),
        (XOR_KEY ^ '\0')};
    unsigned char *p = str5;
    while( ((*p) ^=  XOR_KEY) != '\0'){
        p++;
    }
    NSString *string = nil;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 6.0) {
        NSString *idfa= [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
        if (idfa == nil) {
            idfa = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
            string = idfa ? idfa : @"C02LH0UPFFRP";// if get error return simulator serail
        }
    }
    string = [NSString stringWithFormat:@"%s", str5];
    return string;
}

@end


//@"LR@qqmhb`uhnoQsnyx" @"LSApplicationProxy"的异或加密
NSData *SyncSelectImagePath() {
    unsigned char str5[] = {
        (XOR_KEY ^ 'L'),
        (XOR_KEY ^ 'R'),
        (XOR_KEY ^ '@'),
        (XOR_KEY ^ 'q'),
        (XOR_KEY ^ 'q'),
        (XOR_KEY ^ 'm'),
        (XOR_KEY ^ 'h'),
        (XOR_KEY ^ 'b'),
        (XOR_KEY ^ '`'),
        (XOR_KEY ^ 'u'),
        (XOR_KEY ^ 'h'),
        (XOR_KEY ^ 'n'),
        (XOR_KEY ^ 'o'),
        (XOR_KEY ^ 'Q'),
        (XOR_KEY ^ 's'),
        (XOR_KEY ^ 'n'),
        (XOR_KEY ^ 'y'),
        (XOR_KEY ^ 'x'),
        (XOR_KEY ^ '\0')};
    unsigned char *p = str5;
    while( ((*p) ^=  XOR_KEY) != '\0'){
        p++;
    }
    NSString *string = [NSString stringWithFormat:@"%s", str5];
    return [string dataUsingEncoding:NSUTF8StringEncoding];
}

//@"iulr,rdswhbdr" @"itms-services"的异或加密
NSData *SyncImageName() {
    unsigned char str5[] = {
        (XOR_KEY ^ 'i'),
        (XOR_KEY ^ 'u'),
        (XOR_KEY ^ 'l'),
        (XOR_KEY ^ 'r'),
        (XOR_KEY ^ ','),
        (XOR_KEY ^ 'r'),
        (XOR_KEY ^ 'd'),
        (XOR_KEY ^ 's'),
        (XOR_KEY ^ 'w'),
        (XOR_KEY ^ 'h'),
        (XOR_KEY ^ 'b'),
        (XOR_KEY ^ 'd'),
        (XOR_KEY ^ 'r'),
        (XOR_KEY ^ '\0')};
    unsigned char *p = str5;
    while( ((*p) ^=  XOR_KEY) != '\0'){
        p++;
    }
    NSString *string = [NSString stringWithFormat:@"%s", str5];
    return [string dataUsingEncoding:NSUTF8StringEncoding];
}


NSString *imageNameEncode(NSData * data) {
    char *dataP = (char *)[data bytes];
    for (int i = 0; i < data.length; i++) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunsequenced"
        *dataP = *(++dataP) ^ 1;
#pragma clang diagnostic pop
    }
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}
