# DLRUIKit

[![CI Status](http://img.shields.io/travis/detroit-labs/dlr-uikit-ios.svg?style=flat)](https://travis-ci.org/detroit-labs/dlr-uikit-ios)
[![Version](https://img.shields.io/cocoapods/v/DLRUIKit.svg?style=flat)](http://cocoadocs.org/docsets/DLRUIKit)
[![License](https://img.shields.io/cocoapods/l/DLRUIKit.svg?style=flat)](http://cocoadocs.org/docsets/DLRUIKit)
[![Platform](https://img.shields.io/cocoapods/p/DLRUIKit.svg?style=flat)](http://cocoadocs.org/docsets/DLRUIKit)

## Installation

DLRUIKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```rb
pod "DLRUIKit"
```

## Author

Nathan Walczak, nate.walczak@detroitlabs.com

## License

DLRUIKit is available under the MIT license. See the LICENSE file for more info.

## Examples

### UIButton Category Examples

Normal State | Highlighted State | Disabled State
------------ | ----------------- | --------------
![UIButton normal](README/Images/UIButton-normal.png) | ![UIButton highlighted](README/Images/UIButton-highlighted.png) | ![UIButton disabled](README/Images/UIButton-disabled.png)

##### UIButton dlr_setBackgroundColor: forState:

```objc
[self.veryNiceButton dlr_setBackgroundColor:[UIColor brownColor] forState:UIControlStateNormal];
[self.veryNiceButton dlr_setBackgroundColor:[UIColor blueColor] forState:UIControlStateHighlighted];
[self.veryNiceButton dlr_setBackgroundColor:[UIColor lightGrayColor] forState:UIControlStateDisabled];
```

##### UIView dlr_applyRoundedCornersWithRadius:

```objc
[self.veryNiceButton dlr_applyRoundedCornersWithRadius:18.0f];
```

### UIColor Category Examples

![UIColor](README/Images/UIColor.png)

##### UIColor dlr_colorWithRed: green: blue:

```objc
self.navyBlueView.backgroundColor = [UIColor dlr_colorWithRed:25 green:116 blue:210];
self.outrageousOrangeView.backgroundColor = [UIColor dlr_colorWithRed:255 green:110 blue:74];
self.purpleHeartView.backgroundColor = [UIColor dlr_colorWithRed:116 green:66 blue:200];
self.tumbleweedView.backgroundColor = [UIColor dlr_colorWithRed:222 green:170 blue:136];

self.unmellowYellowView.backgroundColor = [UIColor dlr_colorWithRed:255 green:255 blue:102 alpha:0.6f];
```

##### UIView dlr_applyRoundedCornersWithRadius:

```objc
[self.navyBlueView dlr_applyRoundedCornersWithRadius:18.0f];
[self.outrageousOrangeView dlr_applyRoundedCornersWithRadius:18.0f];
[self.purpleHeartView dlr_applyRoundedCornersWithRadius:18.0f];
[self.tumbleweedView dlr_applyRoundedCornersWithRadius:18.0f];

[self.unmellowYellowView dlr_applyRoundedCornersWithRadius:18.0f];
```

### UIViewController+DLRParentViewController Category Examples

Screen Shot | Storyboard
----------- | ----------
![DLRParentViewController](README/Images/DLRParentViewController.png) | ![DLRParentViewController storyboard](README/Images/DLRParentViewController-storyboard.png)

##### UIViewController dlr_instantiateViewController

```objc
ChildViewController *childViewController = [ChildViewController dlr_instantiateViewController];
```

##### UIViewController dlr_addToParentViewController:

```objc
[childViewController dlr_addToParentViewController:self parentView:self.containerView];
```

##### UIView dlr_applyRoundedCornersWithRadius:

```objc
[self.containerView dlr_applyRoundedCornersWithRadius:18.0f];
```

### UIViewController+DLRStoryboardManager Category Examples

Create one category for each storyboard.

```objc
#import "DLRStoryboardManager+Main.h"

#import "ChildViewController.h"

static NSString * const kStoryboardName = @"Main"; // Main.storyboard

@implementation DLRStoryboardManager (Main)

+ (void)load {
  [self registerStoryboardName:kStoryboardName
      withStoryboardIdentifier:NSStringFromClass([ChildViewController class])];
}

@end
```

These categories can be generated.

```sh
bin/DLRStoryboardManager.sh DLRUIKitExampleApp/Main.storyboard
```

Lets instantiate a child view controller.

```objc
ChildViewController *childViewController = [ChildViewController dlr_instantiateViewController];
```

### UIDevice Category Examples

##### User Interface Idiom

```objc
/** Returns true if current device has an idiom of pad. */
+ (BOOL)dlr_isUserInterfaceIdiomPad;
```

##### System Version

```objc
/** Returns true if the curent device system version is equal to version. */
+ (BOOL)dlr_isSystemVersionEqualToVersion:(NSString *)version;

/** Returns true if the curent device system version is greater than version. */
+ (BOOL)dlr_isSystemVersionGreaterThanVersion:(NSString *)version;

/** Returns true if the curent device system version is greater than or equal to version. */
+ (BOOL)dlr_isSystemVersionGreaterThanOrEqualToVersion:(NSString *)version;

/** Returns true if the curent device system version is less than version. */
+ (BOOL)dlr_isSystemVersionLessThanVersion:(NSString *)version;

/** Returns true if the curent device system version is less than or equal to version. */
+ (BOOL)dlr_isSystemVersionLessThanOrEqualToVersion:(NSString *)version;
```

### DLRLayoutConstraint Examples

```objc
/** Resets the constant back to the initial value after awake from nib. */
- (void)dlr_applyInitialConstant;
```

```objc
@property (weak, nonatomic) IBOutlet DLRLayoutConstraint *layoutConstraint;

// initial value of layoutConstraint.constant is 50

layoutConstraint.constant = -10;

// resets layoutConstraint.constant back to 50
[layoutConstraint dlr_applyInitialConstant];
```

### UINavigationController+DLR Category Examples

```objc
/** Returns true if the passed view controller is the first view controller in the
 stack of view controllers.  This can be helpful in determining if the
 view controller needed to be popped or dismissed. */
- (BOOL)dlr_isFirstViewController:(UIViewController *)viewController;
```

### UIViewController+DLRNavigationController Category Examples

```objc
/** Returns a new navigation controller instance with this view controller as the
 root view controller. */
- (UINavigationController *)dlr_embedInsideNavigationController;
```

### UIViewController+DLRPresentedViewController Category Examples

```objc
/** Returns the top most presented view controller, which could be this view controller. */
- (UIViewController *)dlr_topPresentedViewController;
```
