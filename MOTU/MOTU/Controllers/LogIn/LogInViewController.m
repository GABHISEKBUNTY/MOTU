//
//  LogInViewController.m
//  MOTU
//
//  Created by Abhisek on 04/03/18.
//  Copyright © 2018 Abhisek. All rights reserved.
//

#import "LogInViewController.h"
#import "UIView+UIView_Extended.h"

@interface LogInViewController ()

@end

@implementation LogInViewController {
    UITextField *userNameTextField;
    UITextField *passwordTextField;
    UIButton *logInButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpUI];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpUI {
    //Set up Background Image
    UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame: self.view.bounds];
    backgroundImage.image = [UIImage imageNamed:@"splashScreenBG"];
    
    //Set up WelcomeLabel
    UILabel *welcomeLabel = [[UILabel alloc] init];
    welcomeLabel.font = [UIFont fontWithName:@"Gotham-Bold" size:30];
    welcomeLabel.textColor = [UIColor whiteColor];
    welcomeLabel.text = @"WELCOME";
    CGRect welcomeLabelFrame = CGRectMake(self.view.frameWidth/2 - welcomeLabel.intrinsicContentSize.width/2, self.view.frameHeight*0.2, welcomeLabel.intrinsicContentSize.width, welcomeLabel.intrinsicContentSize.height);
    welcomeLabel.frame = welcomeLabelFrame;
    
    //Set up textfields
    userNameTextField = [[UITextField alloc] init];
    [self setTextFieldProperties:userNameTextField withPlaceHolder:@"  User Name" withFrame: CGRectMake(20,welcomeLabel.frameY+self.view.frameHeight*0.2,self.view.frameWidth-40, 30)];
    
    passwordTextField = [[UITextField alloc] init];
    [self setTextFieldProperties:passwordTextField withPlaceHolder:@"  Password" withFrame:CGRectMake(20,userNameTextField.frameY+userNameTextField.frameHeight + 20,self.view.frameWidth-40, 30)];

    //Set up LogIn button
    logInButton = [[UIButton alloc] init];
    [logInButton setTitle:@"Log In" forState:UIControlStateNormal];
    [logInButton setTitleColor: [UIColor whiteColor] forState: UIControlStateNormal];
    [logInButton addTarget:self action:@selector(logInButtonTapped:)  forControlEvents: UIControlEventAllEvents];
    logInButton.backgroundColor = [UIColor blackColor];
    [logInButton.titleLabel setFont: [UIFont fontWithName:@"Gotham-Medium" size:15]];
    logInButton.frame = CGRectMake(self.view.frameWidth/2 - 100/2, passwordTextField.frameY+userNameTextField.frameHeight + 20, 100, 40);
    
    [self.view addSubview: backgroundImage];
    [self.view addSubview: welcomeLabel];
    [self.view addSubview: userNameTextField];
    [self.view addSubview: passwordTextField];
    [self.view addSubview: logInButton];
}

-(void)setTextFieldProperties: (UITextField *)textField withPlaceHolder: (NSString *)placeHolder withFrame: (CGRect)frame {
    textField.placeholder = placeHolder;
    textField.font = [UIFont fontWithName:@"Gotham-Light" size:13];
    textField.backgroundColor = [UIColor whiteColor];
    textField.textColor = [UIColor blackColor];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.frame = frame;
}

- (IBAction)logInButtonTapped:(id)sender {
}


@end
