#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        if (argc != 2) {
            NSLog(@"Usage: addLoginItem path");
        } else {
            NSString *path = [[NSString alloc] initWithUTF8String:argv[1]];
            
            OSStatus status;
            CFURLRef URLToApp =
            CFURLCreateWithFileSystemPath(kCFAllocatorDefault, (CFStringRef)path,
                                          kCFURLPOSIXPathStyle, true);
            LSSharedFileListRef loginItems =
            LSSharedFileListCreate(NULL,kLSSharedFileListSessionLoginItems, NULL);
            
            NSString *displayName = [[NSFileManager defaultManager]
                                     displayNameAtPath:path];
            IconRef icon = NULL;
            FSRef ref;
            Boolean gotRef = CFURLGetFSRef(URLToApp, &ref);
            if (gotRef) {
                status = GetIconRefFromFileInfo(&ref,
                                                /*fileNameLength*/ 0,
                /*fileName*/ NULL,
                                                kFSCatInfoNone,
                /*catalogInfo*/ NULL,
                                                kIconServicesNormalUsageFlag,
                                                &icon,
                                                /*outLabel*/ NULL);
                if (status != noErr)
                    icon = NULL;
            }
            
            LSSharedFileListInsertItemURL(loginItems,
                                          kLSSharedFileListItemBeforeFirst, (CFStringRef)displayName, icon,
                                          URLToApp, /*propertiesToSet*/ NULL, /*propertiesToClear*/ NULL);
        }
    }
    return 0;
}
