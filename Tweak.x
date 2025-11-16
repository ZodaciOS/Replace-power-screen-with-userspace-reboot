#import <objc/runtime.h>
#import <Foundation/Foundation.h>

@interface SBPowerDownController : NSObject
- (void)activate;
@end

void userspaceReboot() {
    posix_spawn(NULL, "/bin/launchctl", (char* const[]){"/bin/launchctl", "reboot", "userspace", NULL}, NULL, NULL, NULL);
}

%hook SBPowerDownController
- (void)activate {
    userspaceReboot();
}
%end
