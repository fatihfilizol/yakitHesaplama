//
//  ViewController.swift
//  yakitHesaplama
//
//  Created by Fatih Filizol on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var txtYakitFiyat: UITextField!
    @IBOutlet weak var txtAracYakitTuketimi: UITextField!
    @IBOutlet weak var txtMesafe: UITextField!
    @IBOutlet weak var lblTutar: UILabel!
    
    var mesafe : Double = 0
    var aracYakitTuketimikm : Double = 0
    var tutar : Double = 0
    var yakitFiyat : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    
    func Hesaplama(yakitFiyat: Double, aracYakitTuketimi: Double, mesafe: Double){
        aracYakitTuketimikm = aracYakitTuketimi / 100
        tutar = (aracYakitTuketimikm * mesafe) * yakitFiyat
        tutar = tutar + (tutar * 0.18)
        lblTutar.text = String(format: "%.2f",tutar)
    }
    @IBAction func btnHesapla(_ sender: Any) {
        
        if let ayt = Double(txtAracYakitTuketimi.text!) {
            if let msf = Double(txtMesafe.text!) {
                if let fyt = Double(txtYakitFiyat.text!) {
                    Hesaplama(yakitFiyat: fyt, aracYakitTuketimi: ayt, mesafe: msf)
                }
            }
        }
        
    }
    
}

