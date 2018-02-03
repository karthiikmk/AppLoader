# Apploader

[![Version](https://img.shields.io/cocoapods/v/Apploader.svg?style=flat)](http://cocoapods.org/pods/Apploader)
[![License](https://img.shields.io/cocoapods/l/Apploader.svg?style=flat)](http://cocoapods.org/pods/Apploader)
[![Platform](https://img.shields.io/cocoapods/p/Apploader.svg?style=flat)](http://cocoapods.org/pods/Apploader)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Apploader is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Apploader'
```


## Usage

```swift
   var alertHud: MBProgressHUD!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoader()
        
        alertHud.showLoader(msg: "loading...")
    }
    
    func setupLoader() {
        self.alertHud = MBProgressHUD(view: self.view)
        self.view.addSubview(self.alertHud)
    }
```

## Author

karthikAdaptavant, karthik.samy@a-cti.com

## License

Apploader is available under the MIT license. See the LICENSE file for more info.
