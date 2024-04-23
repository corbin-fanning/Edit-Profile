//
//  FooterView.swift
//  Edit Profile
//
//  Created by Fanning, Corbin on 4/18/24.
//

import SwiftUI

struct FooterView: View {
    let buttonName: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
        
                Button(buttonName) {
                    //Action to go back
                }
                .padding()
                .background(Color.lynkDarkBlue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.custom("Andika", size: 14))
            }
            .padding(.bottom, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 200)
        .offset(y: -150)
    }
}

#Preview {
    FooterView(buttonName: "Back", angle: 0, background: .lynkLightBlue)
}
