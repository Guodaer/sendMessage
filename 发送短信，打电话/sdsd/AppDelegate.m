//
//  AppDelegate.m
//  sdsd
//
//  Created by 郭达 on 15/6/17.
//  Copyright (c) 2015年 guoda. All rights reserved.
//

#import "AppDelegate.h"
#import <MessageUI/MessageUI.h>
@interface AppDelegate ()<MFMessageComposeViewControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //判断用户设备能否发送信息 不能就返回
    
//    if (![MFMessageComposeViewController canSendText]) {
//        
//        
//        
//        
//        return true;
//        
//    }
//    
//    //实例化一个控制器
//    
//    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
//    
//    //设置短信内容
//    
//    //收件人
//    
//    messageController.recipients = @[@"18200000000"];
//    
//    //短信内容
//    
//    messageController.body = @"叫你一声二大爷,可否";
//    
//    
//    
//    messageController.messageComposeDelegate = self;
//    
//    
//    
//    //模态出编辑短信控制器
//    
//    [self.window.rootViewController presentViewController:messageController animated:YES completion:nil];
//    
//   // 接着是代理.
    
    //在发送完成后调用代理方法关闭窗口
    
    
        NSURL *url = [NSURL URLWithString:@"tel://10086"];
    
    
    
        [[UIApplication sharedApplication] openURL:url];
    
        NSLog(@"打了");
    
    return YES;
}
-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result

{
    
    
    
    NSString *str = @"result";
    
    //发送的三种结果 成功 失败 取消
    
    if (result == MessageComposeResultSent) {
        
        str = @"发送成功";
        
        
        
    }else if (result == MessageComposeResultFailed)
        
    {
        
        str = @"发送失败";
        
    }else
        
    {
        
        str = @"发送已取消";
        
    }
    
    //将控制器模态回去
    
    [self.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
    
    //提示发送结果
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"发送结果" message:str delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    
    [alertView show];
    
    
    
    
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
