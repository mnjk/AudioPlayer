//
//  PlayListViewController.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelManager.h"
#import "SongDetailViewController.h"
@interface PlayListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    PlaylistModel *_DataModel;

}
@property (strong,nonatomic)IBOutlet UITableView *_tvPlaylist;
@end
