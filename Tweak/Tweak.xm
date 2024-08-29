// Tweak.xm
%hook UIStatusBarBatteryItemView

- (void)updateBatteryIcon {
    // Custom logic to change the battery icon
    UIImage *customBatteryImage = [UIImage imageNamed:@"CustomBattery"];
    if (customBatteryImage) {
        [self setImage:customBatteryImage];
    }
}

%end
