//
//  PlaylistModel.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "PlaylistModel.h"

@implementation PlaylistModel

@synthesize  _lstPlayList;

-(id)init{
    self = super.self;
    
    _lstPlayList = [[NSMutableArray alloc]init];
    
    return self;
}

-(void)addSongToPlayListWithSongID:(SongData *) songInfo_in{
    

    if (_lstPlayList && _lstPlayList.count > 0) {
        
        NSPredicate *predQuery = [NSPredicate predicateWithFormat:@"SELF._SongID == [c]",songInfo_in._SongID];
        
        NSArray *availResult = [_lstPlayList filteredArrayUsingPredicate:predQuery];
        
        if(availResult && availResult.count <=0)
        {
            [_lstPlayList addObject:songInfo_in];
        }
    }
    else
    {
    [_lstPlayList addObject:songInfo_in];
    }
    
}

-(NSMutableArray*)getPlayList{


    return _lstPlayList;

}


-(BOOL)deleteAllSongInPlayList
{
    [_lstPlayList removeAllObjects];
    
    return TRUE;
}

-(BOOL)deleteSongFromPlayPlist:(SongData *) songInfo_in{


    for (SongData *songInfo in _lstPlayList) {
        
        if (songInfo._SongID == songInfo_in._SongID) {
            [_lstPlayList removeObject:songInfo];
        }
    }

    return TRUE;

}

-(void)loadSampleSongsData
{
    // any modification on main array list should be in synchronized block, will avoid crashes
    @synchronized(_lstPlayList) {
        
        if (_lstPlayList && _lstPlayList.count <= 0) {
            
            SongData *song1 = [[SongData alloc]init];
            SongData *song3 = [[SongData alloc]init];
            
            //song 1
            song1._SongID = 100;
            song1._stName = @"June Pona";
            song1._stAlbum = @"Unnale Unnale";
            song1._stArtist = @"Krish and Arun";
            
            
            //song 3
            song3._SongID = 300;
            song3._stName = @"Mudhal Naal";
            song3._stAlbum = @"Unnale Unnale";
            song3._stArtist = @"KK, Pop Shalini and Mahalaxmi Iyer";
            
            [_lstPlayList addObject:song1];
            [_lstPlayList addObject:song3];
            
        }
    }
    
}
@end
