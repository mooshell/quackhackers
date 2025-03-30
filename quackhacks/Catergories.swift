//
//  Catergories.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//

import SwiftUI

struct Categories: View {
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
                        
                        Text("Grocery Department")
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
                        Text("What type of recipe are you looking for?")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(minHeight: 30)
                        
                        // BUTTON - - - - - - - - - PRODUCE - - - - - - - - - -
                        VStack{
                            
                            NavigationLink(destination: Produce()){
                                Text("Produce")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                                
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            // END Produce
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - MEAT - - - - - - - - -
                            NavigationLink(destination: Meat()){
                                Text("Meat")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }.navigationBarBackButtonHidden(true)
                                .padding()
                                .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))// END PRODUCE
                        } // - - FIM VSTACK 1 - -
                        Spacer()
                            .frame(minHeight: 20)
                        
                        
                        VStack{
                            //BUTTON - - - - - - DAIRY - - - - - -
                            NavigationLink(destination: Dairy_and_Eggs()){
                                Text("Dairy")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END DAIRY
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - BAKERY - - - - - - -
                            NavigationLink(destination: Bakery()){
                                Text("Bakery")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END BAKERY
                        }
                        Spacer()
                            .frame(minHeight: 20)
                        
                        VStack{
                            //BUTTON - - - - - - Beverages - - - - - -
                            NavigationLink(destination: Beverages()){
                                Text("Beverages")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END BEVERAGES
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - - - SNACKS- - - - - - - -
                            NavigationLink(destination: Snacks()){
                                Text("Snacks")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END SNACKS
                            
                            Spacer()
                                .frame(minHeight: 20)
                            
                            //BUTTON - - - - - - - - HOUSEHOLD ITEMS- - - - - - -
                            NavigationLink(destination: Household_and_Personal_Care_Items()){
                                Text("Household and Personal Care Items")
                                    .foregroundColor(.black)
                                    .font(.title)
                                    .bold()
                                    .frame(maxWidth: 320)
                            }
                            .padding()
                            .background(Color(red:162/255, green:162/255, blue:162/255).clipShape(RoundedRectangle(cornerRadius:15)))
                            //END HOUSEHOLD ITEMS
                            
                            
                            
                            
                        } // end of VStack
                        
                    } // end of ScrollView
                } // end of ZStack
                
            } // end of NavView
            
        }
    }
    
}
struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}

