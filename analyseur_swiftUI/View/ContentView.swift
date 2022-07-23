//
//  ContentView.swift
//  analyseur_swiftUI
//
//  Created by Lunack on 18/07/2022.
//
//
import SwiftUI

struct ContentView: View {
    
    // initialisation des proprités de navigationTitle
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.tintColor,
            .font : UIFont(name:"Noteworthy", size: 35)!
        ]
    }
    
    @State var textSaisi = ""
    @State var analyseurViewModel = AnalyseurViewModel()
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        // Container View permettant d'activer la navigation entre les vues
        NavigationView {
            // Container View permettant le scroll d'une vue si celle est trop grande pour la safe area
            ScrollView(showsIndicators: false) {
                // Container View verticale
                VStack(spacing: 25) {
                    // Container View champ de text - binding de la propriété avec $
                    TextField("Saisir votre texte",text: $textSaisi)
                    // Modifyers permettant de stylage des container View
                        .frame(width: screenSize.width * 0.9)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.vertical)
                    
                    // Container View bouton - logique de l'action + label
                    Button {
                        
                    }
                label: {
                    Text("Analyser")
                        .font(.custom("Noteworthy", size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                }
                .frame(width: screenSize.width * 0.6)
                .padding()
                .background(Color(red: 0, green: 0, blue: 0.5))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5), radius: 5, x: 3, y: 3)
                    
                    // Container View séparateur
                    Divider()
                    
                    VStack(alignment: .center, spacing: 5.0) {
                        Text("Mot tappé : ")
                            .font(.custom("Noteworthy", size: 20))
                            .fontWeight(.medium)
                        
                        Text(textSaisi)
                            .font(.custom("Noteworthy", size: 20))
                            .fontWeight(.medium)
                    }
                    
                    Divider()
                    
                    VStack(alignment: .center, spacing: 15.0) {
                        // Container View horizontal
                        HStack(spacing: 5) {
                            Text("A : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.red)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("E : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.yellow)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("I : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.cyan)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("O : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.green)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("U : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.blue)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("Y : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.purple)
                        .cornerRadius(10.0)
                        
                        HStack(spacing: 5) {
                            Text("0 : consonnes")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        .background(.black)
                        .cornerRadius(10.0)
                    }
                }
                .padding()
                .navigationTitle("Analyseur SWIFTUI")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
