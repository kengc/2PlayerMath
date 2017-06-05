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

@property (weak, nonatomic) IBOutlet UILabel *LblResult;
@property (weak, nonatomic) IBOutlet UILabel *player1Score;
@property (weak, nonatomic) IBOutlet UILabel *player2Score;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _questionManager = [[QuestionManager alloc] init];
    _playerAndQuestion.text = [_questionManager generateNameAndQuestion];
    self.player1Score.text = self.questionManager.player1.playerLives;
    self.player2Score.text = self.questionManager.player2.playerLives;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)buildDisplayText:(NSString *)number{
    NSString *newDisplayText = [self.keypadDisplay.text stringByAppendingString:number];
    
    return newDisplayText;
}

- (IBAction)oneKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"1"];
}

- (IBAction)twoKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"2"];
}

- (IBAction)threeKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"3"];
}

- (IBAction)fourKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"4"];
}

- (IBAction)fiveKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"5"];
}

- (IBAction)sixKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"6"];
}

- (IBAction)sevenKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"7"];
}
- (IBAction)eightKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"8"];
}

- (IBAction)nineKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"9"];
}

- (IBAction)zeroKey:(id)sender {
    self.keypadDisplay.text = [self buildDisplayText:@"0"];
}
- (IBAction)backButton:(id)sender {
    self.keypadDisplay.text = @"";
}

- (IBAction)enterKey:(id)sender {
    
    self.LblResult.text = @"";
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmed = [self.keypadDisplay.text stringByTrimmingCharactersInSet:characterSet];
    NSInteger answer = [trimmed integerValue];
    NSString *checkAnswerResponse = [self.questionManager checkAnswer:answer];
    
    self.LblResult.text = checkAnswerResponse;
    self.playerAndQuestion.text = [self.questionManager generateNameAndQuestion];
    self.keypadDisplay.text = @"";
    self.player1Score.text = self.questionManager.player1.playerLives;
    self.player2Score.text = self.questionManager.player2.playerLives;
}


@end
