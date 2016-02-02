//
//  ViewController.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioModel.h"
#import "SongDetailViewController.h"
 
@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    AudioModel *_audioModel;
}
@property (nonatomic , strong) IBOutlet UITableView *_tvSongs;



@end

