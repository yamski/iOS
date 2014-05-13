//
//  RVBRedVController.m
//  redBlue
//
//  Created by JOHN YAM on 5/7/14.
//  Copyright (c) 2014 John Yam. All rights reserved.
//

#import "RVBRedVController.h"
#import "RVBgameData.h"

@interface RVBRedVController ()

@end

@implementation RVBRedVController
{
    NSInteger addPoint;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.view.frame = CGRectMake(0, SCREEN_HEIGHT/2, SCREEN_WIDTH, SCREEN_HEIGHT/2);
        
        self.view.backgroundColor = [UIColor colorWithRed:0.725f green:0.188f blue:0.353f alpha:1.0f];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self addPoints];
}


- (void) addPoints
{
    addPoint += 1;
    
    [RVBgameData mainData].redScore = addPoint;
    
    //NSLog(@"%ld", (long)addPoint);
    
    NSLog(@"%ld", (long)[RVBgameData mainData].redScore);
    
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