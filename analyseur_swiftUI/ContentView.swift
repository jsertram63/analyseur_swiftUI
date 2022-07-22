//
//  ContentView.swift
//  analyseur_swiftUI
//
//  Created by Lunack on 18/07/2022.
//
//
import SwiftUI

struct ContentView: View {
    
    @State var textSaisi = ""
    
    var body: some View {
        NavigationView {
            ScrollView( showsIndicators: false) {
                VStack(spacing: 25){
                    TextField("Saisir votre texte",text: $textSaisi)
                        .padding(.vertical)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                    print("Image tapped!")

                    }
                    label: {
                    Text("Analyser")
                            .font(.system(size: 20.0))
                            .foregroundColor(.white)
                    }
                    .frame( maxWidth:.infinity)
                    .padding()
                    .background(Color(red: 0, green: 0, blue: 0.5))
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 5, x: 3, y: 3)
                    
                  
                    Divider()
                        .padding(.vertical)
                    Text("Les voyelles")
                    Divider()
                        .padding(.vertical)
                    VStack(alignment: .center, spacing: 15.0) {
                        
                       
               
                      
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("A : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.red)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("E : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.yellow)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("I : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.cyan)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("O : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.green)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("U : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.blue)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text("Y : 0 occurences")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.purple)
                        .cornerRadius(10.0)
                        
                        HStack(alignment: .firstTextBaseline, spacing: 6) {
                        Text(" 0 consonnes")
                                .fontWeight(.bold)
                                .padding()
                                .foregroundColor(.white)

                        Spacer()
                        }
                        .background(.black)
                        .cornerRadius(10.0)
                        /*
                        RoundedRectangle(cornerRadius:10)
                            .fill(.red)
                            .frame( height: 40)
                       
                        RoundedRectangle(cornerRadius:10)
                            .fill(.yellow)
                            .frame( height: 40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(.cyan)
                            .frame( height: 40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(.green)
                            .frame( height: 40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(.blue)
                            .frame( height: 40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(.purple)
                            .frame( height: 40)
                        RoundedRectangle(cornerRadius:10)
                            .fill(.black)
                            .frame(height: 40)*/
                       
                            
                        
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
