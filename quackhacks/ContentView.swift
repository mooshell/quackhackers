//
//  ContentView.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
        ZStack {
            Color(red: 162/255, green: 162/255, blue: 162/255)
                .ignoresSafeArea()
            
                VStack {
                    let image = Image("Attila_Running")
                    image
                    Text("Welcome to")
                        .font(.title)
                    Text("Flock Share")
                        .font(.title)
                        .foregroundColor(Color(red: 173/255, green: 32/255, blue: 3/255))
                        .fontWeight(.bold)

                    
                   NavigationLink(destination: Categories()) {
                        Text("Register or Sign In as a User")
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 200, height: 50) // Adjust height to look more like a button
                            .background(
                                RoundedRectangle(cornerRadius: 15) // Set corner radius
                                    .fill(Color.white) // Fill with white color
                                    .shadow(radius: 3) // Apply shadow
                            )
                            .foregroundColor(Color(red: 173/255, green: 32/255, blue: 3/255)) // Set text color
                            .fontWeight(.bold)
                    }

                             
                        // this text serves as a button
                        
                                         }
                    // another form of a button
                   

                    
                    
                }
            }
            }
        
            
            
        }
        
    


#Preview {
    ContentView()
}
