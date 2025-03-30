//
//  Produce.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//
// Categories for User to pick department
import SwiftUI

struct Produce: View {
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
                        
                        Text("Produce Department")
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
                        
                        // BUTTON - - - - - - - - - Apple - - - - - - - - - -
                        VStack{
                            
                            NavigationLink(destination: Categories()){
                                Text("Two Apples")
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
                            // END Apple
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - Banana - - - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Bananas")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".27 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }.navigationBarBackButtonHidden(true)
                                .padding()
                                .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))// END Banana
                        } // - - FIM VSTACK 1 - -
                        Spacer()
                            .frame(minHeight: 20)
                        
                        
                        VStack{
                            //BUTTON - - - - - - Lettuce- - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Lettuce")
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
                            //END Lettuce
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - Spinach - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Spinach")
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
                            //END Spinach
                        }
                        Spacer()
                            .frame(minHeight: 20)
                        
                        VStack{
                            //BUTTON - - - - - - Tomatoes - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Tomatoes")
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
                            //END Tomatoes
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - - - Baby Carrots - - - - - - - -
                            NavigationLink(destination: Categories()){
                                Text("Baby Carrots")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                Text(".5 mi")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END Baby Carrots
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            
                        } // end of VStack
                        
                        
                        
                        
                        
                    } // end of ScrollView
                } // end of ZStack
                
            } // end of NavView
            
            
            
        }
    }
    
    
}


struct Produce_Previews: PreviewProvider {
    static var previews: some View {
        Produce()
    }
}

