//
//  Created by Meyrillan Silva.
//  Copyright © 2021 Meyrillan Silva. All rights reserved.
//
//  The song We Start the Cure in Paris by Chris Zabriskie and Marc Sirdoreus is licensed under a Creative Commons Attribution License. Website: freemusicarchive.org/music/lo-fi_is_sci-fi/O_Great_Queen_Electric_What_Do_You_Have_Waiting_for_Me_1652/lo-fi_is_sci-fi_-_O_Great_Queen_Electric_What_Do_You_Have_Waiting_for_Me-_-_03_We_Start_the_Cure_in_Paris
 

//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import AVFoundation

let cfURL = Bundle.main.url(forResource: "SF-Pro-Rounded-Bold", withExtension: "otf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

let cfURLRegular = Bundle.main.url(forResource: "SF-Pro-Rounded-Regular", withExtension: "otf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURLRegular, CTFontManagerScope.process, nil)

class MyViewController : UIViewController {
    
    let buttonPlay = UIButton()
    let imagePlay = UIImage(named: "ButtonPlay@2x.png")
    
    let buttonProfile = UIButton()
    let imageProfile = UIImage(named: "ButtonPerfil@2x.png")
    
    
    let buttonAudio = UIButton()
    let imageWithAudio = UIImage(named: "ButtonWithAudio@2x.png")
    let imageNoAudio = UIImage(named: "ButtonNoAudio@2x.png")
    
    public var audioPlayer: AVAudioPlayer?
    var toggleAudio = 1
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        
        buttonPlay.frame = CGRect(x: 570, y: 300, width: 300, height: 300)
        
        buttonPlay.setImage(imagePlay, for: .normal)
        
        buttonProfile.frame = CGRect(x: 1360, y: 32, width: 48, height: 48)
        
        buttonProfile.setImage(imageProfile, for: .normal)
        
        
        buttonAudio.frame = CGRect(x: 1360, y: 115, width: 48, height: 48)
        
        buttonAudio.setImage(imageWithAudio, for: .normal)
                
        view.addSubview(buttonPlay)
        view.addSubview(buttonProfile)
        view.addSubview(buttonAudio)
        
        audioPlayer = createPlayer(from: "LoFi_WeStartTheCureInParis")
        audioPlayer?.play()
        audioPlayer?.numberOfLoops = -1

        self.view = view
    }
    
    override func viewDidLoad() {
        buttonPlay.addTarget(self, action: #selector(vc.touchedButtonPlay), for: .touchUpInside)
        
        buttonProfile.addTarget(self, action: #selector(vc.touchedButtonProfile), for: .touchUpInside)
                
        buttonAudio.addTarget(self, action: #selector(vc.touchedButtonAudio), for: .touchUpInside)
        
    }
    
    @IBAction func touchedButtonPlay() {
        navigationController?.pushViewController(FirstLevelViewController(), animated: true)
    }
    
    @IBAction func touchedButtonProfile() {
        
    }
    
    
    @IBAction func touchedButtonAudio() {
        
        if toggleAudio == 1 {
            audioPlayer?.pause()
            toggleAudio = 2
            buttonAudio.setImage(imageNoAudio, for: .normal)
            
        } else {
            audioPlayer?.play()
            toggleAudio = 1
            buttonAudio.setImage(imageWithAudio, for: .normal)
        }
    }
    
    func createPlayer(from filename: String) -> AVAudioPlayer? {
      guard let url = Bundle.main.url(forResource: filename, withExtension: "m4a") else {
          return nil
      }
      var player = AVAudioPlayer()

      do {
        try player = AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
      } catch {
        print("Error loading \(url.absoluteString): \(error)")
      }

      return player
    }
    
}

let vc = MyViewController(screenType: .mac, isPortrait: true)
let firstLevelVC = FirstLevelViewController(screenType: .mac, isPortrait: true)
let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.navigationBar.isHidden = true
navigation.pushViewController(vc, animated: true)
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)

