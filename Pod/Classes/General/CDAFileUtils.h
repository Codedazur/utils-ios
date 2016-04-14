//
//  CDAFileUtils.h
//  Pods
//
//  Created by Gerardo Garrido on 05/08/15.
//
//

#import <Foundation/Foundation.h>

@interface CDAFileUtils : NSObject

/**
 @param fileName
        The name of the file stored in the document directory.
 @return The absolute path of a file stored in the app's document directory.
*/
+ (NSString *) pathInDocumentDirectory:(NSString *)fileName;

/**
 Remove a file from the device.
 @param filePath
        The absolute path of the file to be deleted.
 @return YES in case the file is being deleted, otherwise NO (this can be cause because the file doesn't exist or of filesystem errors.
*/
+ (BOOL) removeFileAtPath:(NSString *)filePath;

/**
 Create a folder.
 @param folderPath
        The absolute path of the folder to be created. That means the name of the folder and the place where it should be created.
*/
+ (void) createFolderIfNotExists:(NSString *)folderPath;

/**
 @param filePath
        The path of a file. If path begins with a tilde (~), it must first be expanded with stringByExpandingTildeInPath, or this method will return NO.
 @return Returns a Boolean value that indicates whether a file exists at a specified path.
*/
+ (BOOL) fileExists:(NSString *)filePath;

/**
 @param folderPath
 The path of a folder. If path begins with a tilde (~), it must first be expanded with stringByExpandingTildeInPath, or this method will return NO.
 @return Returns a Boolean value that indicates whether a folder exists at a specified path.
*/
+ (BOOL) folderExists:(NSString *)folderPath;

@end
