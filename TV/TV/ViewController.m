//
//  ViewController.m
//  TV
//
//  Created by John Tegtmeyer on 1/1/14.
//  Copyright (c) 2014 John Tegtmeyer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initNetworkCommunication];
    
    remoteView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    [self.view addSubview:remoteView];
    
    statusLabel = [[UILabel alloc] initWithFrame:CGRectMake(10,150,300,40)];
    statusLabel.textColor = [UIColor colorWithRed:256 green:0 blue:0 alpha:1.0];
    statusLabel.textAlignment = NSTextAlignmentCenter;
    statusLabel.text = @"";
    [self.view addSubview:statusLabel];
    
    retry = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [retry addTarget:self action:@selector(initNetworkCommunication) forControlEvents:UIControlEventTouchDown];
    [retry setTitle:@"retry" forState:UIControlStateNormal];
    retry.titleLabel.font = [UIFont systemFontOfSize:18];
    retry.frame = CGRectMake(145,269,40,40);
    [self.view addSubview:retry];
    retry.hidden = true;
    
    volupButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [volupButton addTarget:self action:@selector(volumeUp) forControlEvents:UIControlEventTouchDown];
    [volupButton setTitle:@"Vol+" forState:UIControlStateNormal];
    volupButton.titleLabel.font = [UIFont systemFontOfSize:18];
    volupButton.frame = CGRectMake(21,353,40,40);
    [remoteView addSubview:volupButton];
    
    voldownButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [voldownButton addTarget:self action:@selector(volumeDown) forControlEvents:UIControlEventTouchDown];
    [voldownButton setTitle:@"Vol-" forState:UIControlStateNormal];
    voldownButton.titleLabel.font = [UIFont systemFontOfSize:18];
    voldownButton.frame = CGRectMake(21,420,40,40);
    [remoteView addSubview:voldownButton];
    
    poweroffButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [poweroffButton addTarget:self action:@selector(powerOff) forControlEvents:UIControlEventTouchDown];
    [poweroffButton setTitle:@"Off" forState:UIControlStateNormal];
    poweroffButton.titleLabel.font = [UIFont systemFontOfSize:18];
    poweroffButton.frame = CGRectMake(270,37,40,40);
    [remoteView addSubview:poweroffButton];
    
    _key0 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key0 addTarget:self action:@selector(key0) forControlEvents:UIControlEventTouchDown];
    [_key0 setTitle:@"0" forState:UIControlStateNormal];
    _key0.titleLabel.font = [UIFont systemFontOfSize:18];
    _key0.frame = CGRectMake(145,353,40,40);
    [remoteView addSubview:_key0];
    
    _key1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key1 addTarget:self action:@selector(key1) forControlEvents:UIControlEventTouchDown];
    [_key1 setTitle:@"1" forState:UIControlStateNormal];
    _key1.titleLabel.font = [UIFont systemFontOfSize:18];
    _key1.frame = CGRectMake(21,102,40,40);
    [remoteView addSubview:_key1];
    
    _key2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key2 addTarget:self action:@selector(key2) forControlEvents:UIControlEventTouchDown];
    [_key2 setTitle:@"2" forState:UIControlStateNormal];
    _key2.titleLabel.font = [UIFont systemFontOfSize:18];
    _key2.frame = CGRectMake(145,102,40,40);
    [remoteView addSubview:_key2];
    
    _key3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key3 addTarget:self action:@selector(key3) forControlEvents:UIControlEventTouchDown];
    [_key3 setTitle:@"3" forState:UIControlStateNormal];
    _key3.titleLabel.font = [UIFont systemFontOfSize:18];
    _key3.frame = CGRectMake(270,102,40,40);
    [remoteView addSubview:_key3];
    
    _key4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key4 addTarget:self action:@selector(key4) forControlEvents:UIControlEventTouchDown];
    [_key4 setTitle:@"4" forState:UIControlStateNormal];
    _key4.titleLabel.font = [UIFont systemFontOfSize:18];
    _key4.frame = CGRectMake(21,192,40,40);
    [remoteView addSubview:_key4];
    
    _key5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key5 addTarget:self action:@selector(key5) forControlEvents:UIControlEventTouchDown];
    [_key5 setTitle:@"5" forState:UIControlStateNormal];
    _key5.titleLabel.font = [UIFont systemFontOfSize:18];
    _key5.frame = CGRectMake(145,192,40,40);
    [remoteView addSubview:_key5];
    
    _key6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key6 addTarget:self action:@selector(key6) forControlEvents:UIControlEventTouchDown];
    [_key6 setTitle:@"6" forState:UIControlStateNormal];
    _key6.titleLabel.font = [UIFont systemFontOfSize:18];
    _key6.frame = CGRectMake(270,192,40,40);
    [remoteView addSubview:_key6];
    
    _key7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key7 addTarget:self action:@selector(key7) forControlEvents:UIControlEventTouchDown];
    [_key7 setTitle:@"7" forState:UIControlStateNormal];
    _key7.titleLabel.font = [UIFont systemFontOfSize:18];
    _key7.frame = CGRectMake(21,269,40,40);
    [remoteView addSubview:_key7];
    
    _key8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key8 addTarget:self action:@selector(key8) forControlEvents:UIControlEventTouchDown];
    [_key8 setTitle:@"8" forState:UIControlStateNormal];
    _key8.titleLabel.font = [UIFont systemFontOfSize:18];
    _key8.frame = CGRectMake(145,269,40,40);
    [remoteView addSubview:_key8];
    
    _key9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_key9 addTarget:self action:@selector(key9) forControlEvents:UIControlEventTouchDown];
    [_key9 setTitle:@"9" forState:UIControlStateNormal];
    _key9.titleLabel.font = [UIFont systemFontOfSize:18];
    _key9.frame = CGRectMake(270,269,40,40);
    [remoteView addSubview:_key9];
    
