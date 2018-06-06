#import <Foundation/Foundation.h>
#import "PBNetworkingInfo.h"

// Defines
#if !defined kUserId
#define kUserId @"user_id"
#endif

#if !defined kPBID
#define kPBID @"pbid"
#endif

#if !defined kDeviceToken
#define kDeviceToken @"device_token"
#endif

#if !defined kAuthToken
#define kAuthToken @"auth_token"
#endif
// End Defines

@implementation PBNetworkingInfo

+(NSString*)getDeviceToken {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSString *devt = [defs objectForKey:kDeviceToken];
    if (devt == nil) return @"";
    return devt;
}

+(NSString*)getPBID {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSString *pbID = [defs objectForKey:kPBID];
    
    if (!pbID) pbID = @"";
    else pbID = [NSString stringWithFormat:@"%@",pbID];
    if ([pbID isEqualToString:@"(null)"]) pbID = @"";
    
    return pbID;
}

+(NSString*)getUserId {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSString *fromDefaults = [defs objectForKey:kUserId];
    if (!fromDefaults) return @"";
    
    return fromDefaults;
}

+(NSString*)getAuthToken {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    
    NSString *fromDefaults = [defs objectForKey:kAuthToken];
    if (!fromDefaults) fromDefaults = @"";
    else fromDefaults = [NSString stringWithFormat:@"%@", fromDefaults];
    if ([fromDefaults isEqualToString:@"(null)"]) fromDefaults = @"";
    if ([fromDefaults isEqualToString:@"0"]) fromDefaults = @"";
    
    return fromDefaults;
}

@end
