%hook UIStatusBarBatteryItemView

- (void)updateBatteryIcon {
    NSInteger batteryLevel = [UIDevice currentDevice].batteryLevel * 100;
    NSString *imageName;

    if (batteryLevel > 75) {
        imageName = @"bat1-100-75%";
    } else if (batteryLevel > 50) {
        imageName = @"bat1-100-50%";
    } else if (batteryLevel > 25) {
        imageName = @"bat1-100-25%";
    } else {
        imageName = @"bat1-100-0%";
    }

    UIImage *customBatteryImage = [UIImage imageNamed:imageName inBundle:[NSBundle bundleWithPath:@"/Library/Themes/CustomBatteryIcon/assets"] compatibleWithTraitCollection:nil];
    if (customBatteryImage) {
        [self setImage:customBatteryImage];
    }
}

%end
