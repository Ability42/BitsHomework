//
//  Student.h
//  BitsHomework
//
//  Created by Stepan Paholyk on 7/18/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    SPStudentSubjectTypeBiology             = 1 << 0,
    SPStudentSubjectTypeMath                = 1 << 1,
    SPStudentSubjectTypeDevelopment         = 1 << 2,
    SPStudentSubjectTypeEngeneering         = 1 << 3,
    SPStudentSubjectTypeArt                 = 1 << 4,
    SPStudentSubjectTypeMachineLearning     = 1 << 5,
    SPStudentSubjectTypePhysics             = 1 << 6,
    SPStudentSubjectTypePsycology           = 1 << 7,
    SPStudentSubjectTypeAstronomy           = 1 << 8
}studentSubjectType;

@interface Student : NSObject

@property (assign, nonatomic) studentSubjectType subjectType;
//- (NSString*) description;
@end
