//
//  AnalyseurViewModel.swift
//  analyseur_swiftUI
//
//  Created by Lunack on 22/07/2022.
//

class AnalyseurViewModel  {
    
    var motAnalyse: String = ""
    var nombreDeA: Int = 0
    var nombreDeE: Int = 0
    var nombreDeI: Int = 0
    var nombreDeO: Int = 0
    var nombreDeU: Int = 0
    var nombreDeY: Int = 0
    var nombreDeConsonne : Int = 0
    var dicoVoyelle: [String:Int] = ["a":0,"e":0,"i":0,"o":0,"y":0]
    
    func remiseAzerro(){
        for (key,_) in dicoVoyelle {
            dicoVoyelle.updateValue(0, forKey: key)
        }
        nombreDeConsonne = 0
    }
    
    func analyseMot() {
        for lettre in motAnalyse.lowercased() {
            switch lettre {
            case "a":
                if let value = dicoVoyelle["a"] {
                    dicoVoyelle["a"] = value + 1
                }
            case "e":
                if let value = dicoVoyelle["e"] {
                    dicoVoyelle["e"] = value + 1
                }
            case "i":
                if let value = dicoVoyelle["i"] {
                    dicoVoyelle["i"] = value + 1
                }
            case "o":
                if let value = dicoVoyelle["o"] {
                    dicoVoyelle["o"] = value + 1
                }
            case "u":
                if let value = dicoVoyelle["u"] {
                    dicoVoyelle["u"] = value + 1
                }
            case "y":
                if let value = dicoVoyelle["y"] {
                    dicoVoyelle["y"] = value + 1
                }
            default: nombreDeConsonne += 1
            }
        }
    }
    
    var lettreA: String {
        if let lettreA = dicoVoyelle["a"] {
            return "\(lettreA)"
        }else {
            return "0"
        }
    }
    
    
}
