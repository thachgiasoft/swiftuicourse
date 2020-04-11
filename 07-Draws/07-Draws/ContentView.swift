//
//  ContentView.swift
//  07-Draws
//
//  Created by MACBOOK on 10/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //dibujar una figura con Path
        Path(){ path in
            //colocamos punto de inicio
            path.move(to: CGPoint(x: 30, y: 30))
            //vamos dibijando lineas
            path.addLine(to: CGPoint(x: 230, y: 30))
            path.addLine(to: CGPoint(x: 230, y: 150))
            path.addLine(to: CGPoint(x: 30, y: 150))
            //cierra figura automaticamente ulitmo con origen
            path.closeSubpath()
        }
        //rellenamos usando propiedad fill
        .stroke(Color.blue, lineWidth: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
