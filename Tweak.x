



/*
googleapp
google
googlemobileurl
google-deeplink
*/



%hook UIApplication



- (BOOL)canOpenURL:(NSURL *)url {
	
	NSArray *googleScs = @[@"google",@"googleapp",@"googlemobileurl",@"google-deeplink"];
	
	for (NSString* str in googleScs){
		if ([[url path] rangeOfString:str].location != NSNotFound) {
			return NO;
		}
	}
	
	
	
	%orig;
	return %orig;
}


%end