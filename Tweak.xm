#import <UIKit/UIKit.h>

// Forward declare your ImGui render function from ImGuiMenu.mm
extern void DrawImGuiMenu();

%ctor {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"[CoCTrophyBot] Tweak initialized safely via dispatch queue.");
    });
}

// Hook into UIApplication delegate or main window to ensure UI interactions don't crash
%hook UIApplication

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    BOOL orig = %orig;
    
    // Delay menu overlay initialization slightly to let the game window settle
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"[CoCTrophyBot] Clash of Clans launched - safe to attach overlays.");
    });
    
    return orig;
}

%end