//    _keyUp = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyUp addTarget:self action:@selector(keyUp) forControlEvents:UIControlEventTouchDown];
//    [_keyUp setTitle:@"Up" forState:UIControlStateNormal];
//    _keyUp.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyUp];
//    
//    _keyDown = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyDown addTarget:self action:@selector(keyDown) forControlEvents:UIControlEventTouchDown];
//    [_keyDown setTitle:@"Down" forState:UIControlStateNormal];
//    _keyDown.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyDown];
//    
//    _keyLeft = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyLeft addTarget:self action:@selector(keyLeft) forControlEvents:UIControlEventTouchDown];
//    [_keyLeft setTitle:@"Left" forState:UIControlStateNormal];
//    _keyLeft.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyLeft];
//    
//    _keyRight = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyRight addTarget:self action:@selector(keyRight) forControlEvents:UIControlEventTouchDown];
//    [_keyRight setTitle:@"Right" forState:UIControlStateNormal];
//    _keyRight.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyRight];
    
    _keyMenu = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyMenu addTarget:self action:@selector(keyMenu) forControlEvents:UIControlEventTouchDown];
    [_keyMenu setTitle:@"Menu" forState:UIControlStateNormal];
    _keyMenu.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyMenu.frame = CGRectMake(145,483,55,40);
    [remoteView addSubview:_keyMenu];
    
    _keyPrech = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyPrech addTarget:self action:@selector(keyPrev) forControlEvents:UIControlEventTouchDown];
    [_keyPrech setTitle:@"Prev" forState:UIControlStateNormal];
    _keyPrech.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyPrech.frame = CGRectMake(21,483,40,40);
    [remoteView addSubview:_keyPrech];
    
//    _keyGuide = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyGuide addTarget:self action:@selector(keyGuide) forControlEvents:UIControlEventTouchDown];
//    [_keyGuide setTitle:@"Guide" forState:UIControlStateNormal];
//    _keyGuide.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyGuide];
    
    _keyInfo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyInfo addTarget:self action:@selector(keyInfo) forControlEvents:UIControlEventTouchDown];
    [_keyInfo setTitle:@"Info" forState:UIControlStateNormal];
    _keyInfo.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyInfo.frame = CGRectMake(270,483,40,40);
    [remoteView addSubview:_keyInfo];
    
