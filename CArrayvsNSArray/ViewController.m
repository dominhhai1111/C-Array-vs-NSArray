//
//  ViewController.m
//  CArrayvsNSArray
//
//  Created by Do Minh Hai on 8/20/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
   [super viewDidLoad];
    [self QuickSort];
}
-(void) QuickSort
{
    int a[8][8];
    int b[8][8];
    
    for(int i=0; i<8; i++)
    {
        for(int j=0; j<8 ; j++)
        {
            a[i][j]= arc4random()%1000;
            b[i][j]= a[i][j];
        }
    }
   
    int temp;
    for (int i=0; i<8; i++) {
        for (int j=0; j<8; j++) {
            for (int m=0; m<8; m++) {
                for (int n=0; n<8 ; n++) {
                    if (a[m][n]<a[i][j]) {
                        temp=a[i][j];
                        a[i][j]=a[m][n];
                        a[m][n]=temp;
                    }
                }
            }
        }
    }
    for (int i=0; i<8; i++) {
        for (int j=0; j<8; j++) {
            for (int m=0; m<8; m++) {
                for (int n=0; n<8; n++) {
                    if (a[i][j]==b[m][n]) {
                        printf("a[%d][%d]=",m,n);
                    }
                }
            }
            printf("%d", a[i][j]);
            printf("\n");
        }
    }
}




@end
