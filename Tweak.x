%hook SBDockView

-(void)setBackgroundAlpha:(double)arg1 { // Method found in SBDockView.h used to set dock opacity
    // Preferences
    
    NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults]
    persistentDomainForName:@"com.exoticswingset.truthfuldockprefs"];
    id isTweakEnabled = [bundleDefaults valueForKey:@"isTweakEnabled"];
    double alphaValue = [[bundleDefaults valueForKey:@"alphaValue"]doubleValue];
    
    if ([isTweakEnabled isEqual:@0]) { // Checks if tweak is disabled
        %orig;
    } else {
        %orig(alphaValue); // %orig executes all of the other code that originally would have ran, but inside the parentheses is where arg1, a double is passed through instead of the default.
    }
}

-(BOOL)isDockInset { // BOOL found in SBDockView.h. If set to NO, dock no longer appears round on notched iPhones.
    // Preferences
    
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
