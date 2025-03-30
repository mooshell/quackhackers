//
//  camera.swift
//  quackhacks
//
//  Created by Michelle Elias Flores on 3/29/25.
//
import SwiftUI

struct camera: View {
    @State var isImagePickerShowing = false
    @State var selectedImage: UIImage?
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary


    var body: some View {
        
        VStack {
            
            // display selected image
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            
            // button to select a photo
            Button("Select a Photo") {
                self.sourceType = .photoLibrary
                isImagePickerShowing = true
            }
            .padding()
            .background(Color.gray)
            .foregroundColor(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10)) // Gives rounded corners
            .padding()
            
            // button to take a picture -> launch camera
            Button("Take a Picture") {
                self.sourceType = .camera
                isImagePickerShowing = true
            }
            .padding()
            .background(Color.gray)
            .foregroundColor(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10)) // Gives rounded corners
        }
        .sheet(isPresented: $isImagePickerShowing) {
            ImagePicker(selectedImage: $selectedImage,
                        isImagePickerShowing: $isImagePickerShowing, sourceType: self.sourceType)
        }
    }
}

#Preview {
    camera()
}
