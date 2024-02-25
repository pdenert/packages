// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v13.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "messages.g.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@implementation FLTSourceCameraBox
- (instancetype)initWithValue:(FLTSourceCamera)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@implementation FLTSourceTypeBox
- (instancetype)initWithValue:(FLTSourceType)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@interface FLTMaxSize ()
+ (FLTMaxSize *)fromList:(NSArray *)list;
+ (nullable FLTMaxSize *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTMediaSelectionOptions ()
+ (FLTMediaSelectionOptions *)fromList:(NSArray *)list;
+ (nullable FLTMediaSelectionOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTSourceSpecification ()
+ (FLTSourceSpecification *)fromList:(NSArray *)list;
+ (nullable FLTSourceSpecification *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation FLTMaxSize
+ (instancetype)makeWithWidth:(nullable NSNumber *)width
    height:(nullable NSNumber *)height {
  FLTMaxSize* pigeonResult = [[FLTMaxSize alloc] init];
  pigeonResult.width = width;
  pigeonResult.height = height;
  return pigeonResult;
}
+ (FLTMaxSize *)fromList:(NSArray *)list {
  FLTMaxSize *pigeonResult = [[FLTMaxSize alloc] init];
  pigeonResult.width = GetNullableObjectAtIndex(list, 0);
  pigeonResult.height = GetNullableObjectAtIndex(list, 1);
  return pigeonResult;
}
+ (nullable FLTMaxSize *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTMaxSize fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.width ?: [NSNull null],
    self.height ?: [NSNull null],
  ];
}
@end

@implementation FLTMediaSelectionOptions
+ (instancetype)makeWithMaxSize:(FLTMaxSize *)maxSize
    imageQuality:(nullable NSNumber *)imageQuality
    requestFullMetadata:(BOOL )requestFullMetadata
    allowMultiple:(BOOL )allowMultiple
    limit:(nullable NSNumber *)limit {
  FLTMediaSelectionOptions* pigeonResult = [[FLTMediaSelectionOptions alloc] init];
  pigeonResult.maxSize = maxSize;
  pigeonResult.imageQuality = imageQuality;
  pigeonResult.requestFullMetadata = requestFullMetadata;
  pigeonResult.allowMultiple = allowMultiple;
  pigeonResult.limit = limit;
  return pigeonResult;
}
+ (FLTMediaSelectionOptions *)fromList:(NSArray *)list {
  FLTMediaSelectionOptions *pigeonResult = [[FLTMediaSelectionOptions alloc] init];
  pigeonResult.maxSize = [FLTMaxSize nullableFromList:(GetNullableObjectAtIndex(list, 0))];
  pigeonResult.imageQuality = GetNullableObjectAtIndex(list, 1);
  pigeonResult.requestFullMetadata = [GetNullableObjectAtIndex(list, 2) boolValue];
  pigeonResult.allowMultiple = [GetNullableObjectAtIndex(list, 3) boolValue];
  pigeonResult.limit = GetNullableObjectAtIndex(list, 4);
  return pigeonResult;
}
+ (nullable FLTMediaSelectionOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTMediaSelectionOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.maxSize ? [self.maxSize toList] : [NSNull null]),
    self.imageQuality ?: [NSNull null],
    @(self.requestFullMetadata),
    @(self.allowMultiple),
    self.limit ?: [NSNull null],
  ];
}
@end

@implementation FLTSourceSpecification
+ (instancetype)makeWithType:(FLTSourceType)type
    camera:(FLTSourceCamera)camera {
  FLTSourceSpecification* pigeonResult = [[FLTSourceSpecification alloc] init];
  pigeonResult.type = type;
  pigeonResult.camera = camera;
  return pigeonResult;
}
+ (FLTSourceSpecification *)fromList:(NSArray *)list {
  FLTSourceSpecification *pigeonResult = [[FLTSourceSpecification alloc] init];
  pigeonResult.type = [GetNullableObjectAtIndex(list, 0) integerValue];
  pigeonResult.camera = [GetNullableObjectAtIndex(list, 1) integerValue];
  return pigeonResult;
}
+ (nullable FLTSourceSpecification *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTSourceSpecification fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.type),
    @(self.camera),
  ];
}
@end

