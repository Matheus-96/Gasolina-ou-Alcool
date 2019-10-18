//
//  ViewController.swift
//  GasolinaOuAlcool
//
//  Created by Matheus Rodrigues Araujo on 14/10/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    @IBOutlet weak var resultadoLegenda: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
                // validar valores digitados
                let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                if validaCampos {
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                } else {
                    resultadoLegenda.text = "Digite os precos para calcular!"
                }
            }
        }
    }
    
    func calcularMelhorPreco (precoAlcool: String, precoGasolina: String) {
        
        if let valorAlcool = Double(precoAlcool) {
            if let valorGasolina = Double(precoGasolina) {
                
                let resultadoPreco = valorAlcool / valorGasolina
                
                if resultadoPreco >= 0.7 {
                    self.resultadoLegenda.text = "Melhor utilizar Gasolina!"
                } else {
                    self.resultadoLegenda.text = "Melhor utilizar Álcool!"
                }
                
            }
        }
    }
    
    func validarCampos (precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoAlcool.isEmpty {
            camposValidados = false
        } else if precoGasolina.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

