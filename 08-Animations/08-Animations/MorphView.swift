//
//  MorphView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct MorphView: View {
    
    //cambiamos
    @State private var animationBegin = false
    @State private var circle = false

    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: animationBegin ? 30 : 10)
                .frame(width: animationBegin ? 60 : 250, height: 60)
                .foregroundColor(animationBegin ? Color.blue : Color.green)
                .overlay(
                    Image(systemName: "keyboard")
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .scaleEffect(circle ? 0.5 : 1.0)
                )
            
            RoundedRectangle(cornerRadius: animationBegin ? 40 : 20)
                .trim(from: 0, to: animationBegin ? 0 : 1)
                .stroke(lineWidth: 8)
                .frame(width: animationBegin ? 80 : 270, height: 80)
                .foregroundColor(animationBegin ? Color.blue : Color.green)
            
        }.onTapGesture {
            withAnimation(Animation.spring()){
                self.animationBegin.toggle()
            }
            
            withAnimation(Animation.spring().repeatForever().delay(0.25)){
                self.circle.toggle()
            }
        }
    }
}

struct MorphView_Previews: PreviewProvider {
    static var previews: some View {
        MorphView()
    }
}
