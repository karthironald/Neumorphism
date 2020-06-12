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
            
            HStack(spacing: 40) {
                // =========== 1 ===========
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fillAndFrame_150()
                    .darkShadow()
                    .lightShadow()
                    .overlay(
                        Image(systemName: "1.circle.fill")
                            .asOverlay()
                    )
                
                // =========== 2 ===========
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fillAndFrame_150()
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
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fillAndFrame_150()
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fillAndFrame_135()
                        .blur(radius: 15)
                        .opacity(0.7)
                        .darkShadow()
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fillAndFrame_135()
                        .blur(radius: 15)
                        .opacity(0.7)
                        .lightShadow()
                    .overlay(
                        Image(systemName: "3.circle.fill")
                        .asOverlay()
                    )
                }
                .mask(
                    RoundedRectangle(cornerRadius: cornerRadius)
                )
                
                // =========== 4 ===========
                ZStack {
                    Circle()
                        .fillAndFrame_150()
                    Circle()
                        .fillAndFrame_100()
                        .blur(radius: 10)
                        .shadow(color: Color("kDarkShadow"), radius: 40, x: -18, y: -18)
                        .shadow(color: Color("kLightShadow"), radius: 40, x: 18, y: 18)
                    Circle()
                        .fillAndFrame_80()
                        .shadow(color: Color("kLightShadow"), radius: 12, x: -7, y: -7)
                        .shadow(color: Color("kDarkShadow"), radius: 12, x: 7, y: 7)
                    .overlay(
                        Image(systemName: "4.circle.fill")
                            .asOverlay()
                    )
                }
                .mask(
                    Circle()
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


// MARK: - Shape Extensions

extension Shape {
    
    func fillAndFrame_80() -> some View {
        self
            .fill(Color("kMainBg"))
            .frame(width: 80, height: 80)
    }
    
    func fillAndFrame_100() -> some View {
        self
            .fill(Color("kMainBg"))
            .frame(width: 100, height: 100)
    }
    
    func fillAndFrame_135() -> some View {
        self
            .fill(Color("kMainBg"))
            .frame(width: 135, height: 135)
    }
    
    func fillAndFrame_150() -> some View {
        self
            .fill(Color("kMainBg"))
            .frame(width: 150, height: 150)
    }
    
}


// MARK: - View Extensions

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


// MARK: - Image Extensions

extension Image {
    
    func asOverlay() -> some View {
        self
            .resizable()
            .frame(width: 40, height: 40)
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.pink)
    }
    
}
