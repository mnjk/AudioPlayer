//
//  AudioModel.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "AudioModel.h"

@implementation AudioModel
@synthesize _lstSongs;

static AudioModel *_AudioSharedSinglton = nil;


+(AudioModel *)SharedAudio {

    @synchronized([AudioModel class]) {
        if (!_AudioSharedSinglton) {
            _AudioSharedSinglton = [[AudioModel alloc]init];
            
            //setup to initialize other properties of audio model
            [_AudioSharedSinglton setUp];
            
            return _AudioSharedSinglton;
        }
    }
    return nil;
}

-(void)setUp
{
    _lstSongs = [[NSMutableArray alloc]init];
    
    
    
    
}

#pragma  -mark AudioModel Methods

-(NSMutableArray *)getAllSongs{

    if (_lstSongs && _lstSongs.count <=0) {
        
        [self loadSampleSongsData];
    }
    return _lstSongs;
}

-(SongData *)getSongBySongID:(NSInteger)_nSongID_in
{
    
    NSPredicate *prdQuery = [NSPredicate predicateWithFormat:@"SELF._SongID == [c]",[NSString stringWithFormat:@"%ld",(long)_nSongID_in]];
    
    NSArray *lisFilteredSongs = [_lstSongs filteredArrayUsingPredicate:prdQuery];
    
    if (lisFilteredSongs && lisFilteredSongs.count > 0) {
        
        return [lisFilteredSongs objectAtIndex:0];
    }
    
    return nil;
}

-(void)loadSampleSongsData
{
    // any modification on main array list should be in synchronized block, will avoid crashes
    @synchronized(_lstSongs) {
     
        if (_lstSongs && _lstSongs.count <= 0) {
            
            SongData *song1 = [[SongData alloc]init];
            SongData *song2 = [[SongData alloc]init];
            SongData *song3 = [[SongData alloc]init];
            
            //song 1
            song1._SongID = 100;
            song1._stName = @"June Pona";
            song1._stAlbum = @"Unnale Unnale";
            song1._stArtist = @"Krish and Arun";
            
            //song 2
            song2._SongID = 200;
            song2._stName = @"Unnale Unnale";
            song2._stAlbum = @"Unnale Unnale";
            song2._stArtist = @"Krish, Karthik and Harini";
            
            //song 3
            song3._SongID = 300;
            song3._stName = @"Mudhal Naal";
            song3._stAlbum = @"Unnale Unnale";
            song3._stArtist = @"KK, Pop Shalini and Mahalaxmi Iyer";
            
            [_lstSongs addObject:song1];
            [_lstSongs addObject:song2];
            [_lstSongs addObject:song3];
    
        }
    }
    
}

@end