@interface FLTImagePickerApiCodecReader : FlutterStandardReader
@end
@implementation FLTImagePickerApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTMaxSize fromList:[self readValue]];
    case 129: 
      return [FLTMediaSelectionOptions fromList:[self readValue]];
    case 130: 
      return [FLTSourceSpecification fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLTImagePickerApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTImagePickerApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTMaxSize class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTMediaSelectionOptions class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTSourceSpecification class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLTImagePickerApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTImagePickerApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTImagePickerApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTImagePickerApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTImagePickerApiGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTImagePickerApiCodecReaderWriter *readerWriter = [[FLTImagePickerApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpFLTImagePickerApi(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTImagePickerApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.image_picker_ios.ImagePickerApi.pickImage"
        binaryMessenger:binaryMessenger
        codec:FLTImagePickerApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pickImageWithSource:maxSize:quality:fullMetadata:completion:)], @"FLTImagePickerApi api (%@) doesn't respond to @selector(pickImageWithSource:maxSize:quality:fullMetadata:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTSourceSpecification *arg_source = GetNullableObjectAtIndex(args, 0);
        FLTMaxSize *arg_maxSize = GetNullableObjectAtIndex(args, 1);
        NSNumber *arg_imageQuality = GetNullableObjectAtIndex(args, 2);
        BOOL arg_requestFullMetadata = [GetNullableObjectAtIndex(args, 3) boolValue];
        [api pickImageWithSource:arg_source maxSize:arg_maxSize quality:arg_imageQuality fullMetadata:arg_requestFullMetadata completion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.image_picker_ios.ImagePickerApi.pickMultiImage"
        binaryMessenger:binaryMessenger
        codec:FLTImagePickerApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pickMultiImageWithMaxSize:quality:fullMetadata:limit:completion:)], @"FLTImagePickerApi api (%@) doesn't respond to @selector(pickMultiImageWithMaxSize:quality:fullMetadata:limit:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTMaxSize *arg_maxSize = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_imageQuality = GetNullableObjectAtIndex(args, 1);
        BOOL arg_requestFullMetadata = [GetNullableObjectAtIndex(args, 2) boolValue];
        NSNumber *arg_limit = GetNullableObjectAtIndex(args, 3);
        [api pickMultiImageWithMaxSize:arg_maxSize quality:arg_imageQuality fullMetadata:arg_requestFullMetadata limit:arg_limit completion:^(NSArray<NSString *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.image_picker_ios.ImagePickerApi.pickVideo"
        binaryMessenger:binaryMessenger
        codec:FLTImagePickerApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pickVideoWithSource:maxDuration:completion:)], @"FLTImagePickerApi api (%@) doesn't respond to @selector(pickVideoWithSource:maxDuration:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTSourceSpecification *arg_source = GetNullableObjectAtIndex(args, 0);
        NSNumber *arg_maxDurationSeconds = GetNullableObjectAtIndex(args, 1);
        [api pickVideoWithSource:arg_source maxDuration:arg_maxDurationSeconds completion:^(NSString *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  /// Selects images and videos and returns their paths.
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.image_picker_ios.ImagePickerApi.pickMedia"
        binaryMessenger:binaryMessenger
        codec:FLTImagePickerApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(pickMediaWithMediaSelectionOptions:completion:)], @"FLTImagePickerApi api (%@) doesn't respond to @selector(pickMediaWithMediaSelectionOptions:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTMediaSelectionOptions *arg_mediaSelectionOptions = GetNullableObjectAtIndex(args, 0);
        [api pickMediaWithMediaSelectionOptions:arg_mediaSelectionOptions completion:^(NSArray<NSString *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
