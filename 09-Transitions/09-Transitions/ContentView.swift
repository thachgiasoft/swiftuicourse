//
//  ContentView.swift
//  09-Transitions
//
//  Created by John Alexis Cristobal Jimenez  on 4/24/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showTrans = false
    
    var body: some View {
        VStack{
            Rectangle()
            .frame(width: 250, height: 250)
            .foregroundColor(Color.orange)
            .overlay(
                Text("Car")
                    .font(.system(.largeTitle, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
            )
            
            if showTrans {
                Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(Color.blue)
                .overlay(
                    Text("Auto")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                )
                //transicion para desaparecer este rectangulo
                //manda a una escala de 0 y hacia abajo
                //.transition(.scale(scale: 0, anchor: .bottom))

                //desplzaa hacia izquierda y desaparecer igual
                //.transition(.offset(x: -700, y: 0))
                
                /*.transition(
                    .asymmetric(insertion: .scale(scale: 0, anchor: .bottom), removal: .offset(x: -600, y: 0))
                    //AnyTransition.combineTransition
                )*/
                .transition(AnyTransition.offset(x: -700, y: 0) //primero offset a la izquierda
                    //.combined(with: AnyTransition.scale(scale: 0, anchor: .leading)) //ahora scala hacia abaho
                    //.combined(with: AnyTransition.opacity)  //por ultimo opacidad
                )
            }
        }.onTapGesture {
            withAnimation(Animation.default){
                self.showTrans.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//misma animacion pero en extension para cualquier otro objecto
extension AnyTransition{
    //interensate que aqui mejor usa AnyTransition
    //modo de inicializar variable con {}
    static var combineTransition: AnyTransition{
        //combinar trnaiscion con combine
        AnyTransition.offset(x: -700, y: 0) //primero offset a la izquierda
        .combined(with: AnyTransition.scale(scale: 0, anchor: .bottom)) //ahora scala hacia abaho
        .combined(with: AnyTransition.opacity)  //por ultimo opacidad
    }
 }
