//
//  ContentView.swift
//  practice3
//
//  Created by Anaya Bhat on 09/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var userText = ""
    //@State var userText_copy = userText
    @State var capMode = 4
    var body: some View
    {
        ZStack {
            Color(red: 1.0, green: 0.75, blue: 0.8)
                .ignoresSafeArea()
            
            Spacer()
            VStack{
                Text("🩷🩷🩷")
                    .padding(20)
                Text("o/p: ")
                    .font(.system(size: 25))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,15)
                    .padding(.top,40)
                if capMode == 1
                {
                    Text(userText.uppercased())
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.9, green: 0.1, blue: 0.5))
                }
                
                if capMode == 2
                {
                    Text(userText.capitalized)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.9, green: 0.1, blue: 0.5))
                }
                
                if capMode == 3
                {
                    Text(userText.lowercased())
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.9, green: 0.1, blue: 0.5))
                }
                if capMode > 3
                {
                    Text(userText)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.9, green: 0.1, blue: 0.5))
                }
                
                Spacer()
                TextField("Enter text here", text : $userText)
                    .bold()
                    .font(.system(size: 18))
                    .padding()
                Spacer()
                
                Button(action: {
                    let transformed =
                            capMode == 1 ? userText.uppercased() :
                            capMode == 2 ? userText.capitalized :
                            capMode == 3 ? userText.lowercased() :
                            userText
                        
                        UIPasteboard.general.string = transformed
                })
                {
                    CustomButtonView(title: "copy", color: Color(red: 0.9, green: 0.2, blue: 0.4))
                }
                
                HStack{
                    Button(action:{
                        capMode = 1
                    })
                    {
                        CustomButtonView(title: "All Caps", color: .red)
                    }
                    Button(action:{
                        capMode = 2
                    })
                    {
                        CustomButtonView(title: "First cap", color: .red)
                    }
                    Button(action:{
                        capMode = 3
                    })
                    {
                        CustomButtonView(title: "All Lower", color: .red)
                    }
                }
                .padding()
               
            }
        }
 
        
       
    }
    
       
}

#Preview {
    ContentView()
}
