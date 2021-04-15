//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport

let cfURL = Bundle.main.url(forResource: "SF-Pro-Rounded-Bold", withExtension: "otf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

let cfURLRegular = Bundle.main.url(forResource: "SF-Pro-Rounded-Regular", withExtension: "otf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURLRegular, CTFontManagerScope.process, nil)

// Present the view controller in the Live View window
let vcNivelUm = NivelUmViewController(screenType: .mac, isPortrait: true)
PlaygroundPage.current.liveView = vcNivelUm.scale(to: 0.5)
PlaygroundPage.current.needsIndefiniteExecution = true
