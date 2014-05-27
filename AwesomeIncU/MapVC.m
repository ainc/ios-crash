//
//  MapVC.m
//  AwesomeIncU
//
//  Created by Will Oldham on 5/21/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import "MapVC.h"
#import "AUAnnotation.h"

@interface MapVC ()
@end

@implementation MapVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.mapView.showsUserLocation = YES;
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *filepath = [bundle pathForResource:@"POIs" ofType:@"json"];
    
    NSData *data = [NSData dataWithContentsOfFile:filepath];
    NSArray *pois = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    for (NSDictionary *dict in pois) {
        AUAnnotation *poi = [[AUAnnotation alloc] init];
        poi.coordinate = CLLocationCoordinate2DMake([[dict objectForKey:@"latitude"] floatValue],[[dict objectForKey:@"longitude"]floatValue]);
        poi.title = [dict objectForKey:@"title"];
        poi.subtitle = [dict objectForKey:@"category"];
        
        [self.mapView addAnnotation:poi];

    }
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance
    (CLLocationCoordinate2DMake(38.042022, -84.492317), 25000, 25000);
    
    self.mapView.region = region;
    
    AUAnnotation *poi = [[AUAnnotation alloc] init];
    poi.coordinate = CLLocationCoordinate2DMake(38.042022, -84.492317);
    poi.title = @"Awesome Inc HeadQuarters";
    poi.subtitle = @"Learn more at AwesomeIncU online!";
    
    [self.mapView addAnnotation:poi];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
