//
//  PatientRecord.h
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
#import "Doctor.h"


@interface PatientRecord : NSObject

@property (strong, nonatomic)NSString *doctorName;
@property PatientSymptom patientSymptom;
@property (strong, nonatomic)NSString *medicationGiven;

-(NSArray *) makeMedicalHistory;




@end
