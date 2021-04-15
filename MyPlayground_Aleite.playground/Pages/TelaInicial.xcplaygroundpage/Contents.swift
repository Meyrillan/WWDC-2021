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
    
    let buttonPerfil = UIButton()
    let imagePerfil = UIImage(named: "ButtonPerfil@2x.png")
    
    let buttonDoacoes = UIButton()
    let imageDoacoes = UIImage(named: "ButtonDoacoes@2x.png")
    
    let buttonAudio = UIButton()
    let imageWithAudio = UIImage(named: "ButtonWithAudio@2x.png")
    let imageNoAudio = UIImage(named: "ButtonNoAudio@2x.png")
    
    public var audioPlayer: AVAudioPlayer?
    var toggleAudio = 2
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        
        buttonPlay.frame = CGRect(x: 570, y: 300, width: 300, height: 300)
        
        buttonPlay.setImage(imagePlay, for: .normal)
        
        buttonPerfil.frame = CGRect(x: 1360, y: 32, width: 48, height: 48)
        
        buttonPerfil.setImage(imagePerfil, for: .normal)
        
        buttonDoacoes.frame = CGRect(x: 1360, y: 104, width: 48, height: 48)
        
        buttonDoacoes.setImage(imageDoacoes, for: .normal)
        
        buttonAudio.frame = CGRect(x: 1360, y: 176, width: 48, height: 48)
        
        buttonAudio.setImage(imageNoAudio, for: .normal)
                
        view.addSubview(buttonPlay)
        view.addSubview(buttonPerfil)
        view.addSubview(buttonDoacoes)
        view.addSubview(buttonAudio)
        
        
        self.view = view
    }
    
    override func viewDidLoad() {
        buttonPlay.addTarget(self, action: #selector(vc.touchedButtonPlay), for: .touchUpInside)
        
        buttonPerfil.addTarget(self, action: #selector(vc.touchedButtonPerfil), for: .touchUpInside)
        
        buttonDoacoes.addTarget(self, action: #selector(vc.touchedButtonDoacoes), for: .touchUpInside)
        
        buttonAudio.addTarget(self, action: #selector(vc.touchedButtonAudio), for: .touchUpInside)
        
    }
    
    @IBAction func touchedButtonPlay() {
        navigationController?.pushViewController(NivelUmViewController(), animated: true)
    }
    
    @IBAction func touchedButtonPerfil() {
        
    }
    
    @IBAction func touchedButtonDoacoes() {
        
    }
    
    @IBAction func touchedButtonAudio() {
        audioPlayer = createPlayer(from: "Lo-Fi-Beat")
        if toggleAudio == 1 {
            audioPlayer?.pause()
            toggleAudio = 2
            buttonAudio.setImage(imageNoAudio, for: .normal)
            
        } else {
            audioPlayer?.play()
            audioPlayer?.numberOfLoops = -1
            toggleAudio = 1
            buttonAudio.setImage(imageWithAudio, for: .normal)
        }
    }
    
    func createPlayer(from filename: String) -> AVAudioPlayer? {
      guard let url = Bundle.main.url(forResource: filename, withExtension: "wav") else {
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
let nivelUmVC = NivelUmViewController(screenType: .mac, isPortrait: true)
let navigation = UINavigationController(screenType: .mac, isPortrait: true)
navigation.navigationBar.isHidden = true
navigation.pushViewController(vc, animated: true)
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)

