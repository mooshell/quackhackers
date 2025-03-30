//
//  logincreated.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//

import SwiftUI

struct logincreated: View {
    @State var name : String
    @State var username: String
    @State var password : String
    @State var signuppop = true
    @State var welcomeuser = false
    
    var body: some View {
            ZStack {
                Color(red: 162/255, green: 162/255, blue: 162/255)
                    .ignoresSafeArea()

                VStack {
                    // If sign-up pop-up is showing, display the form
                    if signuppop {
                        loginForm
                            .transition(.move(edge: .bottom))  // Smooth pop-up transition
                    } else if welcomeuser {
                        // If user has signed up, show a welcome message
                        WelcomeView(name: name)
                    } else {
                        // Main screen before sign-up
                        Text("Please register to continue.")
                            .font(.title)
                            .padding()
                    }
                }
            }
            .onAppear {
                // Optionally: Reset the fields when the view appears
                name = ""
                username = ""
                password = ""
            }
        }
        
        // The login form (pop-up) for user registration
        private var loginForm: some View {
            VStack(spacing: 15) {
                Text("Register as a New User")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Sign Up") {
                    if !name.isEmpty && !username.isEmpty && !password.isEmpty {
                        // After successful sign-up, show the welcome screen
                        signuppop = false
                        welcomeuser = true
                    } else {
                        // Show an alert if any fields are empty
                        showAlert(title: "Error", message: "Please fill in all fields.")
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button("Cancel") {
                    // Cancel the sign-up and reset fields
                    resetForm()
                }
                .foregroundColor(.red)
                .padding(.top, 10)
            }
            .frame(width: 300, height: 350)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 10)
        }
        
        // Reset the sign-up form
        private func resetForm() {
            name = ""
            username = ""
            password = ""
            signuppop = false
        }
        
        // Alert function for displaying error
        private func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            // Present the alert from the root view
            if let topController = UIApplication.shared.windows.first?.rootViewController {
                topController.present(alert, animated: true, completion: nil)
            }
        }
    }

    struct WelcomeView: View {
        var name: String
        
        var body: some View {
            VStack {
                Text("Welcome, \(name)!")
                    .font(.title)
                    .padding()
                
                NavigationLink(destination: NextPage()) {
                    Text("Go to Next Page")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
        }
    }

    struct NextPage: View {
        var body: some View {
            Text("This is the next page!")
                .font(.title)
                .padding()
        }
    }

#Preview {
    logincreated(name: "", username: "", password: "")
}
