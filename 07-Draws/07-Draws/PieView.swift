//
//  PieView.swift
//  07-Draws
//
//  Created by MACBOOK on 10/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        
        ZStack{
        
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                //invocar parar afrco
                //ojo que el punto fe centro y el punto move sean el mismo para arrncar
                path.addArc(
                    //punto de centro
                    center: CGPoint(x: 200, y: 250),
                    //radio
                    radius: 160,
                    //angulo de inicio
                    startAngle: Angle(degrees: 0),
                    //angulo de fin
                    endAngle: Angle(degrees: 270),
                    //sentido del reloj
                    //IMPORATNET - Aqwui los angulos van al reves
                    //true es antihorario
                    //false es horario
                    clockwise: true
                )
            }.fill(Color(.quaternarySystemFill))
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                //invocar parar afrco
                //ojo que el punto fe centro y el punto move sean el mismo para arrncar
                path.addArc(
                    //punto de centro
                    center: CGPoint(x: 200, y: 250),
                    //radio
                    radius: 160,
                    //angulo de inicio
                    startAngle: Angle(degrees: 270),
                    //angulo de fin
                    endAngle: Angle(degrees: 180),
                    //sentido del reloj
                    //IMPORATNET - Aqwui los angulos van al reves
                    //true es antihorario
                    //false es horario
                    clockwise: true
                )
            }
            .fill(Color(.black))
            .offset(x: -10, y: -10)
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                //invocar parar afrco
                //ojo que el punto fe centro y el punto move sean el mismo para arrncar
                path.addArc(
                    //punto de centro
                    center: CGPoint(x: 200, y: 250),
                    //radio
                    radius: 160,
                    //angulo de inicio
                    startAngle: Angle(degrees: 270),
                    //angulo de fin
                    endAngle: Angle(degrees: 180),
                    //sentido del reloj
                    //IMPORATNET - Aqwui los angulos van al reves
                    //true es antihorario
                    //false es horario
                    clockwise: true
                )
                path.closeSubpath()
            }
            .stroke(Color(.red), lineWidth: 10)
            .offset(x: -10, y: -10)
            .overlay(
                Text("25%")
                    .font(.system(size: 40, design: .rounded))
                    .bold()
                    .offset(x: -80, y: -230)
                    .foregroundColor(.white)
            )
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                //invocar parar afrco
                //ojo que el punto fe centro y el punto move sean el mismo para arrncar
                path.addArc(
                    //punto de centro
                    center: CGPoint(x: 200, y: 250),
                    //radio
                    radius: 160,
                    //angulo de inicio
                    startAngle: Angle(degrees: 180),
                    //angulo de fin
                    endAngle: Angle(degrees: 90),
                    //sentido del reloj
                    //IMPORATNET - Aqwui los angulos van al reves
                    //true es antihorario
                    //false es horario
                    clockwise: true
                )
            }.fill(Color(.separator))
                        
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                //invocar parar afrco
                //ojo que el punto fe centro y el punto move sean el mismo para arrncar
                path.addArc(
                    //punto de centro
                    center: CGPoint(x: 200, y: 250),
                    //radio
                    radius: 160,
                    //angulo de inicio
                    startAngle: Angle(degrees: 90),
                    //angulo de fin
                    endAngle: Angle(degrees: 0),
                    //sentido del reloj
                    //IMPORATNET - Aqwui los angulos van al reves
                    //true es antihorario
                    //false es horario
                    clockwise: true
                )
            }.fill(Color(.systemTeal))
            
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
