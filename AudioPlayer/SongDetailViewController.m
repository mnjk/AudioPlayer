//
//  SongDetailViewController.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "SongDetailViewController.h"

@interface SongDetailViewController ()

@end

@implementation SongDetailViewController
@synthesize _songInfo;
@synthesize lbSongName;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",_songInfo);
    lbSongName.text = _songInfo._stName;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

  

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
