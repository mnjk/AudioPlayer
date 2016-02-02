//
//  PlayListViewController.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 29/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "PlayListViewController.h"

@interface PlayListViewController ()

@end

@implementation PlayListViewController
@synthesize  _tvPlaylist;
- (void)viewDidLoad {
    
    self.automaticallyAdjustsScrollViewInsets = NO;

    _DataModel = [[ModelManager SharedModel] getDataModelWithKey:@"PL_MODEL"];
    
    [_DataModel loadSampleSongsData];
    
    
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





#pragma mark- TableView Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (_DataModel._lstPlayList && _DataModel._lstPlayList.count >0) {

        return [_DataModel._lstPlayList count];

    }
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    UITableViewCell *cell = [_tvPlaylist dequeueReusableCellWithIdentifier:@"CellID"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
        
    }
    SongData *songInfo = [_DataModel._lstPlayList objectAtIndex:indexPath.row];
    
    cell.textLabel.text = songInfo._stName;

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 70;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"SongDetailSeguesFromPL"]) {
        
        NSIndexPath *selectedIndex = self._tvPlaylist.indexPathForSelectedRow;
        
        
        SongDetailViewController *destinationVC = segue.destinationViewController;
        
        destinationVC._songInfo = [_DataModel._lstPlayList objectAtIndex: selectedIndex.row];
        
    }
    
}
 
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
