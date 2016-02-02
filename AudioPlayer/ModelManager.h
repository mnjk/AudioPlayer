//
//  ModelManager.h
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SongData.h"
#import "PlayListModel.h"

@interface ModelManager : NSObject
@property (strong,nonatomic)NSMutableDictionary *_DictAllModels;



+(ModelManager *)SharedModel;

-(id)getDataModelWithKey:(NSString *)stModelKey_in;


@end
