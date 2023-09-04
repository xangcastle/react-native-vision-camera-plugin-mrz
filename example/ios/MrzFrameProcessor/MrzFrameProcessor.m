#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/FrameProcessorPluginRegistry.h>

#if __has_include("VisionCameraPluginMrzExample/VisionCameraPluginMrzExample-Swift.h")
#import "VisionCameraPluginMrzExample/VisionCameraPluginMrzExample-Swift.h"
#else
#import "VisionCameraPluginMrzExample-Swift.h"
#endif

@interface MrzFrameProcessorPlugin (FrameProcessorPluginLoader)
@end

@implementation MrzFrameProcessorPlugin (FrameProcessorPluginLoader)

+ (void)load
{
  [FrameProcessorPluginRegistry addFrameProcessorPlugin:@"mrz"
                                        withInitializer:^FrameProcessorPlugin*(NSDictionary* options) {
    return [[MrzFrameProcessorPlugin alloc] initWithOptions:options];
  }];
}

@end