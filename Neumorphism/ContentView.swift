//
//  ContentView.swift
//  Neumorphism
//
//  Created by Karthick Selvaraj on 10/06/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var cornerRadius: CGFloat = 20
    
    var body: some View {
        VStack(spacing: 40) {
            
            // =========== Heading ===========
            Text("Neumorphism!!")
                .font(Font.system(.title, design: .rounded))
                .bold()
                .foregroundColor(.pink)
                .padding()
            
            HStack(spacing: 40) {
                // =========== 1 ===========
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fillAndFrame()
                    .darkShadow()
                    .lightShadow()
                    .overlay(
                        Image(systemName: "1.circle.fill")
                            .asOverlay()
                    )
                
                // =========== 2 ===========
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fillAndFrame()
                    .darkShadow()
                    .lightShadow()
                    .blur(radius: 5)
                    .overlay(
                        Image(systemName: "2.circle.fill")
                            .asOverlay()
                    )
            }
            
            HStack(spacing: 40) {
                // =========== 3 ===========
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fillAndFrame()
                    .blur(radius: 15)
                    .opacity(0.7)
                    .darkShadow()
                    .lightShadow()
                    .overlay(
                        Image(systemName: "3.circle.fill")
                            .asOverlay()
                    )
                    .mask(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.red)
                            .frame(width: 150, height: 150)
                    )
                
                
                // =========== 4 ===========
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fillAndFrame()
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color("kMainBg"))
                        .frame(width: 135, height: 135)
                        .blur(radius: 15)
                        .opacity(0.7)
                        .darkShadow()
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color("kMainBg"))
                        .frame(width: 135, height: 135)
                        .blur(radius: 15)
                        .opacity(0.7)
                        .lightShadow()
                    .overlay(
                        Image(systemName: "4.circle.fill")
                        .asOverlay()
                    )
                }
                .mask(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color.red)
                        .frame(width: 170, height: 170)
                )
                
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("kMainBg"))
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Shape {
    
    func fillAndFrame() -> some View {
        self
            .fill(Color("kMainBg"))
            .frame(width: 150, height: 150)
    }
    
}

extension View {
    
    func darkShadow() -> some View {
        self
            .shadow(color: Color("kDarkShadow"), radius: 5, x: -10, y: -10)
    }
    
    func lightShadow() -> some View {
        self
            .shadow(color: Color("kLightShadow"), radius: 5, x: 10, y: 10)
    }
    
}

extension Image {
    
    func asOverlay() -> some View {
        self
            .resizable()
            .frame(width: 50, height: 50)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.pink)
    }
    
}
