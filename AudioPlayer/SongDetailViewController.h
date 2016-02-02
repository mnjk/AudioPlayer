//
//  SongDetailViewController.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioModel.h"
#import "ModelManager.h"

@interface SongDetailViewController : UIViewController
{
    PlaylistModel *_DataModel;
}
@property (strong,nonatomic) SongData *_songInfo;
@property (strong, nonatomic) IBOutlet UILabel *lbSongName;

-(IBAction)addToPlayList:(id)sender;
-(IBAction)removeFromPlayList:(id)sender;
-(IBAction)removeAllSongFromPlayList:(id)sender;

@end
