//
//  ViewController.m
//  Animal
//
//  Created by Han on 11/7/14.
//  Copyright (c) 2014 Han Wang. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import <UIKit/UIKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _animals =[[NSMutableArray alloc ]init];

    _animalLabel=[[UILabel alloc]init];
    [self.view addSubview:_animalLabel];
    
    // Add animal data;
    Animal *cat=[[Animal alloc] init];
    cat.name=@"Cat";
    cat.age=@5;
    cat.image=[UIImage imageNamed:@"Animal/cat"];
  //cat.imageURL=[NSURL URLWithString:@"http://myimages.com/cat.jpg"];
    cat.imageURL=[NSURL URLWithString:@"http://animalia-life.com/data_images/cat/cat5.jpg"];
    
    
    Animal *dog=[[Animal alloc] init];
    dog.name=@"Dog";
    dog.age=@10;
    dog.image=[UIImage imageNamed:@"Animal/puppy"];
    dog.imageURL=[NSURL URLWithString:@"http://myimages.com/dog.jpg"];
   
    
    Animal *dolphin=[[Animal alloc] init];
    dolphin.name=@"Dolphin";
    dolphin.age=@12;
    dolphin.image=[UIImage imageNamed:@"Animal/dolphin"];
    dolphin.imageURL=[NSURL URLWithString:@"http://myimages.com/dolphin.jpg"];
    
    
    //Add the animal object to the array
    [self.animals addObject:cat];
    [self.animals addObject:dog];
    [self.animals addObject:dolphin];
    NSLog(@"The animail in our zoo");
}


-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self loadScrollViewData];
}

-(void) loadScrollViewData
{
    NSLog(@"In ViewController calling loadScrollViewData");
    int numberOfAnimals=[self.animals count];
    
    // set the content size of the scroll view
    self.animalScrollView.contentSize=CGSizeMake(numberOfAnimals*self.animalScrollView.frame.size.width,
                                                 self.animalScrollView.frame.size.height);
    
    //Add button to the scroll View
   
    UIImageView *imageView;
    
    for (int i=0; i<numberOfAnimals;i++) {
         UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame=CGRectMake(320*i, 30, 100, 70);
        button.tag=i;
        
        Animal *currentAnimal=[self.animals objectAtIndex:i];
        [button setTitle:currentAnimal.name forState:UIControlStateNormal];
        [button addTarget:self action:@selector(buttonTapped:)forControlEvents:UIControlEventTouchUpInside];
        [self.animalScrollView addSubview:button];
    
        //Add an image View to each"Page"
        imageView =[[UIImageView alloc]initWithImage:currentAnimal.image];
        imageView.frame=CGRectMake(320*i, 100, 320, 320);
        imageView.contentMode=UIViewContentModeScaleAspectFill;
        [self.animalScrollView addSubview:imageView];

    }
   }

-(void) buttonTapped:(UIButton*) sender
{
    NSLog(@"The button was tapped:%@",sender);
    
    Animal *currentAnimal =[self.animals objectAtIndex:sender.tag];
    
   self.animalLabel.text=currentAnimal.name;
    NSLog(@"The animal name is %@",_animalLabel.text);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
