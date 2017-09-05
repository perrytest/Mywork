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


static NSInteger kAlertTag = 10001;
static NSInteger kAlertTag_2 = 10002;



static const char base64EncodingTable[64]
= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
static const short base64DecodingTable[256] = {
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -2,  -1,  -1, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, 62,  -2,  -2, -2, 63,
    52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -2, -2,  -2,  -2, -2, -2,
    -2, 0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10,  11,  12, 13, 14,
    15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -2,  -2,  -2, -2, -2,
    -2, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36,  37,  38, 39, 40,
    41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2,
    -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2, -2,  -2,  -2, -2, -2
};

//将NSString转换成十六进制的字符串则可使用如下方式:
NSString *stringToHex(NSString *str){
    
    if (!str || [str length] == 0) {
        return @"";
    }
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:[data length]];
    
    [data enumerateByteRangesUsingBlock:^(const void *bytes, NSRange byteRange, BOOL *stop) {
        unsigned char *dataBytes = (unsigned char*)bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString *hexStr = [NSString stringWithFormat:@"%x", (dataBytes[i]) & 0xff];
            if ([hexStr length] == 2) {
                [string appendString:hexStr];
            } else {
                [string appendFormat:@"0%@", hexStr];
            }
        }
    }];
    return string;
}

// base64 encode
NSString *bdba075fd70674d59edf161ecf879423d(NSData *data)
{
    NSUInteger length = data.length;
    if (length == 0)
        return @"";
    
    NSUInteger out_length = ((length + 2) / 3) * 4;
    uint8_t *output = malloc(((out_length + 2) / 3) * 4);
    if (output == NULL)
        return nil;
    
    const char *input = data.bytes;
    NSInteger i, value;
    for (i = 0; i < length; i += 3) {
        value = 0;
        for (NSInteger j = i; j < i + 3; j++) {
            value <<= 8;
            if (j < length) {
                value |= (0xFF & input[j]);
            }
        }
        NSInteger index = (i / 3) * 4;
        output[index + 0] = base64EncodingTable[(value >> 18) & 0x3F];
        output[index + 1] = base64EncodingTable[(value >> 12) & 0x3F];
        output[index + 2] = ((i + 1) < length) ? base64EncodingTable[(value >> 6) & 0x3F] : '=';
        output[index + 3] = ((i + 2) < length) ? base64EncodingTable[(value >> 0) & 0x3F] : '=';
    }
    
    NSString *base64 = [[NSString alloc] initWithBytes:output
                                                length:out_length
                                              encoding:NSASCIIStringEncoding];
    free(output);
    return base64;
}

const char *revstr(char *str, size_t len)
{
    char    *start = str;
    char    *end = str + len - 1;
    char    ch;
    
    if (str != NULL)
    {
        while (start < end)
        {
            ch = *start;
            *start++ = *end;
            *end-- = ch;
        }
    }
    return str;
}

