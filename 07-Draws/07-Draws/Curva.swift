//
//  Curva.swift
//  07-Draws
//
//  Created by MACBOOK on 10/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Curva: View {
    var body: some View {

        ZStack{
            Path(){ path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addLine(to: CGPoint(x: 130, y: 0))
                path.addLine(to: CGPoint(x: 200, y: 130))
                path.closeSubpath()
            }
            .stroke()
            
            //incluso en botones...
            Text("prueba")
                .font(.system(size: 30, design: .rounded))
                .bold()
                .frame(width: 200, height: 150)
                .background(funnyLabel(percentageCircle: 0.9).fill(Color.green))
            
            //dibujar una figura con Path
            Path(){ path in
                //colocamos punto de inicio
                path.move(to: CGPoint(x: 30, y: 130))
                //mueve una linea mas
                path.addLine(to: CGPoint(x: 60, y: 130))
                //dibuja curba con punto de control, curva cuadrada
                //primerto marcamos el otro punto
                //basarte en un traignulo
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 100))
                
                //otra forma de pintar rectangilo sin necesidad de lineas
                path.addRect(CGRect(x: 30, y: 130, width: 200, height: 120))
                //vamos dibijando lineas
                //path.addLine(to: CGPoint(x: 230, y: 130))
                //path.addLine(to: CGPoint(x: 230, y: 250))
                //path.addLine(to: CGPoint(x: 30, y: 250))
                //cierra figura automaticamente ulitmo con origen
                //path.closeSubpath()
            }
            //rellenamos usando propiedad fill
            .fill(Color.blue)
            
            Path(){ path in
                //colocamos punto de inicio
                path.move(to: CGPoint(x: 30, y: 130))
                //mueve una linea mas
                path.addLine(to: CGPoint(x: 60, y: 130))
                //dibuja curba con punto de control, curva cuadrada
                //primerto marcamos el otro punto
                //basarte en un traignulo
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 100))
                //vamos dibijando lineas
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                //cierra figura automaticamente ulitmo con origen
                path.closeSubpath()
            }
            //rellenamos usando propiedad fill
            .stroke(Color.pink, lineWidth: 10)
            
            //figuras basicas
            Circle()
                .foregroundColor(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                    .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                )
        }
        
    }
}

struct Curva_Previews: PreviewProvider {
    static var previews: some View {
        Curva()
    }
}

struct funnyLabel : Shape {
    
    var percentageCircle: CGFloat = 1.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.size.width * (1-percentageCircle)/2, y: 0))
        
        path.addQuadCurve(to: CGPoint(x: rect.size.width * (1-(1-percentageCircle)/2), y: 0), control: CGPoint(x: rect.size.width/2, y: -(rect.size.width * 0.4)))
        
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))

        return path
    }
    
    
}
