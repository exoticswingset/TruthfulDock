%hook SBDockView

-(void)setBackgroundAlpha:(double)arg1 {
    
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.exoticswingset.truthfuldockprefs"];
    id isTweakEnabled = [bundleDefaults valueForKey:@"isTweakEnabled"];
    double alphaValue = [[bundleDefaults valueForKey:@"alphaValue"]doubleValue];
    
    if ([isTweakEnabled isEqual:@0]) {
        %orig;
    } else {
        %orig(alphaValue);
    }
}

-(BOOL)isDockInset {
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]persistentDomainForName:@"com.exoticswingset.truthfuldockprefs"];
    id isTweakEnabled = [bundleDefaults valueForKey:@"isTweakEnabled"];
    id classicDockEnabled = [bundleDefaults valueForKey:@"classicDockEnabled"];
    if ([isTweakEnabled isEqual:@0]) {
        return %orig;
    } else if ([classicDockEnabled isEqual:@0]) {
        return %orig;
    } else {
        return NO;
    }
}
%end