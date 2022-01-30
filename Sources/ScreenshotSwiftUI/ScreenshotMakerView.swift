//
//  ScreenshotMakerView.swift
//
//
//  Created by Gualtiero Frigerio on 29/01/22.
//

import SwiftUI
import UIKit

/// This View is needed to create a UIViewRepresentable with a ScreenshotMaker
public struct ScreenshotMakerView: UIViewRepresentable {
    let closure: (ScreenshotMaker) -> Void
    
    public init(_ closure: @escaping (ScreenshotMaker) -> Void) {
        self.closure = closure
    }
    
    public func makeUIView(context: Context) -> ScreenshotMakerUIView {
        let view = ScreenshotMakerUIView(frame: CGRect.zero)
        return view
    }
    
    public func updateUIView(_ uiView: ScreenshotMakerUIView, context: Context) {
        DispatchQueue.main.async {
            closure(uiView)
        }
    }
}

extension View {
    /// Add to the View you need to take a screenshot of.
    /// It creates a ScreenshotMakerView and returns a closure with
    /// a ScreenshotMaker object you can use to take a screenshot
    /// The view is added in an overlay with allowHitTesting false so it doesn't interfere
    /// with your View
    /// - Parameter closure: A closure with a ScreenshotMaker object
    /// - Returns: an overlay containing a ScreenshotMakerView
    func screenshotMaker(_ closure: @escaping (ScreenshotMaker) -> Void) -> some View {
        let screenshotView = ScreenshotMakerView(closure)
        return overlay(screenshotView.allowsHitTesting(false))
    }
}
