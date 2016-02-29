//
//  BasicGameViewController.m
//  HelloWorld
//
//  Created by Michael Fuller on 4/5/15.
//  Copyright (c) 2015 Demo. All rights reserved.
//

#import "BasicGameViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <SpriteKit/SpriteKit.h>

@interface BasicGameViewController ()

@end

@implementation BasicGameViewController
{
    AVPlayer *_player;
    SKVideoNode *_videoNode;
}


-(SCNScene *) generateScene {
    
#if 0 //mabiao
    SCNScene * scene = [SCNScene scene];

    SCNNode * world = [SCNNode node];
    
    [scene.rootNode addChildNode:world];

    SCNText * text = [SCNText textWithString:@"Hello World" extrusionDepth:1];
    SCNNode * textNode = [SCNNode nodeWithGeometry:text];
    textNode.position = SCNVector3Make(-20, 20, 0);
    textNode.categoryBitMask = 3;
    text.alignmentMode = kCAAlignmentCenter;
    text.firstMaterial.diffuse.contents = [UIColor redColor];
    
    GLKQuaternion textOrientation = GLKQuaternionMakeWithAngleAndAxis(1.57079633f, 1, 0, 0);
    textNode.orientation = SCNVector4Make(textOrientation.x, textOrientation.y, textOrientation.z, textOrientation.w);
    
    [world addChildNode:textNode];
#else
//    NSURL *fileURL = [NSURL fileURLWithPath: [[NSBundle mainBundle] pathForResource:@"loop" ofType:@"mov"]];
//    NSURL *url = [NSURL URLWithString:@"http://192.166.62.66:8060/live/MultiAudioTrak_800.m3u8?offset=14400&duration=14400&token=undefined&userid=&platform=5&channelid=11&deviceid=5AAAADAD6&location=100085&clientsessionid=42201"];
//    _player = [AVPlayer playerWithURL: url];
//
//    _videoNode = [[SKVideoNode alloc] initWithAVPlayer:_player];
//    _videoNode.size = CGSizeMake(200, 100);
//    _videoNode.position = CGPointMake(150, 150);
//    
//    [world addChildNode:_videoNode];
//    
//    _player.volume = 1.0;
//    [_videoNode play];
    
//    // create a new scene
//    SCNScene *scene = [SCNScene sceneNamed:@"art.scnassets/ship.scn"];
//    
//    // create and add a camera to the scene
//    SCNNode *cameraNode = [SCNNode node];
//    cameraNode.camera = [SCNCamera camera];
//    [scene.rootNode addChildNode:cameraNode];
//    
//    // place the camera
//    cameraNode.position = SCNVector3Make(0, 0, 15);
//    
//    // create and add a light to the scene
//    SCNNode *lightNode = [SCNNode node];
//    lightNode.light = [SCNLight light];
//    lightNode.light.type = SCNLightTypeOmni;
//    lightNode.position = SCNVector3Make(0, 10, 10);
//    [scene.rootNode addChildNode:lightNode];
//
//    // create and add an ambient light to the scene
//    SCNNode *ambientLightNode = [SCNNode node];
//    ambientLightNode.light = [SCNLight light];
//    ambientLightNode.light.type = SCNLightTypeAmbient;
//    ambientLightNode.light.color = [UIColor darkGrayColor];
//    [scene.rootNode addChildNode:ambientLightNode];
//    
//    // retrieve the ship node
//    SCNNode *ship = [scene.rootNode childNodeWithName:@"ship" recursively:YES];
//    
//    // animate the 3d object
//    [ship runAction:[SCNAction repeatActionForever:[SCNAction rotateByX:0 y:2 z:0 duration:1]]];
    
    SCNScene *scene = [SCNScene scene];
    
    SCNGeometry *boxGeometry = [SCNBox boxWithWidth:10.0 height:20.0 length:20.0 chamferRadius:0.8];
    SCNNode *boxNode = [SCNNode nodeWithGeometry:boxGeometry];
    boxNode.position = SCNVector3Make(-20, 20, 0);
    boxNode.categoryBitMask = 3;
    [scene.rootNode addChildNode:boxNode];
    
    SCNNode *lightNode = [SCNNode node];
    lightNode.light = [SCNLight light];
    lightNode.light.type = SCNLightTypeOmni;
    lightNode.position = SCNVector3Make(0, 0, 50);
    [scene.rootNode addChildNode:lightNode];
    
    SCNNode *lightNode1 = [SCNNode node];
    lightNode1.light = [SCNLight light];
    lightNode1.light.type = SCNLightTypeOmni;
    lightNode1.position = SCNVector3Make(0, 0, -50);
    [scene.rootNode addChildNode:lightNode1];
    
    SCNMaterial *greenMaterial              = [SCNMaterial material];
    greenMaterial.diffuse.contents          = [UIColor greenColor];
    greenMaterial.locksAmbientWithDiffuse   = YES;
    
    SCNMaterial *redMaterial                = [SCNMaterial material];
    redMaterial.diffuse.contents            = [UIColor redColor];
    redMaterial.locksAmbientWithDiffuse     = YES;
    
    SCNMaterial *blueMaterial               = [SCNMaterial material];
    blueMaterial.diffuse.contents           = [UIColor blueColor];
    blueMaterial.locksAmbientWithDiffuse    = YES;
    
    SCNMaterial *yellowMaterial             = [SCNMaterial material];
    yellowMaterial.diffuse.contents         = [UIColor yellowColor];
    yellowMaterial.locksAmbientWithDiffuse  = YES;
    
    SCNMaterial *purpleMaterial             = [SCNMaterial material];
    purpleMaterial.diffuse.contents         = [UIColor purpleColor];
    purpleMaterial.locksAmbientWithDiffuse  = YES;
    
    SCNMaterial *magentaMaterial            = [SCNMaterial material];
    magentaMaterial.diffuse.contents        = [UIColor magentaColor];
    magentaMaterial.locksAmbientWithDiffuse = YES;
    
    
    boxGeometry.materials =  @[greenMaterial,  redMaterial,    blueMaterial,
                       yellowMaterial, purpleMaterial, magentaMaterial];
    //*/
    
    GLKQuaternion textOrientation = GLKQuaternionMakeWithAngleAndAxis(-1.57079633f, 1, 0, 0);
    boxNode.orientation = SCNVector4Make(textOrientation.x, textOrientation.y, textOrientation.z, textOrientation.w);
    
//    NSURL *fileURL = [NSURL fileURLWithPath: [[NSBundle mainBundle] pathForResource:@"loop" ofType:@"mov"]];
    //NSURL *url = [NSURL URLWithString:@"http://192.166.62.66:8060/live/MultiAudioTrak_800.m3u8?offset=14400&duration=14400&token=undefined&userid=&platform=5&channelid=11&deviceid=5AAAADAD6&location=100085&clientsessionid=42201"];
    //NSURL *url = [NSURL URLWithString:@"https://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8"];
    NSURL *url = [NSURL URLWithString:@"http://192.166.66.99:8061/live/yeyan_3750.m3u8?"];
    AVPlayer *player = [AVPlayer playerWithURL: url];
    
    [player play];
    
    AVPlayerLayer *playerLayer = [[AVPlayerLayer alloc] init];
    playerLayer.player = player;
    playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    playerLayer.frame = CGRectMake(0,0,1000,1000);
    
    CGSize size = CGSizeMake(1000, 1000);
    SKVideoNode *videoNode = [SKVideoNode videoNodeWithAVPlayer:player];
    videoNode.size = size;
    videoNode.position = CGPointMake(size.width * 0.5, size.height * 0.5);
    
    SKScene *videoScene = [SKScene sceneWithSize:size];
    [videoScene addChild:videoNode];
    
    //SCNNode *videoWrapperNode = [SCNNode nodeWithGeometry:[SCNSphere sphereWithRadius:10]];
    SCNMaterial *material = boxGeometry.materials[1];
    material.diffuse.contents = videoScene;
    
    [videoNode play];

    //[boxNode runAction:[SCNAction repeatActionForever:[SCNAction rotateByX:0 y:2 z:0 duration:1]]];
#endif
    return scene;
}

