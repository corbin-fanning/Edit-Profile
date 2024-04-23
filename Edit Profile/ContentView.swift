//
//  ContentView.swift
//  Edit Profile
//
//  Created by Fanning, Corbin on 4/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = "Corbin Fanning"
    @State private var showingEditScreen: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.lynkDarkBlue
                
                VStack {
                    HeaderView(title: "Edit Profile", angle: 0, background: .lynkLightBlue)
                    Spacer()
                    FooterView(buttonName: "Back", angle: 0, background: .lynkLightBlue)
                        .offset(y: 275)
                    
                }
                
                VStack {
                    
                    
                    
                    Text(name)
                        .foregroundStyle(Color.white)
                        .font(.custom("Andika", size: 23))
                    
                    Divider().background(Color.white)
                    
//                    Button(action: {
//                        //Action for edutung profile picture
//                    }) {
//                        HStack {
//                            Text("Edit Profile Picture")
//                                .foregroundColor(.white)
//                                .font(.custom("Andika", size: 23))
//                                .underline()
//                            
//                        }
//                        .padding()
//                    }
//                    .background(Color.lynkDarkBlue)
//                    .cornerRadius(0)
                    
                    
                    
                    
                    Button(action: {
                        self.showingEditScreen = true
                    }) {
                        HStack {
                            Text("Edit Name")
                                .foregroundColor(.white)
                                .font(.custom("Andika", size: 23))
                                .underline()
                            
                        }
                        .padding()
                    }
                    .background(Color.lynkDarkBlue)
                    .cornerRadius(0)
                    .fullScreenCover(isPresented: $showingEditScreen) {
                                    // The view that you want to present
                                    EditNameView()
                                }
                    
                    
                    Divider().background(Color.white)
                    
                    Button(action: {
                        
                    }) {
                        HStack {
                            Text("Link to Lynk")
                                .foregroundColor(.white)
                                .font(.custom("Andika", size: 23))
                                .underline()
                            
                        }
                        .padding()
                    }
                    .background(Color.lynkDarkBlue)
                    .cornerRadius(0)
                    
                    Divider().background(Color.white)
                    
                }
                .offset(y: -100)
             }
                .offset(y: 20)
                
            }
        }
    
//    init() {
//        for familyName in UIFont.familyNames {
//            print(familyName)
//            
//            for fontName in UIFont.fontNames(forFamilyName: familyName) {
//                print("-- \(fontName)")
//            }
//        }
//    }
        
    }
    

#Preview {
    ContentView()
}
