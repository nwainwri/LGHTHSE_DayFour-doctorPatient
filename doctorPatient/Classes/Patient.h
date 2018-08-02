//
//  Patient.h
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class Doctor;
#import "Doctor.h"

@interface Patient : NSObject

@property NSString *name;
@property int age;

- (instancetype)initWithName: (NSString *)name age: (int)howOld;

- (void)visitDoctor: (Doctor *)doc hasValidHealthCard: (BOOL)hasCard;

//- (void) visitDoctor: (Doctor *)doc;




@end
