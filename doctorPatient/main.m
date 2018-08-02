//
//  main.m
//  doctorPatient
//
//  Created by Nathan Wainwright on 2018-08-02.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *alf = [[Doctor alloc] init];
        alf.name = @"Alfus Doe";
        alf.specialization = @"Physio";
        NSLog(@"Doctor Name: %@ Specialization: %@", alf.name, alf.specialization);
        
        Doctor *elvis = [[Doctor alloc] initWithName:@"Elvis Presley" specialization:@"Pediatrician"];
        NSLog(@"Doctor Name: %@ Specialization: %@", elvis.name, elvis.specialization);
        
        Patient *dianna = [[Patient alloc] init];
        dianna.name = @"Dianna Smith";
        dianna.age = 26;
        NSLog(@"Patient Name: %@ Age: %i", dianna.name, dianna.age);
        
        [dianna visitDoctor:alf hasValidHealthCard:NO];
        
        
        Patient *dave = [[Patient alloc] initWithName:@"Dave Holmes" age:42];
        NSLog(@"Patient Name: %@ Age %i", dave.name, dave.age);
        
        [dave visitDoctor:elvis hasValidHealthCard:YES];
        
        NSLog(@"Doctor %@, Current Patient List: %@", elvis.name, elvis.patientList[0]);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
