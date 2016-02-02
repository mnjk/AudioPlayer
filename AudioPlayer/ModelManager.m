//
//  ModelManager.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "ModelManager.h"

@implementation ModelManager

static ModelManager* _MMSharedSingleton = nil;

@synthesize _DictAllModels;

+(ModelManager *)SharedModel
{
    @synchronized([ModelManager class]) {
       
        if (!_MMSharedSingleton) {
            _MMSharedSingleton = [[self alloc]init];
            [_MMSharedSingleton configureModels];
        }
        
        return _MMSharedSingleton;
    }
    
return nil;
}

-(void)configureModels
{
    _DictAllModels = [[NSMutableDictionary alloc]init];
    
    //PlayList Model
    PlaylistModel *playList = [[PlaylistModel alloc]init];
    _DictAllModels[@"PL_MODEL"] = playList;
    
    //AllSongs Model
    
    //Favourite Model
    
    //Recent Model
    

}


-(id)getDataModelWithKey:(NSString *)stModelKey_in
{

    return  [_DictAllModels objectForKey:stModelKey_in];

}

@end
