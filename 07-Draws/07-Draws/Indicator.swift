//
//  Indicator.swift
//  07-Draws
//
//  Created by MACBOOK on 11/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Indicator: View {
    
    private var trackGradient = LinearGradient(
        gradient: Gradient(colors: [.blue, Color(.lightGray)]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        
        ZStack{
            
            Circle()
                .stroke(Color(.gray), lineWidth: 5)
                .frame(width: 200, height: 200)
            
            Circle()
                //wooooooow con esto se corta el circulio
                .trim(from: 0, to: 0.65)
                .stroke(trackGradient, lineWidth: 20)
                .frame(width: 200.0, height: 200.0)
                //coloca capa encima usando texto
                .overlay(
                    VStack{
                    Text("65%")
                        .font(.system(size: 60))
                        .bold()
                    Text("Pasos")
                        .font(.system(size: 20))
                    }
                )
        }
    }
}

struct Indicator_Previews: PreviewProvider {
    static var previews: some View {
        Indicator()
    }
}
