//
//  ViewController.m
//  MusicPlayer
//
//  Created by haijie feng on 2017/3/7.
//  Copyright © 2017年 haijie feng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.musicArr=@[@"林中鸟.mp3",@"刚好遇见你.mp3",@"成都.mp3"];
    [self prepareMusic:self.musicArr[1]];
}

- (void)prepareMusic:(NSString *)path{
    //1.音频文件的url路径
    NSURL *url=[[NSBundle mainBundle]URLForResource:path withExtension:Nil];
    
    //2.实例化播放器
    _player=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:Nil];
    
    //3.缓冲
    [_player prepareToPlay];
    //设置音量
    [_player setVolume:0.6];
    //设置当前播放事件
//    [_player setCurrentTime:60];
    //设置循环次数
    [_player setNumberOfLoops:2];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)random:(id)sender {
    [self prepareMusic:self.musicArr[arc4random()%3]];
    [_player play];
}
- (IBAction)play:(id)sender {
    //播放
    [_player play];
}
- (IBAction)pause:(id)sender {
    //暂停
    [_player pause];
}
- (IBAction)stop:(id)sender {
    //停止
    [_player stop];
}

@end
