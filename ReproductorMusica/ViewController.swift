//
//  ViewController.swift
//  ReproductorMusica
//
//  Created by Cecilia de la Paz Villarreal Cavazos on 10/30/16.
//  Copyright © 2016 Cecilia de la Paz Villarreal Cavazos. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    private var reproductor: AVAudioPlayer!
    
  
    
    @IBOutlet weak var imgcover: UIImageView!
    
    let image0 = UIImage(named: "helloAdele.jpg")
    let image1 = UIImage(named: "prism.jpg")
    let image2 = UIImage(named: "avicii.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sonidoURL = Bundle.main.url(forResource: "01. Hello (mp3cut.net)",withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        } catch {
            print("Error al cargar el archivo del sonido");
            
        }
    }

    @IBAction func btnAdele() {
        let sonidoURL2 = Bundle.main.url(forResource: "01. Hello (mp3cut.net)",withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL2!)
        } catch {
            print("Error al cargar el archivo del sonido");
            
        }

        imgcover.image = image0
        

    }
    
    
    @IBAction func btnAvicii() {
        let sonidoURL3 = Bundle.main.url(forResource: "01 - Waiting For Love (mp3cut.net)",withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL3!)
        } catch {
            print("Error al cargar el archivo del sonido");
            
        }
        imgcover.image = image2

    }
    
    
    @IBAction func btnKaty() {
        let sonidoURL4 = Bundle.main.url(forResource: "01 Roar (mp3cut.net)",withExtension: "mp3")
        do{
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL4!)
        } catch {
            print("Error al cargar el archivo del sonido");
            
        }
        imgcover.image = image1

    }
    
    @IBAction func stop() {
        if reproductor.isPlaying{
            reproductor.stop()
            reproductor.currentTime = 0.0
            
        }
    }
   
    @IBAction func play() {
        if !reproductor.isPlaying{
            reproductor.play()
        }
    }
    
    @IBAction func pause() {
        if reproductor.isPlaying{
            reproductor.pause()
        }

    }
    

}

