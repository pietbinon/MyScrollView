//
//  ViewController.m
//  MyScrollView
//
//  Created by Pierre Binon on 2017-01-23.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 160, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [_mainView addSubview:redView];
    [_mainView addSubview:greenView];
    [_mainView addSubview:blueView];
    [_mainView addSubview:yellowView];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) viewDidAppear:(BOOL)animated {
    CGRect bounds = _mainView.bounds;
    bounds.origin = CGPointMake(0, 100);
    _mainView.bounds = bounds;
}


@end
