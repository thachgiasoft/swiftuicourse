//
//  ContentView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChange = false
    @State private var iconColorChange = false
    @State private var iconSizeChange = false

    var body: some View {
        ZStack {
            
            //.animation para agregar animaciones por default
            
            Circle()
                .frame(width: 180, height: 180)
                .foregroundColor(buttonColorChange ? .gray : .green)
                //.animation(.default)
            
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(iconColorChange ? .green : .gray)
                .scaleEffect(iconSizeChange ? 1.0 : 0.5)
                //.animation(.default)
            
        }
        //.animation(.linear)    //puede ser la animacion en toda la zstack
        .animation(.spring(response: 0.5, dampingFraction: 0.4, blendDuration: 0.5))
        .onTapGesture {
            //ontapgesture para habilitar toque
            //cambia valores y como son states, aplica cambios autoamtico
            self.buttonColorChange.toggle()
            self.iconColorChange.toggle()
            self.iconSizeChange.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
