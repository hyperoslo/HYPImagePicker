//
//  HYPViewController.m
//  HYPImagePicker
//
//  Created by Elvis Nuñez on 10/16/2014.
//  Copyright (c) 2014 Elvis Nuñez. All rights reserved.
//

#import "HYPViewController.h"

#import "HYPImagePicker.h"

@interface HYPViewController () <HYPImagePickerDelegate>

@property (nonatomic, strong) UIButton *imageButton;
@property (nonatomic, strong) HYPImagePicker *imagePicker;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation HYPViewController

#pragma mark - Getters

- (UIButton *)imageButton
{
    if (_imageButton) return _imageButton;

    _imageButton = [[UIButton alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 200.0f, 50.0f)];
    [_imageButton setTitle:@"Let me take a selfie" forState:UIControlStateNormal];
    [_imageButton addTarget:self action:@selector(imageButtonPressedAction) forControlEvents:UIControlEventTouchUpInside];

    return _imageButton;
}

- (HYPImagePicker *)imagePicker
{
    if (_imagePicker) return _imagePicker;

    _imagePicker = [[HYPImagePicker alloc] initForViewController:self usingCaption:@"Choose a funny image"];
    _imagePicker.delegate = self;
    
    return _imagePicker;
}

- (UIImageView *)imageView
{
    if (_imageView) return _imageView;

    _imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    _imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _imageView.contentMode = UIViewContentModeScaleAspectFit;

    return _imageView;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.view addSubview:self.imageView];
    [self.view addSubview:self.imageButton];
}

#pragma mark - Actions

- (void)imageButtonPressedAction
{
    [self.imagePicker invokeCamera];
}

#pragma mark - HYPImagePickerDelegate

- (void)imagePicker:(HYPImagePicker *)imagePicker didPickedImage:(UIImage *)image
{
    self.imageView.image = image;
}

@end
