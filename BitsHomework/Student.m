//
//  Student.m
//  BitsHomework
//
//  Created by Stepan Paholyk on 7/18/16.
//  Copyright © 2016 Stepan Paholyk. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString*) answerByType:(studentSubjectType) type {
    return self.subjectType & type ? @"YES" : @"NO";
}

- (NSString*) description {
    return [NSString stringWithFormat:@"Student studied:\n"
            @"Biology - %@\n"
            @"Math - %@\n"
            @"Development - %@\n"
            @"Engeneering - %@\n"
            @"Art - %@\n"
            @"MachineLearning - %@\n"
            @"Psycology - %@\n"
            @"Physics - %@\n"
            @"Astronomy - %@\n",
            [self answerByType:SPStudentSubjectTypeBiology],
            [self answerByType:SPStudentSubjectTypeMath],
            [self answerByType:SPStudentSubjectTypeDevelopment],
            [self answerByType:SPStudentSubjectTypeEngeneering],
            [self answerByType:SPStudentSubjectTypeArt],
            [self answerByType:SPStudentSubjectTypeMachineLearning],
            [self answerByType:SPStudentSubjectTypePhysics],
            [self answerByType:SPStudentSubjectTypePsycology],
            [self answerByType:SPStudentSubjectTypeAstronomy]];
}

@end
