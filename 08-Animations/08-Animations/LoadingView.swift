//
//  LoadingView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            
            //ponemos ciruclo atras para que aparezca un efecto interesante
            Circle()
            .stroke(Color.gray, lineWidth: 16.0)
            .frame(width: 150, height: 150)

            //indicador de carga circular
            Circle()
                .trim(from: 0.0, to: 0.75)  //recuerda el circulo cortado
                .stroke(Color.green, lineWidth: 8.0)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                //anmacion repeat forever para que haga efecto de animacion
                .animation(Animation.linear(duration: 1.0).repeatForever(autoreverses: false))
                //otro tipo de gesture para que cambie cuando aparece
                .onAppear() {
                    self.isLoading = true
                }
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
