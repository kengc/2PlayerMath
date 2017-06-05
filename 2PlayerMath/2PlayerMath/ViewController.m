//
//  ViewController.m
//  2PlayerMath
//
//  Created by Kevin Cleathero on 2017-06-05.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "ViewController.h"
#import "QuestionManager.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *playerAndQuestion;
@property (weak, nonatomic) IBOutlet UILabel *keypadDisplay;





@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _questionManager = [[QuestionManager alloc] init];
    _playerAndQuestion.text = [_questionManager generateNameAndQuestion];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)oneKey:(id)sender {
}

- (IBAction)twoKey:(id)sender {
}

- (IBAction)threeKey:(id)sender {
}

- (IBAction)fourKey:(id)sender {
}

- (IBAction)fiveKey:(id)sender {
}

- (IBAction)sixKey:(id)sender {
}

- (IBAction)sevenKey:(id)sender {
}
- (IBAction)eightKey:(id)sender {
}

- (IBAction)nineKey:(id)sender {
}

- (IBAction)zeroKey:(id)sender {
}

- (IBAction)enterKey:(id)sender {
}


@end
