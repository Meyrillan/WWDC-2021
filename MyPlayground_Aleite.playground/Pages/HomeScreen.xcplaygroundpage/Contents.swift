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

let sfBoldBigger = UIFont(name: "SFProRounded-Bold", size: 18)
let sfBoldSmaller = UIFont(name: "SFProRounded-Bold", size: 16)
let sfRegularBigger = UIFont(name: "SFProRounded-Regular", size: 18)
let sfRegular = UIFont(name: "SFProRounded-Regular", size: 20)

class MyViewController : UIViewController {
    
    let buttonPlay = UIButton()
    let imagePlay = UIImage(named: "ButtonPlay@2x.png")
    
    let viewPopUp = UIImageView()
    let buttonStart = UIButton()
    
    let viewBgPopUp = UIImageView()
    let creditsPopUp = UIImageView()
    let lableCredits = UILabel()
    let lablePeople = UILabel()
    let buttonBack = UIButton()
    
    let buttonProfile = UIButton()
    let imageProfile = UIImage(named: "ButtonPerfil@2x.png")
    
    let buttonAudio = UIButton()
    let imageWithAudio = UIImage(named: "ButtonWithAudio@2x.png")
    let imageNoAudio = UIImage(named: "ButtonNoAudio@2x.png")
    
    public var audioPlayer: AVAudioPlayer?
    var toggleAudio = 1
    
    let lableStory = UILabel()
    let momView = UIImageView()
    let babyView = UIImageView()
    let setteView = UIImageView()
    let logoView = UIImageView()
    
    override func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        
        buttonPlay.frame = CGRect(x: 570, y: 300, width: 300, height: 300)
        
        buttonPlay.setImage(imagePlay, for: .normal)
        
        buttonProfile.frame = CGRect(x: 1360, y: 32, width: 48, height: 48)
        
        buttonProfile.setImage(imageProfile, for: .normal)
        
        viewBgPopUp.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        viewBgPopUp.image = UIImage(named: "BgPopUp@2x.png")
        
        creditsPopUp.frame = CGRect(x: 482, y: 237, width: 480, height: 446)
        creditsPopUp.image = UIImage(named: "PopUp@2x.png")
        
        buttonAudio.frame = CGRect(x: 1360, y: 115, width: 48, height: 48)
        
        buttonAudio.setImage(imageWithAudio, for: .normal)
        
        momView.frame = CGRect(x: 937, y: 397, width: 101, height: 230)
        momView.image = UIImage(named: "Mãe@2x.png")
        
        babyView.frame = CGRect(x: 953, y: 478, width: 47, height: 76)
        babyView.image = UIImage(named: "Bebê@2x.png")
        
        setteView.frame = CGRect(x: 770, y: 302, width: 570, height: 443)
        setteView.image = UIImage(named: "sofa@2x.png")

        logoView.frame = CGRect(x: 100, y: 130, width: 529.8, height: 188.3)
        logoView.image = UIImage(named: "logo.png")
        
        lableStory.frame = CGRect(x: 100, y: 400, width: 555, height: 300)
        lableStory.numberOfLines = 12
        lableStory.font = sfRegular
        lableStory.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(buttonPlay)
        view.addSubview(viewPopUp)
        view.addSubview(setteView)
        view.addSubview(logoView)
        view.addSubview(lableStory)
        view.addSubview(momView)
        view.addSubview(babyView)
        view.addSubview(buttonStart)
        view.addSubview(buttonProfile)
        view.addSubview(viewBgPopUp)
        view.addSubview(creditsPopUp)
        view.addSubview(lableCredits)
        view.addSubview(lablePeople)
        view.addSubview(buttonBack)
        view.addSubview(buttonAudio)
        
        audioPlayer = createPlayer(from: "LoFi_WeStartTheCureInParis")
        audioPlayer?.play()
        audioPlayer?.numberOfLoops = -1
        
        viewPopUp.isHidden = true
        buttonStart.isHidden = true
        viewBgPopUp.isHidden = true
        creditsPopUp.isHidden = true
        lablePeople.isHidden = true
        lableCredits.isHidden = true
        buttonBack.isHidden = true
        logoView.isHidden = true
        lableStory.isHidden = true
        buttonStart.isHidden = true
        setteView.isHidden = true
        momView.isHidden = true
        babyView.isHidden = true
        
