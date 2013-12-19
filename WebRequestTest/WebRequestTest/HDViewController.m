//
//  HDViewController.m
//  WebRequestTest
//
//  Created by Gladys on 19/12/13.
//  Copyright (c) 2013 Chris. All rights reserved.
//

#import "HDViewController.h"

@interface HDViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelMessage;
@property (weak, nonatomic) IBOutlet UIButton *fetchServerMessage;
@end

@implementation HDViewController
- (IBAction)getServerMessage:(id)sender
{
    if(sender == self.fetchServerMessage)
    {
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://localhost:8888"]];
        [request setHTTPMethod:@"GET"];
        NSURLConnection *theConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        if(!theConnection)
        {
            NSLog(@"Connection failed");
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    self.imageView.image = [[UIImage alloc] initWithData:data];
}
         
@end
