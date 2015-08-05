//
//  CDAFileUtils.h
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import <Foundation/Foundation.h>

@interface CDAFileUtils : NSObject

+ (NSString *) pathInDocumentDirectory:(NSString *)fileName;
+ (BOOL) removeFileAtPath:(NSString *)filePath;
+ (void) createFolderIfNotExists:(NSString *)folderPath;
+ (BOOL) fileExists:(NSString *)filePath;
+ (BOOL) folderExists:(NSString *)folderPath;

@end
