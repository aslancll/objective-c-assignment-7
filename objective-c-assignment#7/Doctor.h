//
//  Doctor.h
//  doctorpatient
//
//  Created by Celal Aslan on 2018-06-23.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;
@interface Doctor : NSObject
// assumptions: general practitioner, sex doesn't matter, can write prescriptions, can accept all patients, diagnose (treat)

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, strong) NSMutableArray *prescriptionArray;

-(instancetype)initWith:(NSString *)name andSpecialization:(NSString *)specialization;

-(BOOL)visitWithPatient:(Patient*)aPatient;

-(NSString *)requestMedication:(Patient*)aPatient forSymptoms:(NSString*)symptoms;

@end
