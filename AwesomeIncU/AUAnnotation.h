//
//  AUAnnotation.h
//  AwesomeIncU
//
//  Created by Will Oldham on 5/22/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface AUAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;
@property (nonatomic, readwrite, copy) NSString *title;
@property (nonatomic, readwrite, copy) NSString *subtitle;

@end
