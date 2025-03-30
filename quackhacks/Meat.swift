//
//  Meat.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//
import SwiftUI

struct Meat: View {
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
                        
                        Text("Meat Department")
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
                        
                        // BUTTON - - - - - - - - - Chicken Breast - - - - - - - - - -
                        VStack{
                            
                            NavigationLink(destination: Categories()){
                                Text("Chicken Breast")
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
                            // END Chicken Breast
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - Ground Beef - - - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Ground Beef")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".27 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }.navigationBarBackButtonHidden(true)
                                .padding()
                                .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))// END Ground Beef
                        } // - - FIM VSTACK 1 - -
                        Spacer()
                            .frame(minHeight: 20)
                        
                        
                        VStack{
                            //BUTTON - - - - - - Chicken Nuggets- - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Chicken Nuggets")
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
                            //END Chicken Nuggets
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - Hot Dogs - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Hot Dogs")
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
                            //END Hot Dogs
                        }
                        Spacer()
                            .frame(minHeight: 20)
                        
                        VStack{
                            //BUTTON - - - - - - Ground Turkey - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Ground Turkey ")
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
                            //END Ground Turkey
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            
                        } // end of VStack
                        
                        
                        
                        
                        
                    } // end of ScrollView
                } // end of ZStack
                
            } // end of NavView
            
            
            
        }
    }
    
}



struct Meat_Previews: PreviewProvider {
    static var previews: some View {
        Meat()
    }
}
