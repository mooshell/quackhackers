//
//  Bakery.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//
import SwiftUI

struct Bakery : View {
    var body: some View {
        
        
        ZStack{
            Color.init(red: 255/255, green: 255/255, blue: 255/255)
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack{
                    Spacer()
                        .frame(minHeight: 30)
                    
                    HStack{
                        Spacer()
                        
                        Text("Bakery Department")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red:172/255, green: 32/255, blue: 3/255))
                        
                        Spacer()
                        
                    } // END OF NAVBAR HStack
                    
                    
                    // Spacers
                    Spacer()
                        .frame(minHeight: 35)
                    // Spacers
                    
                    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - //
                    
                    VStack{ // for first navLink to MainDishes
                        Text("Make a Selecion")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(minHeight: 30)
                        
                        // BUTTON - - - - - - - - - White Bread Loaf - - - - - - - - - -
                        VStack{
                            
                            NavigationLink(destination: Categories()){
                                Text("White Bread Loaf")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                
                                Text(".27 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                
                                Image("TwoApples")
                                    .resizable() // This allows the image to be resized
                                    .frame(width: 100, height: 100) // This sets the size of the image
                                
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            // END White Bread Loaf
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - Dozen Bagels - - - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Dozen Bagels")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".27 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }.navigationBarBackButtonHidden(true)
                                .padding()
                                .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            // END Dozen Bagels
                        } // - - FIM VSTACK 1 - -
                        Spacer()
                            .frame(minHeight: 20)
                        
                        
                        VStack{
                            //BUTTON - - - - - - Muffins - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Muffins")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".30 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END Muffins
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - Cookies  - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Cookies")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".45 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END Cookies
                        }
                        Spacer()
                            .frame(minHeight: 20)
                        
                        
                    } // end of ScrollView
                } // end of ZStack
                
            } // end of NavView
            
            
            
        }
    }
    
    
    
}
struct Bakery_Previews: PreviewProvider {
    static var previews: some View {
        Bakery()
    }
}