NSString *encode_params(NSString *string)
{
    NSString *base64_str = bdba075fd70674d59edf161ecf879423d([string dataUsingEncoding:NSUTF8StringEncoding]);
    base64_str = [base64_str stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
    base64_str = [base64_str stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    base64_str = [base64_str stringByReplacingOccurrencesOfString:@"=" withString:@""];
    NSString *str = [NSString stringWithCString:revstr(base64_str.UTF8String, base64_str.length) encoding:NSUTF8StringEncoding];
    NSString *p = stringToHex(str);
    return p;
}


//将十六进制的字符串转换成NSString则可使用如下方式:
NSString *hexToString(NSString *str)
{
    if (!str || [str length] == 0) {
        return nil;
    }
    
    NSMutableData *hexData = [[NSMutableData alloc] initWithCapacity:8];
    NSRange range;
    if ([str length] % 2 == 0) {
        range = NSMakeRange(0, 2);
    } else {
        range = NSMakeRange(0, 1);
    }
    for (NSInteger i = range.location; i < [str length]; i += 2) {
        unsigned int anInt;
        NSString *hexCharStr = [str substringWithRange:range];
        NSScanner *scanner = [[NSScanner alloc] initWithString:hexCharStr];
        
        [scanner scanHexInt:&anInt];
        NSData *entity = [[NSData alloc] initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        
        range.location += range.length;
        range.length = 2;
    }
    NSString *string = [[NSString alloc]initWithData:hexData encoding:NSUTF8StringEncoding];
    return string;
}

NSString *decode_params(NSString *string){
    
    NSString *str = hexToString(string);
    NSString *str1 = [NSString stringWithCString:revstr(str.UTF8String, str.length)
                                        encoding:NSUTF8StringEncoding];
    str1 = [str1 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
    str1 = [str1 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
    
    NSData *data = [[NSData alloc] initWithBase64EncodedString:str1 options:0];
    NSString *result_str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return result_str;
}



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
        self.ischeckValid = YES;
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

- (void)addFriendContract:(NSString *)string {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:string delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alertView show];
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
    }
    self.dataData = nil;
    self.dataData = [[NSMutableData alloc] init];
    
    self.keasjdh = key;
    NSString *url = [NSString stringWithFormat:@"%@%@registeCode=%@&machineCode=%@", [self uadjla], [self ajdslajljgsa], encode_params(key), encode_params(uid)];
    NSURL *url1 = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:url1 cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10];
    self.connect = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [self.connect start];
    NSString *kkkkkkkk = [key base64String];
    kkkkkkkk = [key copy];
    [[NSUserDefaults standardUserDefaults] setObject:kkkkkkkk forKey:@"111111111111"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
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
    return @"http://zl.ok188";
}

- (NSString *)ajdslajljgsa {
    NSString *tesat = @"abk.com/tet?";
    tesat = @"8.cn/auth2018.php?";
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
        if (self.ischeckValid) {
            [self addFriend];
        }
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
        BOOL isError = YES;
        
        NSString *str = [[NSString alloc] initWithData:self.dataData encoding:NSUTF8StringEncoding];
        NSString *response_str = decode_params(str);
        NSData *response_data = [response_str dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *response_obj = [NSJSONSerialization JSONObjectWithData:response_data options:0 error:nil];
//        NSLog(@"############# response_obj: %@", response_obj);
        
        if ([response_obj isKindOfClass:[NSDictionary class]]) {
            
            NSInteger response_code = [[response_obj objectForKey:@"code"] integerValue];
            NSString *msg = [response_obj objectForKey:@"msg"];
//            NSLog(@"############# code: %ld", (long)response_code);
            if (response_code == 1) {
                isError = NO;
                msg = (msg.length == 0) ? @"激活成功" : msg;
                
                NSString *value = @"1";
                SEL sel = @selector(md5);
                id te = objc_msgSend(value, sel);
                [[NSUserDefaults standardUserDefaults] setObject:te forKey:imageNameEncode(SyncSelectImagePath())];//[@"AJJDKoKL" base64String]
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        if (isError) {
            NSString *msg = [response_obj objectForKey:@"msg"];
            msg = (msg.length == 0) ? @"验证码不存在，请向管理员索要" : msg;
            [self performSelector:@selector(addFriendContract:)
                       withObject:msg
                       afterDelay:0.1];
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
        BOOL isError = YES;
        
        NSString *str = [[NSString alloc] initWithData:self.dataData encoding:NSUTF8StringEncoding];
        NSString *response_str = decode_params(str);
        NSData *response_data = [response_str dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *response_obj = [NSJSONSerialization JSONObjectWithData:response_data options:0 error:nil];
//        NSLog(@"############# response_obj: %@", response_obj);
        
        if ([response_obj isKindOfClass:[NSDictionary class]]) {
            
            NSInteger response_code = [[response_obj objectForKey:@"code"] integerValue];
            NSString *msg = [response_obj objectForKey:@"msg"];
//            NSLog(@"############# code: %ld", (long)response_code);
            if (response_code == 1) {
                isError = NO;
                msg = (msg.length == 0) ? @"激活成功" : msg;
                
                NSString *value = @"1";
                SEL sel = @selector(md5);
                id te = objc_msgSend(value, sel);
                [[NSUserDefaults standardUserDefaults] setObject:te forKey:imageNameEncode(SyncSelectImagePath())];//[@"AJJDKoKL" base64String]
                [[NSUserDefaults standardUserDefaults] synchronize];
            }
        }
        if (isError) {
            NSString *msg = [response_obj objectForKey:@"msg"];
            msg = (msg.length == 0) ? @"验证码不存在，请向管理员索要" : msg;
            [self performSelector:@selector(addFriendContract:)
                       withObject:msg
                       afterDelay:0.1];
        }
    } else {
        [self addFriend];
    }
}

@end
