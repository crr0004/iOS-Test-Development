//
//  HDAddToDoItemViewController.m
//  FirstSteps
//
//  Created by Gladys on 17/12/13.
//  Copyright (c) 2013 Chris. All rights reserved.
//

#import "HDAddToDoItemViewController.h"
#import "HDToDoItem.h"

@interface HDAddToDoItemViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (weak, nonatomic) IBOutlet UITextField *textField;


@end

@implementation HDAddToDoItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id) sender
{
    if(sender != self.doneButton) return;
    
    if(self.textField.text.length > 0)
    {
        self.toDoItem = [[HDToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}


@end
