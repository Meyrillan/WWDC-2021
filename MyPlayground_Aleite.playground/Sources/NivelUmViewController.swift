import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

public class NivelUmViewController : UIViewController {
    
    let viewSprite = SKView(frame: CGRect(x: 0, y: 0, width: 1440, height: 900))
    let scene = SKScene(size: CGSize(width: 1440, height: 900))
    
    var adm = SKSpriteNode()
    var andandoFramesParaCima: [SKTexture] = []
    var andandoFramesParaBaixo: [SKTexture] = []
    
    var admComLeite = SKSpriteNode()
    var admComEntregaAndandoParaCima: [SKTexture] = []
    var admComEntregaAndandoParaBaixo: [SKTexture] = []
    
    var entregador = SKSpriteNode()
    var entregadorAndandoParaCima: [SKTexture] = []
    var entregadorAndandoParaBaixo: [SKTexture] = []
    
    var EntregadorSemEntrega = SKSpriteNode()
    var entregadorSemEntregaAndandoParaCima: [SKTexture] = []
    var entregadorSemEntregaAndandoParaBaixo: [SKTexture] = []
    
    let maeView = UIImageView()
    let bebeView = UIImageView()
    
    var mudandoPontuacao: [UIImage] = []
    
    let viewBgPopUp = UIImageView()
    let viewPopUp = UIImageView()
    let buttonContinuar = UIButton()
    let labelParabens = UILabel()
    let labelVoceConseguiu = UILabel()
    
    let cenario = SKSpriteNode(imageNamed: "Cenário@2x.png")
    let viewPiso = UIImageView()
    let armario = SKSpriteNode(imageNamed: "Armário@2x.png")
    let balcao = SKSpriteNode(imageNamed: "Balcão@2x.png")
    var freezer = SKSpriteNode()
    let viewFreezer = UIImageView()
    let lavaLouca = SKSpriteNode(imageNamed: "LavaLouca@2x.png")
    let filtroAgua = SKSpriteNode(imageNamed: "filtroAgua@2x.png")
    let sofa = SKSpriteNode(imageNamed: "sofa@2x.png")
    let centroSofa = SKSpriteNode(imageNamed: "centroSofa@2x.png")
    
    let buttonInicio = UIButton()
    let imageInicio = UIImage(named: "ButtonInicio@2x.png")
    let viewMissoes = UIImageView()
    let imageViewMissoes = UIImage(named: "ViewMissoes@2x.png")
    let buttonDoar = UIButton()
    let labelMissoes = UILabel()
    let labelMissaoUm = UILabel()
    let labelMissaoDois = UILabel()
    let labelMissaoTres = UILabel()
    let labelMissaoQuatro = UILabel()
    let viewBgPontuacao = UIImageView()
    let imageBgViewPontuacao = UIImage(named: "ViewPontuacao@2x.png")
    let viewPontuacao = UIImageView()
    var imagePontuacao = UIImage(named: "Pontuacao0@2x.png")
    let labelPontuacao = UILabel()
    let viewBgReacoes = UIImageView()
    let imageBgViewReacoes = UIImage(named: "viewReacoes@2x.png")
    let viewReacoesMae = UIImageView()
    let imageReacoesMae = UIImage(named: "ReacoesMae@2x.png")
    let labelMae = UILabel()
    let labelMaeFeliz = UILabel()
    let labelMaeSeria = UILabel()
    let labelMaeTriste = UILabel()
    let viewReacoesBebe = UIImageView()
    let imageReacoesBebe = UIImage(named: "ReacaoBebe@2x.png")
    let labelBebe = UILabel()
    let labelBebeFeliz = UILabel()
    
    let sfBoldMaior = UIFont(name: "SFProRounded-Bold", size: 18)
    let sfBoldMenor = UIFont(name: "SFProRounded-Bold", size: 14)
    let sfRegularMaior = UIFont(name: "SFProRounded-Regular", size: 18)
    let sfRegular = UIFont(name: "SFProRounded-Regular", size: 14)
    
    public override func loadView() {
        
        //         Para descobrir qual o nome da fonte
        //        for family in UIFont.familyNames {
        //            print("\(family)")
        //            for name in UIFont.fontNames(forFamilyName: family) {
        //                print(" \(name)")
        //            }
        //        }
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2117647059, green: 0, blue: 0.3764705882, alpha: 1)
        
