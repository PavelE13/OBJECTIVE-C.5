//
//  Loader.h
//  Lesson5
//
//  Created by User on 26.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property (nonatomic, strong) NSURLSession *session;

- (void) performGetRequestForUrl: (NSString*) stringUrl
    arguments: (NSDictionary*) arguments
    completion: (void (^) (NSDictionary*, NSError*)) completion;

- (void) performPostRequestForUrl: (NSString*) stringUrl
    arguments: (NSDictionary*) arguments
    completion: (void (^) (NSDictionary*, NSError*)) completion;

- (NSDictionary*) parseJSONData: (NSData*) data error: (NSError**) error;

- (NSData*) dataWithJSON: (NSDictionary*) dict error: (NSError**) error;

@end

NS_ASSUME_NONNULL_END
