//
//  DotsView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct DotsView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        HStack{
            //wooooow foreach en swift ui para repetir un circulo dentro de un hstack
            ForEach(0...5, id: \.self) { index in
                Circle()
                    .frame(width: 16, height: 16)
                    .foregroundColor(Color.green)
                    .scaleEffect(self.isLoading ? 0 : 1)
                    //genio...
                    //cuando uno termina el otro empiza, y el efecto de scala con delay aparece super cool
                    //el delay hace el efecto para que redimensione una despues de otra
                    .animation(Animation.linear(duration: 0.5).repeatForever().delay(Double(index) / 6))
            }
        }.onAppear() {
            self.isLoading = true
        }
    }
}

struct DotsView_Previews: PreviewProvider {
    static var previews: some View {
        DotsView()
    }
}
