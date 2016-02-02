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
    
    _DataModel = [[ModelManager SharedModel] getDataModelWithKey:@"PL_MODEL"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

  
-(IBAction)addToPlayList:(id)sender{

    // updated code
    
}
-(IBAction)removeFromPlayList:(id)sender{

    @try {
        
    if (_songInfo) {
        
        [_DataModel deleteSongFromPlayPlist:_songInfo];
        
    }else{
        
        NSLog(@"DELETE : Something wrong ... :) ");
    }
        
    }
    @catch (NSException *exception) {
        
        NSLog(@"REMOVE ALL : %@",[NSString stringWithFormat:@"%@" ,exception]);
    }
    
}

-(IBAction)removeAllSongFromPlayList:(id)sender{

    @try {
     
        NSMutableArray *lstPlayListSongs = [_DataModel getPlayList];
        
        if (lstPlayListSongs) {
            [_DataModel deleteAllSongInPlayList];
        }

    }
    @catch (NSException *exception) {
        
        NSLog(@"REMOVE ALL : %@",[NSString stringWithFormat:@"%@" ,exception]);
    }
    
}

/*
a mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
