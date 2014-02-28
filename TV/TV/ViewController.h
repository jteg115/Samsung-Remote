//
//  ViewController.h
//  TV
//
//  Created by John Tegtmeyer on 1/1/14.
//  Copyright (c) 2014 John Tegtmeyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSStreamDelegate>
{
    NSInputStream *inputStream;
    NSOutputStream *outputStream;
    
    UIView *remoteView;
    
    UIButton *volupButton;
    UIButton *voldownButton;
    UIButton *poweroffButton;
    UIButton *_key0;
    UIButton *_key1;
    UIButton *_key2;
    UIButton *_key3;
    UIButton *_key4;
    UIButton *_key5;
    UIButton *_key6;
    UIButton *_key7;
    UIButton *_key8;
    UIButton *_key9;
    UIButton *_keyUp;
    UIButton *_keyDown;
    UIButton *_keyLeft;
    UIButton *_keyRight;
    UIButton *_keyMenu;
    UIButton *_keyPrech;
    UIButton *_keyGuide;
    UIButton *_keyInfo;
    UIButton *_keyEnter;
    UIButton *_keySource;
    UIButton *_keyMute;
    UIButton *_keyChup;
    UIButton *_keyChdown;
    
    UILabel *statusLabel;
    UIButton *retry;
}

@end
