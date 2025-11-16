#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <spawn.h>

@interface SBPowerDownController : NSObject
- (void)activate;
@end

void userspaceReboot() {
    char *argv[] = {
        "/var/jb/usr/bin/launchctl",
        "reboot",
        "userspace",
        NULL
    };
    
    pid_t pid;
    posix_spawn(&pid, "/var/jb/usr/bin/launchctl", NULL, NULL, argv, NULL);
}

%hook SBPowerDownController

- (void)activate {
    userspaceReboot();
}

%end
