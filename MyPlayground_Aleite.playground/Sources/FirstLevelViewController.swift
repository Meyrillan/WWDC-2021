//
//  Created by Meyrillan Silva.
//  Copyright © 2021 Meyrillan Silva. All rights reserved.
//

import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

public class FirstLevelViewController : UIViewController {
    
    let viewSprite = SKView(frame: CGRect(x: 0, y: 0, width: 1440, height: 900))
    let scene = SKScene(size: CGSize(width: 1440, height: 900))
    
    var adm = SKSpriteNode()
    var walkingUpFrames: [SKTexture] = []
    var walkingDownFrames: [SKTexture] = []
    
    var admWithMilk = SKSpriteNode()
    var admWithMilkWalkingUp: [SKTexture] = []
    var admWithMilkWalkingDown: [SKTexture] = []
    
    var deliveryman = SKSpriteNode()
    var deliverymanWalkingUp: [SKTexture] = []
    var deliverymanWalkingDown: [SKTexture] = []
    
    var deliverymanWithoutDelivery = SKSpriteNode()
    var deliverymanWithoutDeliveryUp: [SKTexture] = []
    var deliverymanWithoutDeliveryDown: [SKTexture] = []
    
    let momView = UIImageView()
    let babyView = UIImageView()
    
    var changeScore: [UIImage] = []
    
    let viewBgPopUp = UIImageView()
    let viewPopUp = UIImageView()
    let buttonContinue = UIButton()
    let labelCongratulations = UILabel()
    let labelYouDidIt = UILabel()
    
    let cenario = SKSpriteNode(imageNamed: "Cenário@2x.png")
    let viewFloor = UIImageView()
    let cupboard = SKSpriteNode(imageNamed: "Armário@2x.png")
    let counter = SKSpriteNode(imageNamed: "Balcão@2x.png")
    var freezer = SKSpriteNode()
    let viewFreezer = UIImageView()
    let dishwasher = SKSpriteNode(imageNamed: "LavaLouca@2x.png")
    let waterFilter = SKSpriteNode(imageNamed: "filtroAgua@2x.png")
    let sette = SKSpriteNode(imageNamed: "sofa@2x.png")
    let roomTable = SKSpriteNode(imageNamed: "centroSofa@2x.png")
    
    let buttonStart = UIButton()
    let imageStart = UIImage(named: "ButtonInicio@2x.png")
    let viewMissions = UIImageView()
    let imageViewMissions = UIImage(named: "ViewMissoes@2x.png")
    let buttonDonate = UIButton()
    let labelMissions = UILabel()
    let labelMissionOne = UILabel()
    let labelMissionTwo = UILabel()
    let labelMissionThree = UILabel()
    let labelMissionFour = UILabel()
    let viewBgScore = UIImageView()
    let imageBgViewScore = UIImage(named: "ViewPontuacao@2x.png")
    let viewScore = UIImageView()
    var imageScore = UIImage(named: "Pontuacao0@2x.png")
    let labelScore = UILabel()
    let viewBgReactions = UIImageView()
    let imageBgReactions = UIImage(named: "viewReacoes@2x.png")
    let viewMomReactions = UIImageView()
    let imageMomReactions = UIImage(named: "ReacoesMae@2x.png")
    let labelMom = UILabel()
    let labelHappyMom = UILabel()
    let labelBoredMom = UILabel()
    let labelSadMom = UILabel()
    let viewBabyReactions = UIImageView()
    let imageBabyReactions = UIImage(named: "ReacaoBebe@2x.png")
    let labelBaby = UILabel()
    let labelHappyBaby = UILabel()
    
    let sfBoldBigger = UIFont(name: "SFProRounded-Bold", size: 18)
    let sfBoldSmaller = UIFont(name: "SFProRounded-Bold", size: 14)
    let sfRegularBigger = UIFont(name: "SFProRounded-Regular", size: 18)
    let sfRegular = UIFont(name: "SFProRounded-Regular", size: 14)
    
