//
//  Tarea3.swift
//  06-StatesBindings
//
//  Created by MACBOOK on 09/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Tarea3: View {
    
    @State private var counter = 0
    
    var body: some View {
        
        VStack{
        
            //conexion bidireccional, uso de $
            //operadpr para obtner el bindingn a traves de un state
            //apuntador...mmmta
            //con esto todas las varibkaes vab de la mano
            //un solo apuntador para los bindings
            CounterView(counter: $counter, buttonColor: Color.red)
            CounterView(counter: $counter, buttonColor: Color.yellow)
            CounterView(counter: $counter, buttonColor: Color.green)

            //hace una tipo conexion
            //manda el state mediante un binding (uso de $)
            //el subview modifica el state mediante el binding
            //como estan "conectadas" se refleja en todas las vistas
        }
    }
}

struct Tarea3_Previews: PreviewProvider {
    static var previews: some View {
        Tarea3()
    }
}

struct CounterView: View {
    //quien invoca debe proporcionar un link un estado a esta vista
    //varaible ligada
    @Binding var counter: Int
    var buttonColor : Color
    
    var body: some View {
        Button(action: {
            print("play action \(self.counter)")
            self.counter = self.counter + 1
        }) {
            //design button
            /*Text("\(counter)")
             .font(.system(size: 40))
             .foregroundColor(.white)
             .padding(45)
             .background(Color.purple)
             .clipShape(Circle())*/
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(
                    Text("\(counter)")
                        .foregroundColor(.white)
                        .font(.system(size: 60, weight: .bold))
            )
        }
    }
}
