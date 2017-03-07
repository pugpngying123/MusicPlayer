//
//  ViewController.h
//  MusicPlayer
//
//  Created by haijie feng on 2017/3/7.
//  Copyright © 2017年 haijie feng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController
@property(nonatomic,strong) AVAudioPlayer *player;
@property(nonatomic,strong) NSArray *musicArr;
@end

