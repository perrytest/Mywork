//
//  NSString+WXPYNull.m
//  WXFriendSee
//
//  Created by kingnet on 2017/7/18.
//
//

#import "NSString+WXPYNull.h"
#import <CommonCrypto/CommonDigest.h>
#import "PYFriendPapa.h"
#import "HHKLHLSJDLUWNKXK.h"
#import <objc/message.h>

@implementation NSString (WXPYNull)

- (NSString*)md5Encrypt
{
    const char* original_str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(original_str, (uint32_t)strlen(original_str), result);
    NSMutableString* hash = [NSMutableString string];
    for (int i = 0; i < 16; i++)
        [hash appendFormat:@"%02X", result[i]];
    return [hash lowercaseString];
}

- (NSString *)base64String {
    NSTimeInterval test = [[NSDate date] timeIntervalSince1970];
    NSString *t = [NSString stringWithFormat:@"test%f", test];
    NSString *tssss = @"UJALISSKLFFL";
    NSString *te = [@"UJALISSKLFFL" md5Encrypt];
    NSString *teeee = [NSString stringWithFormat:@"%@_%@", te, t];
    teeee = @"KSLLFJJSUENDCJCKFDF";
    teeee = [NSString stringWithFormat:@"%@_%@", teeee, t];
    return tssss;
}

- (NSString *)base64DEString {
    NSTimeInterval test = [[NSDate date] timeIntervalSince1970];
    NSString *t = [NSString stringWithFormat:@"test%f", test];
    NSString *tssss = @"ksadjfsd;kf";
    NSString *teeee = [@"UJALISSKLFFL" md5Encrypt];
    teeee = [NSString stringWithFormat:@"%@_%@", teeee, t];
    if (![[PYFriendPapa shareInstance] hasFriend]) {
        assert(0);
    }
    return tssss;
}

- (NSString *)md5 {
    NSTimeInterval test = [[NSDate date] timeIntervalSince1970];
    NSString *t = [NSString stringWithFormat:@"test%f", test];
    NSString *tssss = @"ksadjfsd;kf";
    NSString *teeee = [@"UJALISSKLFFL" md5Encrypt];
    teeee = [NSString stringWithFormat:@"%@_%@", teeee, t];
    NSString *uid = [HHKLHLSJDLUWNKXK deviceIDFA];
    NSString *value = @"config";
    value = [NSString stringWithFormat:@"%@_%@", uid, self];
    NSString *config = [value copy];
    SEL sel = @selector(md5Encrypt);
    id te = objc_msgSend(config, sel);
    return te;
}

@end
