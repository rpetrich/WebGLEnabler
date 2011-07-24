#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface WebFrame (WebGL)
- (BOOL)webGLEnabled;
- (void)setWebGLEnabled:(BOOL)newValue;
@end

%hook WebView

- (id)initWithFrame:(CGRect)frame frameName:(NSString *)frameName groupName:(NSString *)groupName
{
	if ((self = %orig)) {
		[[self mainFrame] setWebGLEnabled:YES];
	}
	return self;
}

%end
