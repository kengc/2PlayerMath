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
    self.keypadDisplay.text = @"1";
}

- (IBAction)twoKey:(id)sender {
    self.keypadDisplay.text = @"2";
}

- (IBAction)threeKey:(id)sender {
    self.keypadDisplay.text = @"3";
}

- (IBAction)fourKey:(id)sender {
    self.keypadDisplay.text = @"4";
}

- (IBAction)fiveKey:(id)sender {
    self.keypadDisplay.text = @"5";
}

- (IBAction)sixKey:(id)sender {
    self.keypadDisplay.text = @"6";
}

- (IBAction)sevenKey:(id)sender {
    self.keypadDisplay.text = @"7";
}
- (IBAction)eightKey:(id)sender {
    self.keypadDisplay.text = @"8";
}

- (IBAction)nineKey:(id)sender {
    self.keypadDisplay.text = @"9";
}

- (IBAction)zeroKey:(id)sender {
    self.keypadDisplay.text = @"0";
}

- (IBAction)enterKey:(id)sender {
    NSInteger answer = [self.keypadDisplay.text integerValue];
    
}


@end