-(void) afterGenerateScene {
    SCNViewpoint * viewpoint = [self generateGhostViewpoint];
    [self.scene.rootNode addChildNode:viewpoint];
    
    [self setViewpointTo:viewpoint];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    [super glkView:view drawInRect:rect];
    
    if (_requestExit) {
        [self exitLogic];
    }
}


-(void) exitLogic {
    [self setPaused:true];
    [self performSegueWithIdentifier:@"exitToHome" sender:self];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count] < 1) return;
    
    if ([touches count] >= 3) {
        _requestExit = YES;
    }
    
    CGPoint point = [[touches anyObject] locationInView:[self view]];
    
    float adjustedX = point.x * self.nativeScale;
    float adjustedY = (self.profile.landscapeView ? self.profile.physicalHeightPX : self.profile.physicalWidthPX) - (point.y * self.nativeScale);
    
    BOOL resetView = NO;
    
    if (self.profile.basicView == YES) {
        
        BOOL inVirtualView = (adjustedX > self.profile.virtualOffsetLeft && adjustedX < self.profile.virtualOffsetLeft + self.profile.virtualWidthPX) && (adjustedY > self.profile.virtualOffsetBottom && adjustedY < self.profile.virtualOffsetBottom + self.profile.virtualHeightPX);
        
        if (self.profile.viewportCount == 1) {
            
            if (inVirtualView) {
                //forcedTapX = adjustedX - self.profile.virtualOffsetLeft;
                //forcedTayY = adjustedY - self.profile.virtualOffsetBottom;
            } else {
                resetView = YES;
            }
            
        } else {
            
            if (inVirtualView) {
                
                BOOL inLeftEye = (adjustedX > self.profile.virtualOffsetLeft && adjustedX < self.profile.virtualOffsetLeft + (self.profile.virtualWidthPX / 2)) && (adjustedY > self.profile.virtualOffsetBottom && adjustedY < self.profile.virtualOffsetBottom + self.profile.virtualHeightPX);
                if (inLeftEye) {
                    // Tap
                    //forcedTapX = adjustedX - self.profile.virtualOffsetLeft;
                    //forcedTayY = adjustedY - self.profile.virtualOffsetBottom;
                } else {
                    resetView = YES;
                }
                
            } else {
                resetView = YES;
            }
        }
    } else {
        resetView = YES;
    }
    
    if (resetView) {
        [self.profile.tracker calibrate];
    }
}

@end
