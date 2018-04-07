@interface GameAnalyticsExt : NSObject
{
}

-(void)configureAvailableCustomDimensions01:(char *)list;
-(void)configureAvailableCustomDimensions02:(char *)list;
-(void)configureAvailableCustomDimensions03:(char *)list;
-(void)configureAvailableResourceCurrencies:(char *)list;
-(void)configureAvailableResourceItemTypes:(char *)list;
-(void)configureBuild:(char *)build;
-(void)configureSdkGameEngineVersion:(char *)gameEngineSdkVersion;
-(void)configureGameEngineVersion:(char *)gameEngineVersion;
-(void)configureUserId:(char *)userId;
-(void)initialize:(char *)gameKey gameSecret:(char *)gameSecret;
-(void)addBusinessEvent:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType;
-(void)addBusinessEventWithReceipt:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType receipt:(char *)receipt;
-(void)addBusinessEventAndAutoFetchReceipt:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId cartType:(char *)cartType;
-(void)addResourceEvent:(double)flowType currency:(char *)currency amount:(double)amount itemType:(char *)itemType itemId:(char *)itemId;
-(void)addProgressionEvent:(double)progressionStatus progression01:(char *)progression01 progression02:(char *)progression02 progression03:(char *)progression03;
-(void)addProgressionEventWithScore:(double)progressionStatus progression01:(char *)progression01 progression02:(char *)progression02 progression03:(char *)progression03 score:(double)score;
-(void)addDesignEvent:(char *)eventId;
-(void)addDesignEventWithValue:(char *)eventId value:(double)value;
-(void)addErrorEvent:(double)severity message:(char *)message;
-(void)setEnabledInfoLog:(double)flag;
-(void)setEnabledVerboseLog:(double)flag;
-(void)setManualSessionHandling:(double)flag;
-(void)startSession;
-(void)endSession;
-(void)setCustomDimension01:(char *)customDimension;
-(void)setCustomDimension02:(char *)customDimension;
-(void)setCustomDimension03:(char *)customDimension;
-(void)setFacebookId:(char *)facebookId;
-(void)setGender:(double)gender;
-(void)setBirthYear:(double)birthYear;

@end
