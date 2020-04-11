//
//  Donut.swift
//  07-Draws
//
//  Created by MACBOOK on 11/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Donut: View {

    private var trackGradient = LinearGradient(
        gradient: Gradient(colors: [.blue, Color(.lightGray)]),
        startPoint: .leading,
        endPoint: .trailing
    )

    var body: some View {
        ZStack{
            Circle()
                //wooooooow con esto se corta el circulio
                .trim(from: 0, to: 0.3)
                .stroke(trackGradient, lineWidth: 60)
            
            Circle()
                .trim(from: 0.3, to: 0.5)
                .stroke(Color.pink, lineWidth: 60)
            
            Circle()
               .trim(from: 0.5, to: 0.8)
               .stroke(Color.gray, lineWidth: 60)
                .shadow(color: .blue, radius: 5, x: 50, y: 50)

            Circle()
                .trim(from: 0.8, to: 1.0)
                .stroke(Color.blue, lineWidth: 70)
                .overlay(
                        Text("25%")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .offset(x: 90, y: -90)
                )

                
        }.frame(width: 250, height: 250)
        
    }
}

struct Donut_Previews: PreviewProvider {
    static var previews: some View {
        Donut()
    }
}
