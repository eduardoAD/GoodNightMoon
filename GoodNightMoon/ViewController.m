//
//  ViewController.m
//  GoodNightMoon
//
//  Created by Eduardo Alvarado Díaz on 10/9/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewImageCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property NSMutableArray *moonImages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moonImages = [NSMutableArray array];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_1"]];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_2"]];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_3"]];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_4"]];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_5"]];
    [self.moonImages addObject:[UIImage imageNamed:@"moon_6"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.moonImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionViewImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.moonImages objectAtIndex:indexPath.row];
    return cell;
}

@end
