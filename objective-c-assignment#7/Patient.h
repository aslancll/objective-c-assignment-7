//
//  Patient.h
//  doctorpatient
//
//  Created by Celal Aslan on 2018-06-23.
//  Copyright © 2018 Celal Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property int age;
@property int weight;
@property (nonatomic, strong) NSString *sex;
@property BOOL visit;
@property BOOL hasHealthCard;
@property (nonatomic, strong, readonly) NSMutableArray *prescriptionArray;

-(instancetype)initWith:(NSString *)name age:(int)age weight:(int)weight sex:(NSString *)sex visit:(BOOL)visit andHasHealthCard:(BOOL)hasHealthCard;

@end
