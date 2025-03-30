//
//  claim_giving.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//

import SwiftUI

struct claim_giving: View {
   var body: some View {
       @State var locationInput: String = ""   // store user input location
       
       VStack {
           
           Text("Enter your location:")
               .font(.headline)
           
           TextField("City or ZIP Code", text: $locationInput)
               .textFieldStyle(RoundedBorderTextFieldStyle()) // Adds a nice rounded border
               .padding()
               .frame(width: 250) // Adjust width for better layout

           
           // for giving food
           NavigationLink(destination: camera()){
               Text("Give food")
               .multilineTextAlignment(.center)
               .padding()
               .frame(width: 200, height: 50) // Adjust height to look more like a button
               .padding()
           }
           
           
           // for recieving food
           NavigationLink(destination: Categories()){
               Text("Recieve food")
               .multilineTextAlignment(.center)
               .padding()
               .frame(width: 200, height: 50) // Adjust height to look more like a button
               .padding()
           }
           
       }
       
   }
}

#Preview {
   claim_giving()
}
