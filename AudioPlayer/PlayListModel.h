//
//  PlaylistModel.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "ModelManager.h"

@interface PlaylistModel : NSObject

@property (strong,nonatomic) NSMutableArray *_lstPlayList;



-(void)addSongToPlayListWithSongID:(SongData *) songInfo_in;

-(NSMutableArray*)getPlayList;

-(BOOL)deleteAllSongInPlayList;

-(BOOL)deleteSongFromPlayPlist:(SongData *) songInfo_in;

-(void)loadSampleSongsData;


@end
