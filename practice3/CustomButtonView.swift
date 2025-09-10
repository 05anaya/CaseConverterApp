//
//  CustomButtonView.swift
//  practice3
//
//  Created by Anaya Bhat on 10/09/25.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .bold()
            .padding(4)
            .font(.system(size: 25))
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius:20))
            .shadow(radius: 10)
    }
}

#Preview {
    CustomButtonView(title: "Tap me", color: .white)
}
