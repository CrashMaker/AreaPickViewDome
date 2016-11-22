//
//  ViewController.m
//  AreaPicker
//
//  Created by boundlessocean on 2016/11/21.
//  Copyright © 2016年 ocean. All rights reserved.
//

#import "ViewController.h"
#import "BLAreaPickerView.h"
@interface ViewController ()<BLPickerViewDelegate>

@property (nonatomic, strong) BLAreaPickerView *pickView;
@property (nonatomic, strong) UITextField *f1;
@property (nonatomic, strong) UITextField *f2;
@property (nonatomic, strong) UITextField *f3;

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    _f1 = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
    _f2 = [[UITextField alloc] initWithFrame:CGRectMake(100, 160, 200, 40)];
    _f3 = [[UITextField alloc] initWithFrame:CGRectMake(100, 220, 200, 40)];
    
    _f1.placeholder = @"省";
    _f2.placeholder = @"市";
    _f3.placeholder = @"区";
    
    _f1.font = [UIFont systemFontOfSize:30];
    _f2.font = [UIFont systemFontOfSize:30];
    _f3.font = [UIFont systemFontOfSize:30];
    
    [self.view addSubview:_f1];
    [self.view addSubview:_f2];
    [self.view addSubview:_f3];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    _pickView = [[BLAreaPickerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    _pickView.pickViewDelegate = self;
    [_pickView bl_show];
}

#pragma mark - - BLPickerViewDelegate
- (void)bl_selectedAreaResultWithProvince:(NSString *)provinceTitle city:(NSString *)cityTitle area:(NSString *)areaTitle{
    NSLog(@"%@,%@,%@",provinceTitle,cityTitle,areaTitle);
    _f1.text = provinceTitle;
    _f2.text = cityTitle;
    _f3.text = areaTitle;
}

@end
