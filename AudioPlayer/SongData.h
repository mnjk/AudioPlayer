//
//  SongData.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SongData : NSObject

@property (nonatomic) NSInteger _SongID;
@property (strong,nonatomic) NSString *_stName;
@property (strong,nonatomic) NSString *_stArtist;
@property (strong,nonatomic) NSString *_stAlbum;
 
@end
