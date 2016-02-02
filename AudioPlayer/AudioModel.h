//
//  AudioModel.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SongData.h"
#import "PlayListModel.h"
//#import "FavouriteModel.h"

 ///
@interface AudioModel : NSObject
{
    SongData *_SongData;
}

// all songs information will be maintained lstSongs
@property (nonatomic,strong)NSMutableArray *_lstSongs;

// for singleton object for AudioModel
+(AudioModel *)SharedAudio;

/// Get all list of song
-(NSMutableArray *)getAllSongs;
/// Get A Song by Song id
-(SongData *)getSongBySongID:(NSInteger)_nSongID_in;

// Load Default song data to song list
-(void)loadSampleSongsData;

@end
