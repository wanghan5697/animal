//
//  ViewController.h
//  Animal
//
//  Created by Han on 11/7/14.
//  Copyright (c) 2014 Han Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *animalLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *animalScrollView;
@property (strong,nonatomic) NSMutableArray *animals;


@end

