//
//  ViewController.swift
//  sprite-example-ios
//
//  Created by Stefan Nebel on 16.03.21.
//


import SpriteKit
import UIKit


class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()


    let scene = SKScene()
    scene.size = CGSize(width: 360, height: 480)
    scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    scene.scaleMode = .aspectFit

    let sceneView = SKView(frame: view.frame)
    view.addSubview(sceneView)
    sceneView.showsNodeCount = true
    sceneView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    view.addSubview(sceneView)

    let node = SKSpriteNode(color: .clear, size: scene.size)
    node.position = .zero
    scene.addChild(node)
    sceneView.presentScene(scene)

    let fileName = "ImageSequence_videos_puppets_with_alpha_hevc.mov"
    let videoNode = SKVideoNode(fileNamed: fileName)

    let filter = CIFilter(name: "CIOverlayBlendMode")
    videoNode.size = scene.size
    videoNode.position = .zero
    let effectNode = SKEffectNode()
    effectNode.blendMode = .alpha
    effectNode.filter = filter
    effectNode.addChild(videoNode)
    scene.addChild(effectNode)
  }
}
