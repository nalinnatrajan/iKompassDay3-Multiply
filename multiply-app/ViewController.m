//
//  ViewController.m
//  multiply-app
//
//  Created by Nalin Natrajan on 28/2/15.
//  Copyright (c) 2015 Nalin Natrajan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *numberTextField;

@property (weak, nonatomic) IBOutlet UILabel *multiplierTextField;

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *multiplierValue = [NSString stringWithFormat:@"%d", 5];
    self.multiplierTextField.text = multiplierValue;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderValueChanged:(id)sender {
    UISlider *slider = sender;
    slider.value = roundf(slider.value);
    int sliderValue = slider.value;
    NSString *multiplierValue = [NSString stringWithFormat:@"%d", sliderValue];
    self.multiplierTextField.text = multiplierValue;
}

- (IBAction)onCalculateButtonPressed:(id)sender {
    if (self.operatorSegmentControl.selectedSegmentIndex == 0) {
        
        int userInput = self.numberTextField.text.intValue;
        int userMultiplier = self.multiplierTextField.text.intValue;
        int result = userInput * userMultiplier;
        NSString *displayResult = [NSString stringWithFormat:@"%d", result];
        
        if (result > 0) {
            if (result % 5 == 0 && result % 3 == 0) {
                self.answerLabel.text = @"FizzBuzz";
            } else if (result % 5 == 0){
                self.answerLabel.text = @"Buzz";
            } else if (result % 3 == 0){
                self.answerLabel.text = @"Fizz";
            } else {
                self.answerLabel.text = displayResult;
            }
        } else {
            self.answerLabel.text = displayResult;
        }
        
        if (result >= 20) {
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            self.view.backgroundColor = [UIColor whiteColor];
        }
    } else {
        
        int userInput = self.numberTextField.text.intValue;
        int userMultiplier = self.multiplierTextField.text.intValue;
        int result = userInput / userMultiplier;
        NSString *displayResult = [NSString stringWithFormat:@"%d", result];
        
        if (result > 0) {
            if (result % 5 == 0 && result % 3 == 0) {
                self.answerLabel.text = @"FizzBuzz";
            } else if (result % 5 == 0){
                self.answerLabel.text = @"Buzz";
            } else if (result % 3 == 0){
                self.answerLabel.text = @"Fizz";
            } else {
                self.answerLabel.text = displayResult;
            }
        } else {
            self.answerLabel.text = displayResult;
        }
        
        if (result >= 20) {
            self.view.backgroundColor = [UIColor greenColor];
        } else {
            self.view.backgroundColor = [UIColor whiteColor];
        }
    }
    [self.view endEditing:YES];
}

@end
