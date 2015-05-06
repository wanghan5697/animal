//
//  Animal.h
//  Animal
//
//  Created by Han on 11/8/14.
//  Copyright (c) 2014 Han Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Animal : NSObject
@property (strong ,nonatomic) NSString *name;
@property (strong,nonatomic) NSNumber *age;
@property (strong,nonatomic) UIImage *image;
@property (strong,nonatomic) NSURL *imageURL;

@end
