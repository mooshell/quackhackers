//
//  usersignin.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//
import SwiftUI


struct UserSignIn: View {
    @State private var showNewUser = false
    @State private var name = ""
    @State private var username = ""
    @State private var password = ""
    
    
    
    var body: some View {
        ZStack {
            Color(red: 162/255, green: 162/255, blue: 162/255)
                .ignoresSafeArea()
            
            VStack {
                Text("LOG IN OR SIGNUP HERE!")
                    .padding(.bottom, 600)
                    .font(.title)
                    .foregroundColor(Color(red: 173/255, green: 32/255, blue: 3/255))
                    .fontWeight(.bold)
                
                Button("New User?") {
                    self.showNewUser = true
                }
                .padding()
                
                if showNewUser {
                    VStack {
                        TextField("Name", text: $name)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding(.bottom, 10)
                        
                        TextField("Username", text: $username)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding(.bottom, 10)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(5)
                            .padding(.bottom, 20)
                        
                        Button("Create Account") {
                            self.showNewUser = false
                        }
                        .padding()
                        .background(Color(red: 173/255, green: 32/255, blue: 3/255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                }
            }
        }
    }
}
  
struct UserSignIn_Previews: PreviewProvider {
    static var previews: some View {
        UserSignIn()
    }
}