        self.view = view
    }
    
    override func viewDidLoad() {
        
        buttonPlay.addTarget(self, action: #selector(vc.touchedButtonPlay), for: .touchUpInside)
        
        buttonBack.addTarget(self, action: #selector(vc.touchedButtonBack), for: .touchUpInside)
        
        buttonStart.addTarget(self, action: #selector(vc.touchedButtonStart), for: .touchUpInside)
        
        buttonProfile.addTarget(self, action: #selector(vc.touchedButtonProfile), for: .touchUpInside)
        
        buttonAudio.addTarget(self, action: #selector(vc.touchedButtonAudio), for: .touchUpInside)
        
        viewPopUp.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        viewPopUp.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        buttonStart.frame = CGRect(x: 640, y: 740, width: 115, height: 56)
        buttonStart.setTitle("Start", for: .normal)
        buttonStart.titleLabel?.font = sfBoldSmaller
        buttonStart.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonStart.layer.cornerRadius = 14
        
        buttonBack.frame = CGRect(x: 638, y: 591, width: 165, height: 56)
        buttonBack.setTitle("Back", for: .normal)
        buttonBack.titleLabel?.font = sfBoldSmaller
        buttonBack.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonBack.layer.cornerRadius = 14
        
        lableStory.text = "This is Marluce, but everybody calls her Luce. The last month \nhasn’t been easy for her because every mom’s desire is to see her baby strong and healthy, but unfortunately she can’t feed him \nalone because her body doesn’t produce enough milk to \nbreastfeeding. Because of that, Luce went to the human milk bank that is in a maternity ward. To help her feed her child, you need to click on objects or characters in the maternity hospital according to each quest. Good luck and I hope you can do that, Luce will be very happy."
        
        lableCredits.frame = CGRect(x: 658, y: 313, width: 180, height: 50)
        lableCredits.text = "Credits"
        lableCredits.font = UIFont(name: "SFProRounded-Bold", size: 36)
        lableCredits.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        lablePeople.frame = CGRect(x: 540, y: 400, width: 360, height: 130)
        lablePeople.text = "Ideation, design and development by Meyrillan Souza. \nInstagram: @mey_souza \n\nThe song We Start the Cure in Paris by Chris Zabriskie and Marc Sirdoreus is licensed under a Creative Commons Attribution License."
        lablePeople.numberOfLines = 7
        lablePeople.textAlignment = NSTextAlignment.center
        lablePeople.font = UIFont(name: "SFProRounded-Regular", size: 16)
        lablePeople.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    @IBAction func touchedButtonPlay() {
        viewPopUp.isHidden = false
        buttonStart.isHidden = false
        logoView.isHidden = false
        lableStory.isHidden = false
        buttonStart.isHidden = false
        setteView.isHidden = false
        momView.isHidden = false
        babyView.isHidden = false
    }
    
    @IBAction public func touchedButtonBack() {
        viewBgPopUp.isHidden = true
        creditsPopUp.isHidden = true
        lableCredits.isHidden = true
        lablePeople.isHidden = true
        buttonBack.isHidden = true
        buttonProfile.isHidden = false
        buttonAudio.frame = CGRect(x: 1360, y: 115, width: 48, height: 48)
        buttonStart.frame = CGRect(x: 630, y: 750, width: 145, height: 56)
    }
    
    @IBAction public func touchedButtonStart() {
        navigationController?.pushViewController(FirstLevelViewController(), animated: true)
    }
    
    @IBAction func touchedButtonProfile() {
        viewBgPopUp.isHidden = false
        creditsPopUp.isHidden = false
        lableCredits.isHidden = false
        lablePeople.isHidden = false
        buttonBack.isHidden = false
        buttonProfile.isHidden = true
        buttonAudio.frame = CGRect(x: 1360, y: 32, width: 48, height: 48)
        buttonStart.frame = CGRect(x: 630, y: 550, width: 145, height: 56)
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
PlaygroundPage.current.liveView = navigation.scale(to: 0.536)

