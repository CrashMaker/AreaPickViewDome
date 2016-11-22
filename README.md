# AreaPickViewDome
简单的地址选择器
使用方法：
```
_pickView = [[BLAreaPickerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
_pickView.pickViewDelegate = self;
[_pickView bl_show];
```
代理：
```
#pragma mark - - BLPickerViewDelegate
- (void)bl_selectedAreaResultWithProvince:(NSString *)provinceTitle city:(NSString *)cityTitle area:(NSString *)areaTitle{
    NSLog(@"%@,%@,%@",provinceTitle,cityTitle,areaTitle);
}
```

可设置的属性:
```
/** 标题大小 */
@property (nonatomic, strong)UIFont  *titleFont;
/** 选择器背景颜色 */
@property (nonatomic, strong)UIColor *pickViewBackgroundColor;
/** 选择器头部视图颜色 */
@property (nonatomic, strong)UIColor *topViewBackgroundColor;
/** 取消按钮颜色 */
@property (nonatomic, strong)UIColor *cancelButtonColor;
/** 确定按钮颜色 */
@property (nonatomic, strong)UIColor *sureButtonColor;
```
