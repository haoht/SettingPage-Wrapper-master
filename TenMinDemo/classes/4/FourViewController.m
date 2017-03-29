//
//  CYXFourViewController.m
//  TenMinDemo
//
//  Created by liman on 15/11/15.
//  Copyright © 2015年 liman. All rights reserved.
//
#define identifier @"FourCell"

#import "FourViewController.h"
#import "FourCell.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SettingItem *item1 = [SettingItem itemWithTitle:@"用户名" subTitle:@"小猫" imageName:@"1.png" switchType:0 accessoryType:0 center:NO];
    SettingItem *item2 = [SettingItem itemWithTitle:@"Wi-Fi" subTitle:@"关闭" imageName:@"2.png" switchType:0 accessoryType:1 center:NO];
    SettingItem *item3 = [SettingItem itemWithTitle:@"我去好评" subTitle:nil imageName:@"3.png" switchType:0 accessoryType:1 center:NO];
    SettingItem *item4 = [SettingItem itemWithTitle:@"开启通知" subTitle:nil imageName:@"4.png" switchType:1 accessoryType:0 center:NO];
    SettingItem *item5 = [SettingItem itemWithTitle:@"关注我们" subTitle:nil imageName:@"5.png" switchType:0 accessoryType:1 center:NO];
    SettingItem *item6 = [SettingItem itemWithTitle:@"VPN" subTitle:nil imageName:@"6.png" switchType:2 accessoryType:0 center:NO];
    SettingItem *item7 = [SettingItem itemWithTitle:@"退出登录" subTitle:nil imageName:@" " switchType:0 accessoryType:0 center:YES];
    
//    SettingItem *item11 = [SettingItem itemWithTitle:@"111111" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item22 = [SettingItem itemWithTitle:@"222222" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item33 = [SettingItem itemWithTitle:@"333333" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item44 = [SettingItem itemWithTitle:@"444444" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item55 = [SettingItem itemWithTitle:@"555555" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item66 = [SettingItem itemWithTitle:@"666666" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item77 = [SettingItem itemWithTitle:@"777777" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item111 = [SettingItem itemWithTitle:@"111111" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item222 = [SettingItem itemWithTitle:@"222222" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item333 = [SettingItem itemWithTitle:@"333333" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item444 = [SettingItem itemWithTitle:@"444444" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item555 = [SettingItem itemWithTitle:@"555555" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item666 = [SettingItem itemWithTitle:@"666666" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];
//    SettingItem *item777 = [SettingItem itemWithTitle:@"777777" subTitle:nil imageName:@" " switchType:0 accessoryType:1 center:NO];

    
    self.cells = @[
                   @[item1, item2],
                   @[item3, item4],
                   @[item5, item6],
                   @[item7],
                   
//                   @[item11],
//                   @[item22],
//                   @[item33],
//                   @[item44],
//                   @[item55],
//                   @[item66],
//                   @[item77],
//                   @[item111],
//                   @[item222],
//                   @[item333],
//                   @[item444],
//                   @[item555],
//                   @[item666],
//                   @[item777],
                   ];
}

#pragma mark - 父类方法
- (UITableViewCell *)settingTableView:(UITableView *)tableView settingItem:(SettingItem *)item cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FourCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell  = [[FourCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    
    cell.item = item;
    cell.delegate = self;
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0)
    {
        return CGFLOAT_MIN;
    }
    
    return tableView.sectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return tableView.sectionFooterHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [UIView new];
//    view.backgroundColor = [UIColor lightGrayColor];
    
    return view;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view = [UIView new];
//    view.backgroundColor = [UIColor darkGrayColor];
    
    return view;
}

#pragma mark - BaseSettingCellDelegate
// 监控UISwitch控件值的改变
- (void)baseSettingCell:(BaseSettingCell *)cell switchChanged:(UISwitch *)switchView
{
    if (switchView.on)
    {
        NSLog(@"%@: on", cell.item.title);
    }
    else
    {
        NSLog(@"%@: off", cell.item.title);
    }
}

@end
