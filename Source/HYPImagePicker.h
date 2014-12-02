@import UIKit;
@import AssetsLibrary;

@protocol HYPImagePickerDelegate;

@interface HYPImagePicker : NSObject

@property (nonatomic, weak) id <HYPImagePickerDelegate> delegate;

- (instancetype)initForViewController:(UIViewController *)viewController usingCaption:(NSString *)caption;

- (void)invokeCamera;

@end

@protocol HYPImagePickerDelegate <NSObject>

- (void)imagePicker:(HYPImagePicker *)imagePicker didPickedImage:(UIImage *)image;

@end
