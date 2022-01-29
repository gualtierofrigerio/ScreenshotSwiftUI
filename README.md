# ScreenshotSwiftUI

Add this package via SPM to take screenshots of SwiftUI Views

How it works
-------

The package includes an extension to View called screenshotMaker.
Add screenshotMaker to the View you want to take a screenshot of, you'll get a ScreenshotMaker object in the closure and by calling its function screenshot you'll get a UIImage with the screenshot of the View.
```swift
import ScreenshotSwiftUI

struct MyView: View 
    var body: some View {
        VStack {
            Text("Hello world")
        }.screenshotMaker { screenshotMaker in 
            let uiImage = screenshotMaker.screenshot()
        }   
    }
```

Install
-------

The package is distributed via SPM. Include the link below in Xcode to add it to your project.

```
https://github.com/gualtierofrigerio/ScreenshotSwiftUI.git
```

More details on how it works can be found in my blog post [Take screenshot of SwiftUI Views](https://www.gfrigerio.com/take-screenshots-of-swiftui-views/)
