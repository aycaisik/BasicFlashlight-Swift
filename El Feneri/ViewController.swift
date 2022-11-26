//
//  ViewController.swift
//  El Feneri
//
//  Created by Ayça Işık on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: -UI Elements
    @IBOutlet var liightButton: UIButton!

    //MARK: -Properties
    var lightOn = true
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() //uygulama ekrana gelmeden başlangıçta buttonun ismini değiştirebildik
    }
    
    //MARK: -Actions
    @IBAction func buttonTapped(_ button:UIButton){
        lightOn.toggle() // true ise false false ise true yapar
        //lightOn = !lightOn da yapabilirdik.
        updateUI()
    }
    
    //MARK: -Functions
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
        
        if lightOn {
        //ışık açık olmalı
        view.backgroundColor = .white
        //liightButton.setTitle("OFF", for: .normal)
    
        }else{
        //ışık kapalı olmalı
        view.backgroundColor = .black
        //liightButton.setTitle("ON", for: .normal)
            
        }
    }

}

