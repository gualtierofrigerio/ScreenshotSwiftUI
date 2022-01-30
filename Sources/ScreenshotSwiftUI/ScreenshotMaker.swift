//
//  ScreenshotMaker.swift
//
//
//  Created by Gualtiero Frigerio on 29/01/22.
//

import UIKit

public protocol ScreenshotMaker {
    // Takes the screenshot of the superview of this superview
    /// - Returns: The UIImage with the screenshot of the view
    func screenshot() -> UIImage?
}