        buttonInicio.frame = CGRect(x: 0, y:800, width: 100, height: 100)
        buttonInicio.setImage(imageInicio, for: .normal)
        
        viewMissoes.frame = CGRect(x: 0, y: 0, width: 314, height: 333)
        viewMissoes.image = imageViewMissoes
        
        labelMissoes.frame = CGRect(x: 30, y: 36, width: 68, height: 21)
        labelMissoes.text = "Missões"
        labelMissoes.font = sfBoldMaior
        labelMissoes.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMissaoUm.frame = CGRect(x: 30, y: 73, width: 250, height: 16)
        labelMissaoUm.text = "Doe 1 frasco de leite para um hospital"
        labelMissaoUm.font = sfBoldMenor
        labelMissaoUm.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonDoar.frame = CGRect(x: 58, y: 105, width: 165, height: 56)
        buttonDoar.setTitle("Doar", for: .normal)
        buttonDoar.titleLabel?.font = sfBoldMenor
        buttonDoar.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonDoar.layer.cornerRadius = 14
        
        labelMissaoDois.frame = CGRect(x: 30, y: 185, width: 270, height: 40)
        labelMissaoDois.text = "Faça o entregador deixar o leite no freezer"
        labelMissaoDois.font = sfRegular
        labelMissaoDois.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoDois.alpha = 0.5
        
        labelMissaoTres.frame = CGRect(x: 30, y: 225, width: 270, height: 40)
        labelMissaoTres.text = "Faça o administrador entregar o leite para \na mãe"
        labelMissaoTres.numberOfLines = 2
        labelMissaoTres.font = sfRegular
        labelMissaoTres.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoTres.alpha = 0.5
        
        labelMissaoQuatro.frame = CGRect(x: 30, y: 281, width: 190, height: 16)
        labelMissaoQuatro.text = "Faça a mãe alimentar o bebê"
        labelMissaoQuatro.font = sfRegular
        labelMissaoQuatro.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        labelMissaoQuatro.alpha = 0.5
        
        viewBgPontuacao.frame = CGRect(x: 366, y: 0, width: 144, height: 217)
        viewBgPontuacao.image = imageBgViewPontuacao
        
        viewPontuacao.frame = CGRect(x: 403, y: 79.18, width: 70.96, height: 105.82)
        viewPontuacao.image = imagePontuacao
        
        labelPontuacao.frame = CGRect(x: 392, y: 36, width: 92, height: 21)
        labelPontuacao.text = "Pontuação"
        labelPontuacao.font = sfBoldMaior
        labelPontuacao.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewBgReacoes.frame = CGRect(x: 1168.01, y: 0, width: 271.99, height: 220.88)
        viewBgReacoes.image = imageBgViewReacoes
        viewReacoesMae.frame = CGRect(x: 1204, y: 65, width: 200, height: 27)
        viewReacoesMae.image = imageReacoesMae
        viewReacoesBebe.frame = CGRect(x: 1204, y: 158, width: 68, height: 27)
        viewReacoesBebe.image = imageReacoesBebe
        
