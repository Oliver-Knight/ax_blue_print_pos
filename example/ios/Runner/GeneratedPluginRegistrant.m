//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<blue_print_pos/BluePrintPosPlugin.h>)
#import <blue_print_pos/BluePrintPosPlugin.h>
#else
@import blue_print_pos;
#endif

#if __has_include(<blue_thermal_printer/BlueThermalPrinterPlugin.h>)
#import <blue_thermal_printer/BlueThermalPrinterPlugin.h>
#else
@import blue_thermal_printer;
#endif

#if __has_include(<flutter_blue_plus/FlutterBluePlusPlugin.h>)
#import <flutter_blue_plus/FlutterBluePlusPlugin.h>
#else
@import flutter_blue_plus;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [BluePrintPosPlugin registerWithRegistrar:[registry registrarForPlugin:@"BluePrintPosPlugin"]];
  [BlueThermalPrinterPlugin registerWithRegistrar:[registry registrarForPlugin:@"BlueThermalPrinterPlugin"]];
  [FlutterBluePlusPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBluePlusPlugin"]];
}

@end
