@interface PBNetworkingInfo : NSObject
{
    NSArray *uploadedPhotos;
}

+(NSString*)getDeviceToken;
+(NSString*)getUserId;
+(NSString*)getPBID;
+(NSString*)getAuthToken;

@end
