//
//  TBMainViewController.m
//  TBox
//
//  Created by kevin chen on 13-10-24.
//  Copyright (c) 2013年 MMS. All rights reserved.
//

#import "TBMainViewController.h"
#import "TBMonthListViewController.h"

@interface TBMainViewController ()
{
    /*
     2012.07.06
    
     一、短期贷款
     1.六个月（含）5.6%
     2.六个月至一年（含）6%
     二、中长期贷款
     1.一至三年（含）6.15%
     2.三至五年（含）6.4%
     3.五年以上 6.55%
     
     2012.07.06
     5年以内(含)
     4.00
     
     5年以上
     4.50
     
     等额本息计算公式：
     〔贷款本金×月利率×（1＋月利率）＾还款月数〕÷〔（1＋月利率）＾还款月数－1〕
     等额本金计算公式：
     每月还款金额 = （贷款本金 ÷ 还款月数）+（本金 — 已归还本金累计额）×每月利率
     
     
     其中＾符号表示乘方。
    */
}
-(IBAction)firstViewButtonAction:(id)sender;
-(IBAction)selectMonthList:(id)sender;

-(float)getBenXiMoney:(NSInteger)money year:(NSInteger)year;

@end

@implementation TBMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSUserDefaults *loanParameter = [NSUserDefaults standardUserDefaults];
//    NSString *monthStr = [NSString stringWithFormat:@"%d",row];
//    [loanParameter setObject: monthStr forKey:@"month"];
    // Do any additional setup after loading the view from its nib.
    loanMonthArray = [[NSArray alloc]initWithObjects:@"半年(6个月)",@"一年",@"二年",@"三年",@"四年",@"五年",@"六年",@"七年",@"八年",@"九年",@"十年",
                      @"十一年",@"十二年",@"十三年",@"十四年",@"十五年",@"十六年",@"十七年",@"十八年",@"十九年",@"二十年",@"二十年",@"二十一年",@"二十二年",@"二十三年",@"二十四年",@"二十五年",@"二十六年",@"二十七年",@"二十八年",@"二十九年",@"三十年",nil];
    
}
- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"will appear");
}

//first view done
-(IBAction)firstViewButtonAction:(id)sender{
   
//    NSInteger money = [_DKMoneyLabel.text integerValue];
    
}
-(IBAction)selectMonthList:(id)sender{
    TBMonthListViewController *monthListViewController = [[TBMonthListViewController alloc]init];
    [self.navigationController pushViewController:monthListViewController animated:YES];
}

/*
 等额本息计算公式：
 〔贷款本金×月利率×（1＋月利率）＾还款月数〕÷〔（1＋月利率）＾还款月数－1〕
 */
-(float)getBenXiMoney:(NSInteger)money year:(NSInteger)year{
//    float MonthlyRate;
    
    return 0.0;
    
}

#pragma mark - UIPickerViewDataSource
/*
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
	return [self.view viewWidth];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
	return [CustomView viewHeight];
}
*/
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
	return [loanMonthArray count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
	return 1;
}


#pragma mark - UIPickerViewDelegate

// tell the picker which view to use for a given component and row, we have an array of views to show

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return (NSString*)[loanMonthArray objectAtIndex:row];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end