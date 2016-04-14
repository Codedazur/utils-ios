//
//  CDAFileUtils.m
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import "CDAFileUtils.h"

@implementation CDAFileUtils

// To use this function, you pass it a file name, and it will construct
// the full path for that file in the Documents directory.
+ (NSString *) pathInDocumentDirectory:(NSString *)fileName {
    // Get list of document directories in sandbox
    NSArray *documentDirectories =
    NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                        NSUserDomainMask, YES);
    
    // Get one and only document directory from that list
    NSString *documentDirectory = [documentDirectories objectAtIndex:0];
    
    // Append passed in file name to that directory, return it
    return [documentDirectory stringByAppendingPathComponent:fileName];
}

+ (void) createFolderIfNotExists:(NSString *)folderPath {
    NSFileManager *fileManager= [NSFileManager defaultManager];
    
    BOOL isDir;
    if(![fileManager fileExistsAtPath:folderPath isDirectory:&isDir]){
        if(![fileManager createDirectoryAtPath:folderPath withIntermediateDirectories:YES attributes:nil error:NULL])
        {
            
        }
    }
}

+ (BOOL) removeFileAtPath:(NSString *)filePath {
    BOOL removed = NO;
    BOOL isDir;
    
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath isDirectory:&isDir]) {
        if (isDir) return NO;
        
        NSError *error = nil;
        removed = [[NSFileManager defaultManager] removeItemAtPath:filePath error:&error];
        if (error) {
            NSLog(@"Failed To Remove File %@ error: %@", filePath, error);
        }
    }
    
    return removed;
}

+ (BOOL) fileExists:(NSString *)filePath {
    BOOL isDir;
    BOOL result = [[NSFileManager defaultManager] fileExistsAtPath:filePath isDirectory:&isDir];
    
    return result && !isDir;
}

+ (BOOL) folderExists:(NSString *)folderPath {
    BOOL isDir;
    BOOL result = [[NSFileManager defaultManager] fileExistsAtPath:folderPath isDirectory:&isDir];
    
    return result && isDir;
}

@end
