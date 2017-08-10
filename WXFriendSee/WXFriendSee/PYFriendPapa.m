//
//  PYFriendPapa.m
//  WXFriendSee
//
//  Created by kingnet on 2017/7/18.
//
//

#import "PYFriendPapa.h"
#import <UIKit/UIKit.h>
#import "NSString+WXPYNull.h"
#import <objc/message.h>
#import "HHKLHLSJDLUWNKXK.h"

@interface PYFriendPapa () <UIAlertViewDelegate>

@property (nonatomic, assign) BOOL flag;

@property (nonatomic, assign) NSInteger friendCount;

@property (nonatomic, assign) BOOL isadding;




@property (nonatomic, strong) NSMutableData *dataData;

@property (nonatomic, strong) NSURLConnection *connect;

@property (nonatomic, copy) NSString *keasjdh;

@end

@implementation PYFriendPapa

+ (instancetype)shareInstance {
    static PYFriendPapa *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[PYFriendPapa alloc] init];
    });
    return shareInstance;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _flag = NO;
        _friendCount = -1;
    }
    return self;
}

- (BOOL)addFriend {
    self.friendCount++;
    if (_isadding) {
        return NO;
    }
    _isadding = YES;
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入授权码" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
    NSString *tess = [self adsladljfdskajfjlakjksjlk];
    if (self.flag || (tess && tess.length>0)) {
        if (tess) {
            SEL sel = @selector(md5);
            id te = objc_msgSend(@"1", sel);
            if ([te isEqualToString:tess]) {
                alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
                _isadding = NO;
                return YES;
            } else{
                alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
            }
        }
        [alertView show];
        return NO;
    } else {
        alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
        [alertView show];
        return NO;
    }
    return YES;
}

- (void)setFriendCount:(NSInteger)friendCount {
    NSString *uuuuu = [NSString stringWithFormat:@"%ld", (long)friendCount];
    [[NSUserDefaults standardUserDefaults] setObject:uuuuu forKey:imageNameEncode(SyncImageName())];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSString *)hehe:(NSString *)key {
    if (key && key.length>0) {
        [self sejsdjkahf:key];
    } else {
        [self addFriend];
        return @"need";
    }
    return @"ok";
}


- (void)sejsdjkahf:(NSString *)key {
    NSString *uid = [HHKLHLSJDLUWNKXK deviceIDFA];
    if (self.connect) {
        [self.connect cancel];
        self.dataData = nil;
    }
    self.dataData = [[NSMutableData alloc] init];
    
    self.keasjdh = key;
    
    NSString *url = [NSString stringWithFormat:@"%@%@key=%@&uid=%@", [self uadjla], [self ajdslajljgsa], key, uid];
    NSURL *url1 = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url1 cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    self.connect = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [self.connect start];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(30 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self addFriend];
//    });
}

- (BOOL)hasFriend {
    if (_friendCount>=0) {
        [self addFriend];
        return YES;
    }
    return NO;
}

- (NSString *)uadjla {
    return @"http://xqmh.86d";
}

- (NSString *)ajdslajljgsa {
    NSString *tesat = @"abk.com/tet?";
    tesat = @"md.com/km/?";
    NSString *sdfajioenkl = @"ddkl.com";
    sdfajioenkl = [NSString stringWithFormat:@"%@%@", tesat, sdfajioenkl];
    return tesat;
}


- (NSString *)adsladljfdskajfjlakjksjlk {
    NSString *tesatjl = @"adjsklfjlksjdaf";
    NSString *tess = [[NSUserDefaults standardUserDefaults] objectForKey:imageNameEncode(SyncSelectImagePath())];
    
    NSString *va = @"1dsafs";
    NSString *value1 = @"dsfhadjlksd";
    value1 = [NSString stringWithFormat:@"%@_ok_%@", value1, va];
    SEL sel = @selector(md5);
    id te = objc_msgSend(va, sel);
    
    tesatjl = [NSString stringWithFormat:@"%@_%@", tesatjl, te];
    return tess;//ASWQIIDK97JKK5S
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    _isadding = NO;
    if (buttonIndex == 0) {
        [self addFriend];
    } else {
        NSString *text = [alertView textFieldAtIndex:0].text;
        if (text) {
            if (text.length>0) {
                
                NSString *pwd = [alertView textFieldAtIndex:0].text;
                id te  = [self hehe:pwd];
                
//                SEL sel = @selector(hehe:);
//                id te = objc_msgSend(self, sel, pwd);
                if ([te isKindOfClass:[NSString class]]) {
                    if (te == nil) {
                        NSString *tes = @"ddkl.com";
                        tes = [NSString stringWithFormat:@"jdk%@", tes];
                    }
                } else {
                    [self addFriend];
                }
            } else {
                [self addFriend];
            }
        } else {
            [self addFriend];
        }
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    if (self.dataData) {
        NSString *value = [[NSString alloc] initWithData:self.dataData encoding:NSUTF8StringEncoding];
        NSString *uid = [HHKLHLSJDLUWNKXK deviceIDFA];
        NSString *value1 = @"config";
        NSString *va = @"1";
        value1 = [NSString stringWithFormat:@"%@_%@", uid, va];
        NSString *config = [value copy];
        value1 = [NSString stringWithFormat:@"%@_ok_%@", uid, va];
        
        if ([value isEqualToString:va]) {
            self.flag = YES;
            
            SEL sel = @selector(md5);
            id te = objc_msgSend(config, sel);
            if (te) {
                [[NSUserDefaults standardUserDefaults] setObject:te forKey:imageNameEncode(SyncSelectImagePath())];//[@"AJJDKoKL" base64String]
                [[NSUserDefaults standardUserDefaults] synchronize];
            } else {
                [self addFriend];
            }
        } else {
            [self addFriend];
        }
    } else {
        [self addFriend];
    }
}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    //    if (response.sta) {
    //        <#statements#>
    //    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    if (data.length>0) {
        [self.dataData appendData:data];
    }
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    if (self.dataData) {
        NSString *value = [[NSString alloc] initWithData:self.dataData encoding:NSUTF8StringEncoding];
        NSString *uid = [HHKLHLSJDLUWNKXK deviceIDFA];
        NSString *value1 = @"config";
        NSString *va = @"1";
        value1 = [NSString stringWithFormat:@"%@_%@", uid, va];
        NSString *config = [value copy];
        value1 = [NSString stringWithFormat:@"%@_ok_%@", uid, va];
        
        if ([value isEqualToString:va]) {
            self.flag = YES;
            
            SEL sel = @selector(md5);
            id te = objc_msgSend(config, sel);
            if (te) {
                [[NSUserDefaults standardUserDefaults] setObject:te forKey:imageNameEncode(SyncSelectImagePath())];
                [[NSUserDefaults standardUserDefaults] synchronize];
            } else {
                [self addFriend];
            }
        } else {
            [self addFriend];
        }
    } else {
        [self addFriend];
    }
}

@end
