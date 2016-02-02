//
//  ViewController.m
//  AudioPlayer
//
//  Created by Mohamed Karemullasha on 28/01/16.
//  Copyright © 2016 Mohamed Karemullasha. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize _tvSongs;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _audioModel = [AudioModel SharedAudio];
    
    _tvSongs.delegate = self;
    _tvSongs.dataSource = self;
    
    
[_audioModel loadSampleSongsData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%ld",(long) [[AudioModel SharedAudio]._lstSongs count]);
    
   
    
    return  [_audioModel._lstSongs count];
    
             
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{


 UITableViewCell *cell = (UITableViewCell *)[_tvSongs dequeueReusableCellWithIdentifier:@"CellID"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    }

    SongData *currSongData = [_audioModel._lstSongs objectAtIndex: indexPath.row];
    cell.textLabel.text = currSongData._stName;
    
    return cell;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 70;
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

 if([segue.identifier isEqualToString:@"SongDetailSegues"])
 {
     NSIndexPath *selectedIndex = self._tvSongs.indexPathForSelectedRow;
     
     // assignel songDetail vc is destination VC through this segue. it will take care of trasistions and all.
     SongDetailViewController *destinationSongDetailVC = segue.destinationViewController;

     // assign the song data into songDetail VC object.
     destinationSongDetailVC._songInfo = [_audioModel._lstSongs objectAtIndex:selectedIndex.row];
     
 }

}

-(IBAction)prepareForUnwind:(UIStoryboardSegue *)segue {
    
}


@end
