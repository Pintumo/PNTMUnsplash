![image](PNTMUnsplashLogo.png)

PNTMUnsplash is a really small rx wrapper around the Unsplash Api.

PNTMUnsplash is build on top of RxSwift. Currently PNTMUnsplash can only call photos endpoint.


### Installation

PNTMUnsplash currently only supports Cocoapods. Add

`pod 'PNTMUnsplash', :git =>  'https://github.com/Pintumo/PNTMUnsplash.git'`

to your Podfile and run

`pod install`


### Usage

Checkout `AppDelegate.swift`

```
_ = PNTMUnsplash.photos().subscribe(onNext: { strings in
   print(strings)
})

```

### Attention

In order to user you will need to register on unsplash.io and get an Api key.
