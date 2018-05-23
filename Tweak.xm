%hook MediaControlsHeaderView

-(void)layoutSubviews {
    %orig;
    UIView *shadow = MSHookIvar<UIView *>(self, "_shadow");
    shadow.hidden = 1;
    UIView *artworkBackgroundView = MSHookIvar<UIView *>(self, "_artworkBackgroundView");
    artworkBackgroundView.hidden = 1;
    UIImageView *artworkView = MSHookIvar<UIImageView *>(self, "_artworkView");
    artworkView.hidden = 1;
    UIView *mQ1 = MSHookIvar<UIView *>(self, "_titleMarqueeView");
    UIView *mQ2 = MSHookIvar<UIView *>(self, "_primaryMarqueeView");
    UIView *mQ3 = MSHookIvar<UIView *>(self, "_secondaryMarqueeView");
    int offset = 30;
    int width = 250;
    mQ1.frame = CGRectMake(offset, mQ1.frame.origin.y, width, mQ1.frame.size.height);
    mQ2.frame = CGRectMake(offset, mQ2.frame.origin.y, width, mQ2.frame.size.height);
    mQ3.frame = CGRectMake(offset, mQ3.frame.origin.y, width, mQ3.frame.size.height);
}

%end