        labelMae.frame = CGRect(x: 1211, y: 36, width: 35, height: 21)
        labelMae.text = "Mãe"
        labelMae.font = sfRegularMaior
        labelMae.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeFeliz.frame = CGRect(x: 1241, y: 68, width: 11, height: 21)
        labelMaeFeliz.text = "1"
        labelMaeFeliz.font = sfRegularMaior
        labelMaeFeliz.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeSeria.frame = CGRect(x: 1312, y: 68, width: 11, height: 21)
        labelMaeSeria.text = "0"
        labelMaeSeria.font = sfRegularMaior
        labelMaeSeria.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelMaeTriste.frame = CGRect(x: 1382, y: 68, width: 11, height: 21)
        labelMaeTriste.text = "0"
        labelMaeTriste.font = sfRegularMaior
        labelMaeTriste.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBebe.frame = CGRect(x: 1211, y: 129, width: 154, height: 21)
        labelBebe.text = "Bebês alimentados"
        labelBebe.font = sfRegularMaior
        labelBebe.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        labelBebeFeliz.frame = CGRect(x: 1241, y: 161, width: 11, height: 21)
        labelBebeFeliz.text = "0"
        labelBebeFeliz.font = sfRegularMaior
        labelBebeFeliz.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        viewFreezer.frame = CGRect(x: 636, y: 217, width: 90, height: 144.2)
        viewFreezer.image = UIImage(named: "FreezerTransparente@2x.png")
        viewFreezer.isUserInteractionEnabled = false
        let tapFreezer = UITapGestureRecognizer(target: self, action: #selector(handleTapInFreezer))
        viewFreezer.addGestureRecognizer(tapFreezer)
        
        viewPiso.frame = CGRect(x: 294.85, y: 233.53, width: 1040.81, height: 600.28)
        viewPiso.image = UIImage(named: "PisoTransparente@2x.png")
        viewPiso.isUserInteractionEnabled = true
        let tapPiso = UITapGestureRecognizer(target: self, action: #selector(handleTapInPiso))
        viewPiso.addGestureRecognizer(tapPiso)
        
        maeView.frame = CGRect(x: 920.23, y: 276.51, width: 50.34, height: 114.6)
        maeView.image = UIImage(named: "Mãe@2x.png")
        maeView.isUserInteractionEnabled = false
        let tapM = UITapGestureRecognizer(target: self, action: #selector(handleTapInM))
        maeView.addGestureRecognizer(tapM)
        
        bebeView.frame = CGRect(x: 929.38, y: 326.72, width: 23.29, height: 37.73)
        bebeView.image = UIImage(named: "Bebê@2x.png")
        bebeView.isUserInteractionEnabled = false
        let tapB = UITapGestureRecognizer(target: self, action: #selector(handleTapInB))
        bebeView.addGestureRecognizer(tapB)
        
        pontuacao()
        
        view.addSubview(viewSprite)
        view.addSubview(viewPiso)
        view.addSubview(viewFreezer)
        view.addSubview(buttonInicio)
        view.addSubview(viewMissoes)
        view.addSubview(labelMissoes)
        view.addSubview(labelMissaoUm)
        view.addSubview(buttonDoar)
        view.addSubview(labelMissaoDois)
        view.addSubview(labelMissaoTres)
        view.addSubview(labelMissaoQuatro)
        view.addSubview(viewBgPontuacao)
        view.addSubview(viewPontuacao)
        view.addSubview(labelPontuacao)
        view.addSubview(viewBgReacoes)
        view.addSubview(viewReacoesMae)
        view.addSubview(viewReacoesBebe)
        view.addSubview(labelMae)
        view.addSubview(labelMaeFeliz)
        view.addSubview(labelMaeSeria)
        view.addSubview(labelMaeTriste)
        view.addSubview(labelBebe)
        view.addSubview(labelBebeFeliz)
        view.addSubview(maeView)
        view.addSubview(bebeView)
        view.addSubview(viewBgPopUp)
        view.addSubview(viewPopUp)
        view.addSubview(labelParabens)
        view.addSubview(labelVoceConseguiu)
        view.addSubview(buttonContinuar)
        
        self.view = view 
    }
    
    public override func viewDidLoad() {
        buttonInicio.addTarget(self, action: #selector(NivelUmViewController.touchedButtonInicio), for: .touchUpInside)
        buttonDoar.addTarget(self, action: #selector(NivelUmViewController.touchedButtonDoar), for: .touchUpInside)
        buttonContinuar.addTarget(self, action: #selector(NivelUmViewController.touchedButtonContinuar), for: .touchUpInside)
        
        viewSprite.presentScene(scene)
        scene.backgroundColor = .clear
        viewSprite.allowsTransparency = true
        viewSprite.backgroundColor = .clear
        
        cenario.setScale(1)
        cenario.anchorPoint = CGPoint.zero
        cenario.position = CGPoint(x: 0, y: 0)
        
        lavaLouca.physicsBody = SKPhysicsBody(rectangleOf: lavaLouca.size)
        lavaLouca.physicsBody?.affectedByGravity = false
        lavaLouca.physicsBody?.allowsRotation = false
        lavaLouca.physicsBody?.isDynamic = false

        lavaLouca.setScale(1)
        lavaLouca.position = scene.convertPoint(fromView: CGPoint(x: 787, y: 250))
        
        freezer = SKSpriteNode(imageNamed: "FreezerComLeite@2x.png")

        freezer.physicsBody = SKPhysicsBody(rectangleOf: freezer.size)
        freezer.physicsBody?.affectedByGravity = false
        freezer.physicsBody?.allowsRotation = false
        freezer.physicsBody?.isDynamic = false
        
        freezer.setScale(1)
        freezer.position = scene.convertPoint(fromView: CGPoint(x: 680, y: 291))
        
        balcao.physicsBody = SKPhysicsBody(rectangleOf: balcao.size)
        balcao.physicsBody?.affectedByGravity = false
        balcao.physicsBody?.allowsRotation = false
        balcao.physicsBody?.isDynamic = false
        
        balcao.setScale(1)
        balcao.position = scene.convertPoint(fromView: CGPoint(x: 565, y: 422))
        
        armario.physicsBody = SKPhysicsBody(rectangleOf: armario.size)
        armario.physicsBody?.affectedByGravity = false
        armario.physicsBody?.allowsRotation = false
        armario.physicsBody?.isDynamic = false
        
        armario.setScale(1)
        armario.position = scene.convertPoint(fromView: CGPoint(x: 389, y: 457))
        
        filtroAgua.physicsBody = SKPhysicsBody(rectangleOf: filtroAgua.size)
        filtroAgua.physicsBody?.affectedByGravity = false
        filtroAgua.physicsBody?.allowsRotation = false
        filtroAgua.physicsBody?.isDynamic = false
        
        filtroAgua.setScale(1)
        filtroAgua.position = scene.convertPoint(fromView: CGPoint(x: 894, y: 256))
        
        sofa.physicsBody = SKPhysicsBody(rectangleOf: sofa.size)
        sofa.physicsBody?.affectedByGravity = false
        sofa.physicsBody?.allowsRotation = false
        sofa.physicsBody?.isDynamic = false
        
        sofa.setScale(1)
        sofa.position = scene.convertPoint(fromView: CGPoint(x: 1040, y: 373))
        
        centroSofa.physicsBody = SKPhysicsBody(rectangleOf: centroSofa.size)
        centroSofa.physicsBody?.affectedByGravity = false
        centroSofa.physicsBody?.allowsRotation = false
        centroSofa.physicsBody?.isDynamic = false
        
        centroSofa.setScale(1)
        centroSofa.position = scene.convertPoint(fromView: CGPoint(x: 1247, y: 496))
        
        adm.physicsBody = SKPhysicsBody(rectangleOf: adm.size)
        adm.physicsBody?.affectedByGravity = false
        adm.physicsBody?.allowsRotation = false
        adm.physicsBody?.isDynamic = false
        
        buildAdmParaCima()
        buildAdmParaBaixo()
        buildEntregadorParaCima()
        buildEntregadorParaBaixo()
        buildEntregadorParaBaixoSemEntrega()
        buildAdmComLeite()
        
        scene.addChild(cenario)
        scene.addChild(lavaLouca)
        scene.addChild(freezer)
        scene.addChild(balcao)
        scene.addChild(armario)
        scene.addChild(filtroAgua)
        scene.addChild(sofa)
        scene.addChild(centroSofa)
        scene.addChild(adm)
        scene.addChild(entregador)
        scene.addChild(EntregadorSemEntrega)
        scene.addChild(admComLeite)
        
    }
    
    @IBAction public func touchedButtonInicio() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction public func touchedButtonDoar() {
        viewPontuacao.image = mudandoPontuacao[1]
        
        buttonDoar.isEnabled = false
        buttonDoar.alpha = 0.5
        
        labelMissaoUm.alpha = 0.5
        labelMissaoUm.font = sfRegular
        labelMissaoDois.alpha = 1
        labelMissaoDois.font = sfBoldMenor
        
        moveEntregador(location: scene.convertPoint(fromView: CGPoint(x: 560, y: 605)))
        
        viewFreezer.isUserInteractionEnabled = true
                
    }
    
    @IBAction public func touchedButtonContinuar() {
        viewBgPopUp.isHidden = true
        viewPopUp.isHidden = true
        labelParabens.isHidden = true
        labelVoceConseguiu.isHidden = true
        buttonContinuar.isHidden = true
    }
    
    @objc func handleTapInFreezer(_ gesture: UIGestureRecognizer) {
        
        moveEntregador(location: scene.convertPoint(fromView: CGPoint(x: 713, y: 320)))
        viewPontuacao.image = mudandoPontuacao[2]
        
        labelMissaoDois.alpha = 0.5
        labelMissaoDois.font = sfRegular
        
        labelMissaoTres.alpha = 1
        labelMissaoTres.font = sfBoldMenor
        
        labelMaeFeliz.text = "0"
        labelMaeSeria.text = "1"
        
        if entregador.position == scene.convertPoint(fromView: CGPoint(x: 713, y: 320)) {
            entregador.removeAllActions()
            EntregadorSemEntrega.setScale(1.2)
            EntregadorSemEntrega.position = scene.convertPoint(fromView: CGPoint(x: 713, y: 320))
            moveEntregadorSemEntrega(location: scene.convertPoint(fromView: CGPoint(x: 1570, y: 950)))
            moveAdm(location: scene.convertPoint(fromView: CGPoint(x: 730, y: 295)))
            
            maeView.isUserInteractionEnabled = true
            
            viewPontuacao.image = mudandoPontuacao[3]
        }
        
        if entregador.position == scene.convertPoint(fromView: CGPoint(x: 1570, y: 950)) {
            
            EntregadorSemEntrega.removeAllActions()

        }

    }
    
    @objc func handleTapInPiso(_ gesture: UIGestureRecognizer) {
        
        moveAdm(location: scene.convertPoint(fromView: gesture.location(in: viewSprite)))
        
    }
    
    @objc func handleTapInM(_ gesture: UIGestureRecognizer) {
        adm.setScale(0)
        admComLeite.setScale(1.2)
        admComLeite.position = scene.convertPoint(fromView: CGPoint(x: 730, y: 295))
        moveAdmComLeite(location: scene.convertPoint(fromView: CGPoint(x: 870, y: 360)))
        
        adm.removeAllActions()
        
        viewPontuacao.image = mudandoPontuacao[4]
        
        bebeView.isUserInteractionEnabled = true
        
        labelMissaoTres.alpha = 0.5
        labelMissaoTres.font = sfRegular
        
        labelMissaoQuatro.alpha = 1
        labelMissaoQuatro.font = sfBoldMenor
        
        labelMaeFeliz.text = "1"
        labelMaeSeria.text = "0"
        
    }
    
    @objc func handleTapInB(_ gesture: UIGestureRecognizer) {
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 870, y: 360))
        moveAdm(location: scene.convertPoint(fromView: CGPoint(x: 600, y: 450)))
        
        admComLeite.removeAllActions()
        admComLeite.setScale(0)
        
        viewPontuacao.image = mudandoPontuacao[5]
        
        viewBgPopUp.frame = CGRect(x: 0, y: 0, width: 1440, height: 900)
        viewBgPopUp.image = UIImage(named: "BgPopUp@2x.png")
        
        viewPopUp.frame = CGRect(x: 490, y: 327, width: 461, height: 246)
        viewPopUp.image = UIImage(named: "PopUp@2x.png")
        
        labelParabens.frame = CGRect(x: 638, y: 363, width: 180, height: 50)
        labelParabens.text = "Parabéns!"
        labelParabens.font = UIFont(name: "SFProRounded-Bold", size: 36)
        labelParabens.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        labelVoceConseguiu.frame = CGRect(x: 590, y: 407, width: 260, height: 70)
        labelVoceConseguiu.text = "Você conseguiu terminar as missões! \n Continue a ajudar as mamães."
        labelVoceConseguiu.numberOfLines = 2
        labelVoceConseguiu.textAlignment = NSTextAlignment.center
        labelVoceConseguiu.font = UIFont(name: "SFProRounded-Regular", size: 14)
        labelVoceConseguiu.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        buttonContinuar.frame = CGRect(x: 638, y: 481, width: 165, height: 56)
        buttonContinuar.setTitle("Continuar", for: .normal)
        buttonContinuar.titleLabel?.font = sfBoldMenor
        buttonContinuar.backgroundColor = #colorLiteral(red: 1, green: 0.4862745098, blue: 0.5294117647, alpha: 1)
        buttonContinuar.layer.cornerRadius = 14
        
        labelBebeFeliz.text = "1"
        
    }
    
    func pontuacao() {

        let comecoNome = "Pontuacao"
        let índices = [0,1,2,3,4,5]
        
        for i in índices {
            let umFramePontuacao = UIImage(named: "\(comecoNome)\(i)@2x.png")
            mudandoPontuacao.append(umFramePontuacao!)
        }
        
//        viewPontuacao.animationImages = imagensAnimação
//        viewPontuacao.animationDuration = 0.5
//        viewPontuacao.startAnimating()
        
    }
    
    func buildAdmParaCima() {
        
        let comecoNome = "ADM - Esquerda"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmEsquerda = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmEsquerda)
        }
        
        andandoFramesParaCima = imagensAnimação
        
        let firstFrameTexture = andandoFramesParaCima[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 828, y: 650))
        
    }
    
    func buildAdmParaBaixo() {
        //        let admDireitaAnimatedAtlas = SKTextureAtlas(named: "ADMDireita")
        //        var animacaoAdmDireita: [SKTexture] = []
        //
        //        let indices = [0,1,2,3]
        //        for i in indices {
        //            let admTextureName = "\(admDireita)\(i)"
        //            animacaoAdmDireita.append(admDireitaAnimatedAtlas.textureNamed(admTextureName))
        //        }
        
        let comecoNome = "ADM  - Direita"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmDireita)
        }
        
