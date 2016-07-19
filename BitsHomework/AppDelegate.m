//
//  AppDelegate.m
//  BitsHomework
//
//  Created by Stepan Paholyk on 7/18/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    
#pragma mark -PupilLevel
    NSMutableArray* studentHeap = [NSMutableArray array];
    
    for (int i = 0; i < 10; i++) {
        Student* student = [[Student alloc] init];
        
        NSInteger randSubjectInStudents = 0;
        for (int j = 0; j < 9; j++) {
            randSubjectInStudents = randSubjectInStudents | (arc4random()%2 << j);
        }
        
        student.subjectType = randSubjectInStudents;
        [studentHeap addObject:student];
    }
    
//        NSLog(@"Student %0d\n%@\n", i, student);
    int countStudents = 0;
    for (Student* fellow in studentHeap) {
        NSLog(@"Student %d:\n %@",countStudents ,fellow);
        countStudents++;
    }
    
#pragma mark StudentLevel
        
        // create techArray
    NSMutableArray *engeenears = [NSMutableArray array];
    NSMutableArray *gumanitaries = [NSMutableArray array];
    NSUInteger devCount = 0;
        
    for (Student* fellow in studentHeap) {
        if (fellow.subjectType & SPStudentSubjectTypeMath) {
            [engeenears addObject:fellow];
        } else {
            [gumanitaries addObject:fellow];
        }
        
        if (fellow.subjectType & SPStudentSubjectTypeDevelopment) {
            devCount++;
        }
    }


    
#pragma mark MasterLevel
    int countSt = 0;
    for (Student* fellow in studentHeap) {
        
        if (fellow.subjectType & SPStudentSubjectTypeBiology) {
            fellow.subjectType = fellow.subjectType ^ SPStudentSubjectTypeBiology;
            
        }
        NSLog(@"Student %d:\n %@",countSt ,fellow);
        countSt++;
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
