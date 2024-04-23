//
//  EditNameView.swift
//  Edit Profile
//
//  Created by Fanning, Corbin on 4/22/24.
//

import SwiftUI

struct EditNameView: View {
    
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            HStack {
                TextField("Type a new name", text: $name)
                    .padding()
                    .background(Color.white.opacity(0.75)) // Light background to see the TextField
                    .foregroundColor(.black) // Text color
                    .cornerRadius(5)
                    .padding() // Padding around the TextField
                    .font(.custom("Andika", size: 16))
                
                
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Rename")
                            .foregroundStyle(Color.white)
                            .font(.custom("Andika", size: 16))
                            .bold()
                    })
                    .padding()
                    .background(Color.lynkDarkBlue)
                    .cornerRadius(10)
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Go Back")
                            .foregroundStyle(Color.black)
                            .font(.custom("Andika", size: 16))
                            .bold()
                            .padding()
                    })
                    
                }
                .offset(y: 30)
            
            }
            .padding()
            .cornerRadius(10)
        }
    }
}

#Preview {
    EditNameView()
}
