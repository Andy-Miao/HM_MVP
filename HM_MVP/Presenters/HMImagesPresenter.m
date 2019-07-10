//
//  HMImagesPresenter.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImagesPresenter.h"
#import "HMImageCollectionViewCell.h"
#import "HMImageViewController.h"


@implementation HMImagesPresenter


- (instancetype)initWithView:(UICollectionView *)view
{
    if (self = [super init]) {
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
    }
    
    return self;
}

- (void)presentWithModel:(HMImages *)model viewController:(UIViewController *)viewController
{
    self.photoList = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view reloadData];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoList.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HMImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HMImageCollectionViewCell" forIndexPath:indexPath];
    cell.presenter.photo = self.photoList.images[indexPath.row];
    [cell.presenter present];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(CGRectGetHeight(self.view.bounds), CGRectGetHeight(self.view.bounds));
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.photoList.images[indexPath.row];
    if ([post isKindOfClass:[HMImage class]]) {
        HMImageViewController *imageViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([HMImageViewController class])];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    }
    
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}
@end