        //        andandoFrames = animacaoAdmDireita
        andandoFramesParaBaixo = imagensAnimação
        
        let firstFrameTexture = andandoFramesParaBaixo[0]
        adm = SKSpriteNode(texture: firstFrameTexture)
        adm.setScale(1.2)
        adm.position = scene.convertPoint(fromView: CGPoint(x: 828, y: 650))
        
    }
    
    func animateAdmParaCima() {
        adm.run(SKAction.repeatForever(SKAction.animate(with: andandoFramesParaCima, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaCima")
    }
    
    func animateAdmParaBaixo() {
        
        adm.run(SKAction.repeatForever(SKAction.animate(with: andandoFramesParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoParaBaixo")
        //        let animação = SKAction.animate(with: andandoFrames, timePerFrame: 3.0/20.0)
        //        let animaçãoRepetida = SKAction.repeatForever(animação)
        //        admDireita.run(animaçãoRepetida)
        
    }
    
    func buildAdmComLeite() {
        
        let comecoNome = "ADMComLeite  - Baixo"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseAdmDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseAdmDireita)
        }
        
        admComEntregaAndandoParaBaixo = imagensAnimação
        
        let firstFrameTexture = admComEntregaAndandoParaBaixo[0]
        admComLeite = SKSpriteNode(texture: firstFrameTexture)
        
    }
    
    func animateAdmComEntregaParaBaixo() {
        
        admComLeite.run(SKAction.repeatForever(SKAction.animate(with: admComEntregaAndandoParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"andandoComEntregaParaBaixo")
    
    }
    
    func moveAdm(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let admSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - adm.position.x, y: location.y - adm.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / admSpeed
        
        if (location.y > adm.position.y) {
            
            if adm.action(forKey: "andandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateAdmParaCima()
            }
            
        } else {
            
            if adm.action(forKey: "andandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateAdmParaBaixo()
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
    
    func moveAdmComLeite(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let admSpeed = viewSprite.frame.size.width / 22.0
        
        let moveDifference = CGPoint(x: location.x - admComLeite.position.x, y: location.y - admComLeite.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / admSpeed
        
        if (location.y > admComLeite.position.y) {
            
            if admComLeite.action(forKey: "andandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateAdmParaCima()
            }
            
        } else {
            
            if admComLeite.action(forKey: "andandoComEntregaParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateAdmComEntregaParaBaixo()
            }
        }
        
        admComLeite.xScale = abs(admComLeite.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.admComLeiteMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        admComLeite.run(moveActionWithDone, withKey:"admMovingComLeite")
        
    }
    
    func admComLeiteMoveEnded() {
        admComLeite.removeAllActions()
    }
    
    func buildEntregadorParaCima() {
        
        let comecoNome = "Entregador - Cima"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseEntregadorEsquerda = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseEntregadorEsquerda)
        }
        
        entregadorAndandoParaCima = imagensAnimação
        
        entregador.setScale(1.2)
        entregador.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func buildEntregadorParaBaixo() {
        
        let comecoNome = "Entregador  - Baixo"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseEntregadorDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseEntregadorDireita)
        }
        
        entregadorAndandoParaBaixo = imagensAnimação
        
        let firstFrameTexture = entregadorAndandoParaBaixo[0]
        entregador = SKSpriteNode(texture: firstFrameTexture)
        entregador.setScale(1.2)
        entregador.position = scene.convertPoint(fromView: CGPoint(x: -10, y: 950))
        
    }
    
    func buildEntregadorParaBaixoSemEntrega() {
        
        let comecoNome = "EntregadorSemEntrega  - Baixo"
        let índices = [0,1,2,3]
        var imagensAnimação: [SKTexture] = []
        
        for i in índices {
            let umaPoseEntregadorDireita = SKTexture(imageNamed: "\(comecoNome)\(i)")
            imagensAnimação.append(umaPoseEntregadorDireita)
        }
        
        entregadorSemEntregaAndandoParaBaixo = imagensAnimação
        
        let firstFrameTexture = entregadorSemEntregaAndandoParaBaixo[0]
        EntregadorSemEntrega = SKSpriteNode(texture: firstFrameTexture)
        
    }
    
    func animateEntregadorParaCima() {
         entregador.run(SKAction.repeatForever(SKAction.animate(with: entregadorAndandoParaCima, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaCima")
     }
     
     func animateEntregadorParaBaixo() {
         
         entregador.run(SKAction.repeatForever(SKAction.animate(with: entregadorAndandoParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorAndandoParaBaixo")
     }
    
    
    func animateEntregadorSemEntregaParaBaixo() {
        
        EntregadorSemEntrega.run(SKAction.repeatForever(SKAction.animate(with: entregadorSemEntregaAndandoParaBaixo, timePerFrame: 0.2, resize: false, restore: true)), withKey:"entregadorSemEntregaAndandoParaBaixo")
    }
    
    func moveEntregador(location: CGPoint) {
        var multiplierForDirection: CGFloat = 1.0
        let entregadorSpeed = viewSprite.frame.size.width / 16.0
        
        let moveDifference = CGPoint(x: location.x - entregador.position.x, y: location.y - entregador.position.y)
        let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
        
        let moveDuration = distanceToMove / entregadorSpeed
        
        if (location.y > entregador.position.y) {
            
            if entregador.action(forKey: "entregadorAndandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateEntregadorParaCima()
            }
            
        } else {
            
            if entregador.action(forKey: "entregadorAndandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateEntregadorParaBaixo()
            }
        }
        
        entregador.xScale = abs(entregador.xScale) * multiplierForDirection
        
        let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
        
        let doneAction = SKAction.run({ [weak self] in
            self?.entregadorMoveEnded()
        })
        
        let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
        entregador.run(moveActionWithDone, withKey:"entregadorMoving")
        
    }
    
    func entregadorMoveEnded() {
        entregador.removeAllActions()
    }
    
    func moveEntregadorSemEntrega(location: CGPoint) {
           var multiplierForDirection: CGFloat = 1.0
           let entregadorSpeed = viewSprite.frame.size.width / 16.0
           
           let moveDifference = CGPoint(x: location.x - EntregadorSemEntrega.position.x, y: location.y - EntregadorSemEntrega.position.y)
           let distanceToMove = sqrt(moveDifference.x * moveDifference.x + moveDifference.y * moveDifference.y)
           
           let moveDuration = distanceToMove / entregadorSpeed
               
        if (location.y > EntregadorSemEntrega.position.y) {
            
            if EntregadorSemEntrega.action(forKey: "entregadorAndandoParaCima") == nil {
                // Se moveDifference for maior que 0, multiplierForDirection = -1.0 senão, é igual a 1.0
                multiplierForDirection = moveDifference.x > 0 ? -1.0 : 1.0
                animateEntregadorParaCima()
            }
            
        } else {
            
            if EntregadorSemEntrega.action(forKey: "entregadorSemEntregaAndandoParaBaixo") == nil {
                multiplierForDirection = moveDifference.x < 0 ? -1.0 : 1.0
                animateEntregadorSemEntregaParaBaixo()
            }
        }
        
           EntregadorSemEntrega.xScale = abs(EntregadorSemEntrega.xScale) * multiplierForDirection
           
           let moveAction = SKAction.move(to: location, duration:(TimeInterval(moveDuration)))
           
           let doneAction = SKAction.run({ [weak self] in
               self?.entregadorSemEntregaMoveEnded()
           })
           
           let moveActionWithDone = SKAction.sequence([moveAction, doneAction])
           EntregadorSemEntrega.run(moveActionWithDone, withKey:"entregadorSemEntregaMoving")
           
       }
       
       func entregadorSemEntregaMoveEnded() {
           EntregadorSemEntrega.removeAllActions()
       }
    
}

