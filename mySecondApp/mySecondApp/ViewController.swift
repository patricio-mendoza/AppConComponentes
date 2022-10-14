//
//  ViewController.swift
//  mySecondApp
//
//  Created by Alumno on 30/09/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var numerador: UITextField!
    @IBOutlet weak var denominador: UITextField!
    
    var player = AVAudioPlayer()
    @IBAction func playSound(_ sender: Any) {
        let audioPath = Bundle.main.path(forResource: "augh", ofType: "mp3")
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            player.play()
        } catch {
            print("error")
        }
        let feedbackStyle = UIImpactFeedbackGenerator.FeedbackStyle.rigid
        let feedbackGenerator = UIImpactFeedbackGenerator(style: feedbackStyle)
        feedbackGenerator.impactOccurred()
    }
    
    @IBAction func tick(_ sender: Any) {
        let feedbackStyle = UIImpactFeedbackGenerator.FeedbackStyle.rigid
        let feedbackGenerator = UIImpactFeedbackGenerator(style: feedbackStyle)
        feedbackGenerator.impactOccurred()
    }
    
    @IBAction func division(_ sender: Any) {
        let n = Float(numerador.text!)
        let d = Float(denominador.text!)
        
        let res = (n ?? 0) / (d ?? 0)
        
        let alert = UIAlertController(title: "Alerta!!", message: String(res), preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func Button1(_ sender: Any) {
        let alert = UIAlertController(title: "Alerta!!", message: usuarioTextField.text, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usuarioTextField.text = "Segunda Aplicacion"
        usuarioTextField.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }
}