//    _keyEnter = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    [_keyEnter addTarget:self action:@selector(keyEnter) forControlEvents:UIControlEventTouchDown];
//    [_keyEnter setTitle:@"Enter" forState:UIControlStateNormal];
//    _keyEnter.frame = CGRectMake(80,50,160,40);
//    [self.view addSubview:_keyEnter];
    
    _keySource = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keySource addTarget:self action:@selector(keySource) forControlEvents:UIControlEventTouchDown];
    [_keySource setTitle:@"Source" forState:UIControlStateNormal];
    _keySource.titleLabel.font = [UIFont systemFontOfSize:18];
    _keySource.frame = CGRectMake(20,37,59,49);
    [remoteView addSubview:_keySource];
    
    _keyMute = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyMute addTarget:self action:@selector(keyMute) forControlEvents:UIControlEventTouchDown];
    [_keyMute setTitle:@"Mute" forState:UIControlStateNormal];
    _keyMute.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyMute.frame = CGRectMake(143,420,45,40);
    [remoteView addSubview:_keyMute];
    
    _keyChup = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyChup addTarget:self action:@selector(keyChUp) forControlEvents:UIControlEventTouchDown];
    [_keyChup setTitle:@"Ch+" forState:UIControlStateNormal];
    _keyChup.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyChup.frame = CGRectMake(270,353,40,40);
    [remoteView addSubview:_keyChup];
    
    _keyChdown = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_keyChdown addTarget:self action:@selector(keyChDown) forControlEvents:UIControlEventTouchDown];
    [_keyChdown setTitle:@"Ch-" forState:UIControlStateNormal];
    _keyChdown.titleLabel.font = [UIFont systemFontOfSize:18];
    _keyChdown.frame = CGRectMake(270,420,40,40);
    [remoteView addSubview:_keyChdown];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (void)stream:(NSStream *)aStream handleEvent:(NSStreamEvent)eventCode
    {
        NSLog(@"stream event %u", eventCode);
        
        switch (eventCode) {
			
            case NSStreamEventOpenCompleted:
			NSLog(@"Stream opened");
			break;
            case NSStreamEventHasBytesAvailable:
            
			if (aStream == inputStream) {
				
				uint8_t buffer[1024];
				int len;
				
				while ([inputStream hasBytesAvailable]) {
					len = [inputStream read:buffer maxLength:sizeof(buffer)];
					if (len > 0) {
						
						NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
						
						if (nil != output) {
                            
							NSLog(@"server said: %@", output);
						}
					}
				}
			}
			break;
            
			
            case NSStreamEventErrorOccurred:
			
                NSLog(@"Cannot connect to the host!");
                remoteView.hidden = true;
                statusLabel.text = @"Cannot Connect to Server";
                retry.hidden = false;
                break;
			
            case NSStreamEventEndEncountered:
            
                [aStream close];
                [aStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
                aStream = nil;
                break;
                
            default:
                NSLog(@"Unknown event:%lu", eventCode);
        }
    }
    
- (void)endNetworkCommunication
    {
        [inputStream close];
        [outputStream close];
    }
    
- (void)initNetworkCommunication
{
    CFReadStreamRef readStream;
    CFWriteStreamRef writeStream;
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"XXX.XXX.XXX.XXX", 82, &readStream, &writeStream);
    inputStream = (__bridge NSInputStream *)readStream;
    outputStream = (__bridge NSOutputStream *)writeStream;
    
    [inputStream setDelegate:self];
    [outputStream setDelegate:self];
    
    [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    
    [inputStream open];
    [outputStream open];
}
    
-(void)sendCommand:(NSString*)command
{
    NSString *response = [NSString stringWithFormat:@"cmd:%@", command];
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    [outputStream write:[data bytes] maxLength:[data length]];
}

-(void)volumeUp
{
    [self sendCommand:@"volup"];
}

-(void)volumeDown
{
    [self sendCommand:@"voldown"];
}

-(void)powerOff
{
    [self sendCommand:@"poweroff"];
}

-(void)key0
{
    [self sendCommand:@"0"];
}

-(void)key1
{
    [self sendCommand:@"1"];
}

-(void)key2
{
    [self sendCommand:@"2"];
}

-(void)key3
{
    [self sendCommand:@"3"];
}

-(void)key4
{
    [self sendCommand:@"4"];
}

-(void)key5
{
    [self sendCommand:@"5"];
}

-(void)key6
{
    [self sendCommand:@"6"];
}

-(void)key7
{
    [self sendCommand:@"7"];
}

-(void)key8
{
    [self sendCommand:@"8"];
}

-(void)key9
{
    [self sendCommand:@"9"];
}

-(void)keyUp
{
    [self sendCommand:@"up"];
}

-(void)keyDown
{
    [self sendCommand:@"down"];
}

-(void)keyRight
{
    [self sendCommand:@"right"];
}

-(void)keyLeft
{
    [self sendCommand:@"left"];
}

-(void)keyMenu
{
    [self sendCommand:@"menu"];
}

-(void)keyPrev
{
    [self sendCommand:@"prech"];
}

-(void)keyGuide
{
    [self sendCommand:@"guide"];
}

-(void)keyInfo
{
    [self sendCommand:@"info"];
}

-(void)keyEnter
{
    [self sendCommand:@"enter"];
}

-(void)keySource
{
    [self sendCommand:@"source"];
}

-(void)keyMute
{
    [self sendCommand:@"mute"];
}

-(void)keyChUp
{
    [self sendCommand:@"chup"];
}

-(void)keyChDown
{
    [self sendCommand:@"chdown"];
}

@end