    public override func loadView() {
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        buttonStart.frame = CGRect(x: 0, y:800, width: 100, height: 100)
        buttonStart.setImage(imageStart, for: .normal)
        
        viewMissions.frame = CGRect(x: 0, y: 0, width: 314, height: 333)
        viewMissions.image = imageViewMissions
        
        labelMissions.frame = CGRect(x: 30, y: 36, width: 68, height: 21)
        labelMissions.text = "Missões"
        labelMissions.font = sfBoldBigger
        labelMissions.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissionOne.frame = CGRect(x: 30, y: 73, width: 250, height: 16)
        labelMissionOne.text = "Doe 1 frasco de leite para um hospital"
        labelMissionOne.font = sfBoldSmaller
        labelMissionOne.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonDonate.frame = CGRect(x: 58, y: 105, width: 165, height: 56)
        buttonDonate.setTitle("Doar", for: .normal)
        buttonDonate.titleLabel?.font = sfBoldSmaller
        buttonDonate.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonDonate.layer.cornerRadius = 14
        
        labelMissionTwo.frame = CGRect(x: 30, y: 185, width: 270, height: 40)
        labelMissionTwo.text = "Faça o entregador deixar o leite no freezer"
        labelMissionTwo.font = sfRegular
        labelMissionTwo.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissionTwo.alpha = 0.5
        
        labelMissionThree.frame = CGRect(x: 30, y: 225, width: 270, height: 40)
        labelMissionThree.text = "Faça o administrador entregar o leite para \na mãe"
        labelMissionThree.numberOfLines = 2
        labelMissionThree.font = sfRegular
        labelMissionThree.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissionThree.alpha = 0.5
        
        labelMissionFour.frame = CGRect(x: 30, y: 281, width: 190, height: 16)
        labelMissionFour.text = "Faça a mãe alimentar o bebê"
        labelMissionFour.font = sfRegular
        labelMissionFour.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissionFour.alpha = 0.5
        
        viewBgScore.frame = CGRect(x: 366, y: 0, width: 144, height: 217)
        viewBgScore.image = imageBgViewScore
        
        viewScore.frame = CGRect(x: 403, y: 79.18, width: 70.96, height: 105.82)
        viewScore.image = imageScore
        
        labelScore.frame = CGRect(x: 392, y: 36, width: 92, height: 21)
        labelScore.text = "Pontuação"
        labelScore.font = sfBoldBigger
        labelScore.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewBgReactions.frame = CGRect(x: 1168.01, y: 0, width: 271.99, height: 220.88)
        viewBgReactions.image = imageBgReactions
        viewMomReactions.frame = CGRect(x: 1204, y: 65, width: 200, height: 27)
        viewMomReactions.image = imageMomReactions
        viewBabyReactions.frame = CGRect(x: 1204, y: 158, width: 68, height: 27)
        viewBabyReactions.image = imageBabyReactions
        
        labelMom.frame = CGRect(x: 1211, y: 36, width: 35, height: 21)
        labelMom.text = "Mãe"
        labelMom.font = sfRegularBigger
        labelMom.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelHappyMom.frame = CGRect(x: 1241, y: 68, width: 11, height: 21)
        labelHappyMom.text = "1"
        labelHappyMom.font = sfRegularBigger
        labelHappyMom.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBoredMom.frame = CGRect(x: 1312, y: 68, width: 11, height: 21)
        labelBoredMom.text = "0"
        labelBoredMom.font = sfRegularBigger
        labelBoredMom.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelSadMom.frame = CGRect(x: 1382, y: 68, width: 11, height: 21)
        labelSadMom.text = "0"
        labelSadMom.font = sfRegularBigger
        labelSadMom.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBaby.frame = CGRect(x: 1211, y: 129, width: 154, height: 21)
        labelBaby.text = "Bebês alimentados"
        labelBaby.font = sfRegularBigger
        labelBaby.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelHappyBaby.frame = CGRect(x: 1241, y: 161, width: 11, height: 21)
        labelHappyBaby.text = "0"
        labelHappyBaby.font = sfRegularBigger
        labelHappyBaby.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewFreezer.frame = CGRect(x: 636, y: 217, width: 90, height: 144.2)
        viewFreezer.image = UIImage(named: "FreezerTransparente@2x.png")
        viewFreezer.isUserInteractionEnabled = false
        let tapFreezer = UITapGestureRecognizer(target: self, action: #selector(handleTapInFreezer))
        viewFreezer.addGestureRecognizer(tapFreezer)
        
        viewFloor.frame = CGRect(x: 294.85, y: 233.53, width: 1040.81, height: 600.28)
        viewFloor.image = UIImage(named: "PisoTransparente@2x.png")
        viewFloor.isUserInteractionEnabled = true
        let tapPiso = UITapGestureRecognizer(target: self, action: #selector(handleTapInPiso))
        viewFloor.addGestureRecognizer(tapPiso)
        
        momView.frame = CGRect(x: 920.23, y: 276.51, width: 50.34, height: 114.6)
        momView.image = UIImage(named: "Mãe@2x.png")
        momView.isUserInteractionEnabled = false
        let tapM = UITapGestureRecognizer(target: self, action: #selector(handleTapInM))
        momView.addGestureRecognizer(tapM)
        
        babyView.frame = CGRect(x: 929.38, y: 326.72, width: 23.29, height: 37.73)
        babyView.image = UIImage(named: "Bebê@2x.png")
        babyView.isUserInteractionEnabled = false
        let tapB = UITapGestureRecognizer(target: self, action: #selector(handleTapInB))
        babyView.addGestureRecognizer(tapB)
        
        score()
        
        view.addSubview(viewSprite)
        view.addSubview(viewFloor)
        view.addSubview(viewFreezer)
        view.addSubview(buttonStart)
        view.addSubview(viewMissions)
        view.addSubview(labelMissions)
        view.addSubview(labelMissionOne)
        view.addSubview(buttonDonate)
        view.addSubview(labelMissionTwo)
        view.addSubview(labelMissionThree)
        view.addSubview(labelMissionFour)
        view.addSubview(viewBgScore)
        view.addSubview(viewScore)
        view.addSubview(labelScore)
        view.addSubview(viewBgReactions)
        view.addSubview(viewMomReactions)
        view.addSubview(viewBabyReactions)
        view.addSubview(labelMom)
        view.addSubview(labelHappyMom)
        view.addSubview(labelBoredMom)
        view.addSubview(labelSadMom)
        view.addSubview(labelBaby)
        view.addSubview(labelHappyBaby)
        view.addSubview(momView)
        view.addSubview(babyView)
        view.addSubview(viewBgPopUp)
        view.addSubview(viewPopUp)
        view.addSubview(labelCongratulations)
        view.addSubview(labelYouDidIt)
        view.addSubview(buttonContinue)
        
        self.view = view 
    }
    
    public override func viewDidLoad() {
        buttonStart.addTarget(self, action: #selector(FirstLevelViewController.touchedButtonInicio), for: .touchUpInside)
        buttonDonate.addTarget(self, action: #selector(FirstLevelViewController.touchedButtonDoar), for: .touchUpInside)
        buttonContinue.addTarget(self, action: #selector(FirstLevelViewController.touchedButtonContinuar), for: .touchUpInside)
        
        viewSprite.presentScene(scene)
        scene.backgroundColor = .clear
        viewSprite.allowsTransparency = true
        viewSprite.backgroundColor = .clear
        
        cenario.setScale(1)
        cenario.anchorPoint = CGPoint.zero
        cenario.position = CGPoint(x: 0, y: 0)
        
        dishwasher.physicsBody = SKPhysicsBody(rectangleOf: dishwasher.size)
        dishwasher.physicsBody?.affectedByGravity = false
        dishwasher.physicsBody?.allowsRotation = false
        dishwasher.physicsBody?.isDynamic = false

        dishwasher.setScale(1)
        dishwasher.position = scene.convertPoint(fromView: CGPoint(x: 787, y: 250))
        
        freezer = SKSpriteNode(imageNamed: "FreezerComLeite@2x.png")

        freezer.physicsBody = SKPhysicsBody(rectangleOf: freezer.size)
        freezer.physicsBody?.affectedByGravity = false
        freezer.physicsBody?.allowsRotation = false
        freezer.physicsBody?.isDynamic = false
        
        freezer.setScale(1)
        freezer.position = scene.convertPoint(fromView: CGPoint(x: 680, y: 291))
        
        counter.physicsBody = SKPhysicsBody(rectangleOf: counter.size)
        counter.physicsBody?.affectedByGravity = false
        counter.physicsBody?.allowsRotation = false
        counter.physicsBody?.isDynamic = false
        
        counter.setScale(1)
        counter.position = scene.convertPoint(fromView: CGPoint(x: 565, y: 422))
        
        cupboard.physicsBody = SKPhysicsBody(rectangleOf: cupboard.size)
        cupboard.physicsBody?.affectedByGravity = false
        cupboard.physicsBody?.allowsRotation = false
        cupboard.physicsBody?.isDynamic = false
        
        cupboard.setScale(1)
        cupboard.position = scene.convertPoint(fromView: CGPoint(x: 389, y: 457))
        
        waterFilter.physicsBody = SKPhysicsBody(rectangleOf: waterFilter.size)
        waterFilter.physicsBody?.affectedByGravity = false
        waterFilter.physicsBody?.allowsRotation = false
        waterFilter.physicsBody?.isDynamic = false
        
        waterFilter.setScale(1)
        waterFilter.position = scene.convertPoint(fromView: CGPoint(x: 894, y: 256))
        
        sette.physicsBody = SKPhysicsBody(rectangleOf: sette.size)
        sette.physicsBody?.affectedByGravity = false
        sette.physicsBody?.allowsRotation = false
        sette.physicsBody?.isDynamic = false
        
        sette.setScale(1)
        sette.position = scene.convertPoint(fromView: CGPoint(x: 1040, y: 373))
        
        roomTable.physicsBody = SKPhysicsBody(rectangleOf: roomTable.size)
        roomTable.physicsBody?.affectedByGravity = false
        roomTable.physicsBody?.allowsRotation = false
        roomTable.physicsBody?.isDynamic = false
        
        roomTable.setScale(1)
        roomTable.position = scene.convertPoint(fromView: CGPoint(x: 1247, y: 496))
        
        adm.physicsBody = SKPhysicsBody(rectangleOf: adm.size)
        adm.physicsBody?.affectedByGravity = false
        adm.physicsBody?.allowsRotation = false
        adm.physicsBody?.isDynamic = false
        
        buildAdmUp()
        buildAdmDown()
        buildDeliverymanUp()
        buildDeliverymanDown()
        buildDeliverymanDownWithoutDelivery()
        buildAdmWithMilk()
        
        scene.addChild(cenario)
        scene.addChild(dishwasher)
        scene.addChild(freezer)
        scene.addChild(counter)
        scene.addChild(cupboard)
        scene.addChild(waterFilter)
        scene.addChild(sette)
        scene.addChild(roomTable)
        scene.addChild(adm)
        scene.addChild(deliveryman)
        scene.addChild(deliverymanWithoutDelivery)
        scene.addChild(admWithMilk)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction public func touchedButtonDoar() {
        viewScore.image = changeScore[1]
        
        buttonDonate.isEnabled = false
        buttonDonate.alpha = 0.5
        
        labelMissionOne.alpha = 0.5
        labelMissionOne.font = sfRegular
        labelMissionTwo.alpha = 1
        labelMissionTwo.font = sfBoldSmaller
        
        moveDeliveryman(location: scene.convertPoint(fromView: CGPoint(x: 560, y: 605)))
        
        viewFreezer.isUserInteractionEnabled = true
                
    }
    
    @IBAction public func touchedButtonContinuar() {
        viewBgPopUp.isHidden = true
        viewPopUp.isHidden = true
        labelCongratulations.isHidden = true
        labelYouDidIt.isHidden = true
        buttonContinue.isHidden = true
    }
    
    @objc func handleTapInFreezer(_ gesture: UIGestureRecognizer) {
        
        moveDeliveryman(location: scene.convertPoint(fromView: CGPoint(x: 713, y: 320)))
        viewScore.image = changeScore[2]
        
        labelMissionTwo.alpha = 0.5
        labelMissionTwo.font = sfRegular
        
        labelMissionThree.alpha = 1
        labelMissionThree.font = sfBoldSmaller
        
        labelHappyMom.text = "0"
        labelBoredMom.text = "1"
        
        if deliveryman.position == scene.convertPoint(fromView: CGPoint(x: 713, y: 320)) {
            deliveryman.removeAllActions()
            deliverymanWithoutDelivery.setScale(1.2)
            deliverymanWithoutDelivery.position = scene.convertPoint(fromView: CGPoint(x: 713, y: 320))
            moveDeliverymanWithoutDelivery(location: scene.convertPoint(fromView: CGPoint(x: 1570, y: 950)))
            moveAdm(location: scene.convertPoint(fromView: CGPoint(x: 730, y: 295)))
            
            momView.isUserInteractionEnabled = true
            
            viewScore.image = changeScore[3]
        }
        
        if deliveryman.position == scene.convertPoint(fromView: CGPoint(x: 1570, y: 950)) {
            
            deliverymanWithoutDelivery.removeAllActions()

        }

    }
    
    @objc func handleTapInPiso(_ gesture: UIGestureRecognizer) {
        
        moveAdm(location: scene.convertPoint(fromView: gesture.location(in: viewSprite)))
        
    }
    
    @objc func handleTapInM(_ gesture: UIGestureRecognizer) {
        adm.setScale(0)
        admWithMilk.setScale(1.2)
        admWithMilk.position = scene.convertPoint(fromView: CGPoint(x: 730, y: 295))
        moveAdmWithMilk(location: scene.convertPoint(fromView: CGPoint(x: 870, y: 360)))
        
        adm.removeAllActions()
        
        viewScore.image = changeScore[4]
        
        babyView.isUserInteractionEnabled = true
        
        labelMissionThree.alpha = 0.5
        labelMissionThree.font = sfRegular
        
        labelMissionFour.alpha = 1
        labelMissionFour.font = sfBoldSmaller
        
        labelHappyMom.text = "1"
        labelBoredMom.text = "0"
        
    }
    
    @objc func handleTapInB(_ gesture: UIGestureRecognizer) {
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 870, y: 360))
        moveAdm(location: scene.convertPoint(fromView: CGPoint(x: 600, y: 450)))
        
        admWithMilk.removeAllActions()
        admWithMilk.setScale(0)
        
        viewScore.image = changeScore[5]
        
        viewBgPopUp.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        viewBgPopUp.image = UIImage(named: "BgPopUp@2x.png")
        
        viewPopUp.frame = CGRect(x: 490, y: 327, width: 461, height: 246)
        viewPopUp.image = UIImage(named: "PopUp@2x.png")
        
        labelCongratulations.frame = CGRect(x: 638, y: 363, width: 180, height: 50)
        labelCongratulations.text = "Parabéns!"
        labelCongratulations.font = UIFont(name: "SFProRounded-Bold", size: 36)
        labelCongratulations.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        labelYouDidIt.frame = CGRect(x: 590, y: 407, width: 260, height: 70)
        labelYouDidIt.text = "Você conseguiu terminar as missões! \n Continue a ajudar as mamães."
        labelYouDidIt.numberOfLines = 2
        labelYouDidIt.textAlignment = NSTextAlignment.center
        labelYouDidIt.font = UIFont(name: "SFProRounded-Regular", size: 14)
        labelYouDidIt.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonContinue.frame = CGRect(x: 638, y: 481, width: 165, height: 56)
        buttonContinue.setTitle("Continuar", for: .normal)
        buttonContinue.titleLabel?.font = sfBoldSmaller
        buttonContinue.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonContinue.layer.cornerRadius = 14
        
        labelHappyBaby.text = "1"
        
    }
    
    func score() {

        let initialName = "Pontuacao"
        let index = [0,1,2,3,4,5]
        
        for i in index {
            let oneFrame = UIImage(named: "\(initialName)\(i)@2x.png")
            changeScore.append(oneFrame!)
        }
        
    }
    
    func buildAdmUp() {
        
        let initialName = "ADM - Esquerda"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let oneFrame = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(oneFrame)
        }
        
        walkingUpFrames = imagesAnimation
        
        let firstFrameTexture = walkingUpFrames[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 828, y: 650))
        
    }
    
    func buildAdmDown() {
        
        let initialName = "ADM  - Direita"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let oneFrame = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(oneFrame)
        }
        
        walkingDownFrames = imagesAnimation
        
        let firstFrameTexture = walkingDownFrames[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 828, y: 650))
        
    }
    
    func animateAdmUp() {
        adm.run(SKAction.repeatForever(SKAction.animate(with: walkingUpFrames, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaCima")
    }
    
    func animateAdmDown() {
        
        adm.run(SKAction.repeatForever(SKAction.animate(with: walkingDownFrames, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaBaixo")
        
    }
    
    func buildAdmWithMilk() {
        
        let initialName = "ADMComLeite  - Baixo"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let oneFrame = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(oneFrame)
        }
        
        admWithMilkWalkingDown = imagesAnimation
        
        let firstFrameTexture = admWithMilkWalkingDown[0]
        admWithMilk = SKSpriteNode(texture: firstFrameTexture)
        
    }
    
    func animateAdmWithDeliveryDown() {
        
        admWithMilk.run(SKAction.repeatForever(SKAction.animate(with: admWithMilkWalkingDown, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoComEntregaParaBaixo")
    
    }
    
    func moveAdm(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let admSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - adm.position.x, y: location.y - adm.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / admSpeed
        
        if (location.y > adm.position.y) {
            
            if adm.action(forKey: "andandoParaCima") == nil {
                // If moveDifference is bigger than 0, multiplierForDirection = -1.0 else, is equal 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateAdmUp()
            }
            
        } else {
            
            if adm.action(forKey: "andandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateAdmDown()
            }
        }
        
        adm.xScale = abs(adm.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.admMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        adm.run(moveActionWithDone, withKey:"admMoving")
        
    }
    
    func admMoveEnded() {
        adm.removeAllActions()
    }
    
    func moveAdmWithMilk(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let admSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - admWithMilk.position.x, y: location.y - admWithMilk.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / admSpeed
        
        if (location.y > admWithMilk.position.y) {
            
            if admWithMilk.action(forKey: "andandoParaCima") == nil {
                // If moveDifference is bigger than 0, multiplierForDirection = -1.0 else, is equal 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateAdmUp()
            }
            
        } else {
            
            if admWithMilk.action(forKey: "andandoComEntregaParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateAdmWithDeliveryDown()
            }
        }
        
        admWithMilk.xScale = abs(admWithMilk.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.admWithMilkMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        admWithMilk.run(moveActionWithDone, withKey:"admMovingComLeite")
        
    }
    
    func admWithMilkMoveEnded() {
        admWithMilk.removeAllActions()
    }
    
    func buildDeliverymanUp() {
        
        let initialName = "Entregador - Cima"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let oneFrame = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(oneFrame)
        }
        
        deliverymanWalkingUp = imagesAnimation
        
        deliveryman.setScale(1.2)
        deliveryman.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func buildDeliverymanDown() {
        
        let initialName = "Entregador  - Baixo"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let umaPoseEntregadorDireita = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(umaPoseEntregadorDireita)
        }
        
        deliverymanWalkingDown = imagesAnimation
        
        let firstFrameTexture = deliverymanWalkingDown[0]
        deliveryman = SKSpriteNode(texture: firstFrameTexture)
        deliveryman.setScale(1.2)
        deliveryman.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func buildDeliverymanDownWithoutDelivery() {
        
        let initialName = "EntregadorSemEntrega  - Baixo"
        let index = [0,1,2,3]
        var imagesAnimation: [SKTexture] = []
        
        for i in index {
            let umaPoseEntregadorDireita = SKTexture(imageNamed: "\(initialName)\(i)")
            imagesAnimation.append(umaPoseEntregadorDireita)
        }
        
        deliverymanWithoutDeliveryDown = imagesAnimation
        
        let firstFrameTexture = deliverymanWithoutDeliveryDown[0]
        deliverymanWithoutDelivery = SKSpriteNode(texture: firstFrameTexture)
        
    }
    
    func animateDelivarymanUp() {
         deliveryman.run(SKAction.repeatForever(SKAction.animate(with: deliverymanWalkingUp, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaCima")
     }
     
     func animateDelivarymanDown() {
         
         deliveryman.run(SKAction.repeatForever(SKAction.animate(with: deliverymanWalkingDown, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaBaixo")
     }
    
    
    func animateDeliverymanWithoutDeliveryDown() {
        
        deliverymanWithoutDelivery.run(SKAction.repeatForever(SKAction.animate(with: deliverymanWithoutDeliveryDown, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorSemEntregaAndandoParaBaixo")
    }
    
    func moveDeliveryman(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let deliverymanSpeed = viewSprite.frame.size.width / 16.0
        
        let moveDifference = CGPoint(x: location.x - deliveryman.position.x, y: location.y - deliveryman.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / deliverymanSpeed
        
        if (location.y > deliveryman.position.y) {
            
            if deliveryman.action(forKey: "entregadorAndandoParaCima") == nil {
                // If moveDifference is bigger than 0, multiplierForDirection = -1.0 else, is equal 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateDelivarymanUp()
            }
            
        } else {
            
            if deliveryman.action(forKey: "entregadorAndandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateDelivarymanDown()
            }
        }
        
        deliveryman.xScale = abs(deliveryman.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.deliverymanMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        deliveryman.run(moveActionWithDone, withKey:"entregadorMoving")
        
    }
    
    func deliverymanMoveEnded() {
        deliveryman.removeAllActions()
    }
    
    func moveDeliverymanWithoutDelivery(location: CGPoint) {
           var multiplierForDirection: CGFloat = 1.0
           let deliverymanSpeed = viewSprite.frame.size.width / 16.0
           
           let moveDifference = CGPoint(x: location.x - deliverymanWithoutDelivery.position.x, y: location.y - deliverymanWithoutDelivery.position.y)
           let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
           
           let moveDuration = distanceToMove / deliverymanSpeed
               
        if (location.y > deliverymanWithoutDelivery.position.y) {
            
            if deliverymanWithoutDelivery.action(forKey: "entregadorAndandoParaCima") == nil {
                // If moveDifference is bigger than 0, multiplierForDirection = -1.0 else, is equal 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateDelivarymanUp()
            }
            
        } else {
            
            if deliverymanWithoutDelivery.action(forKey: "entregadorSemEntregaAndandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateDeliverymanWithoutDeliveryDown()
            }
        }
        
           deliverymanWithoutDelivery.xScale = abs(deliverymanWithoutDelivery.xScale) * multiplierForDirection
           
           let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
           
           let doneAction = SKAction.run({ [weak self] in
               self?.deliverymanWithoutDeliveryMoveEnded()
           })
           
           let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
           deliverymanWithoutDelivery.run(moveActionWithDone, withKey:"entregadorSemEntregaMoving")
           
       }
       
       func deliverymanWithoutDeliveryMoveEnded() {
           deliverymanWithoutDelivery.removeAllActions()
       }
    
}

