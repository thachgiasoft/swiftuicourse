//
//  ContentView.swift
//  03-stacks
//
//  Created by MACBOOK on 29/03/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //acomodamos una pila vertical
        //usamos parametros de alinear y espacio entre parentesis para agregar params
        //agregamos los view necesarios
        //se coloca uno debajo de otro
        VStack {
            
            //extraemos vista y la mandamos a una funcion struc
            HeaderView()
            
            //hstack para colocar dos planes
            HStack (spacing: 8){
                //tarjeta 1
                PriceingView(title: "Plan basico", price: "$9.99", subtitle: "Un solo curso", colorText: .white, backgroundColor: .green)
                
                //Agregamos ZStack
                ZStack{
                    //tarjeta 2
                    PriceingView(title: "Plan carrera", price: "$19.99", subtitle: "Todo una carrera", colorText: .white, backgroundColor: .gray)
                    
                    Text("El mejor para empezar")
                        .font(.system(.caption, design: .rounded))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(8)
                        .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                        //mover etiqueta para una posicion
                        //negativo para el lado contrario
                        .offset(x: 0, y: -80)
                }
                                
            }.padding(.horizontal)
            //agregamos estilos a vstack
            
            //Agregamos ZStack debajo con otra tarjea
            ZStack{
                //tarjeta 2
                PriceingView(title: "Plan definitivo", price: "$99.99", subtitle: "Todo una carrera online", colorText: .white, backgroundColor: .black).padding(.horizontal)
                
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .foregroundColor(.red)
                    .offset(x: 0, y: -40)
                
                Text("Un master del universo")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(8)
                    .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                    //mover etiqueta para una posicion
                    //negativo para el lado contrario
                    .offset(x: 0, y: -80)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().background(Color.white)
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Elige tu itinerario")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.bold)
            
            Text("de aprendizaje")
                .font(.system(.largeTitle,design: .rounded))
                .fontWeight(.bold)
        }
    }
}

//extaemos price view
struct PriceingView: View {
    
    //cramos varialbes para la etiqueta
    var title: String
    var price: String
    var subtitle: String
    var colorText: Color
    var backgroundColor: Color
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(colorText)
            
            Text(price)
                .font(.system(.body,design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(colorText)
            
            Text(subtitle)
                .font(.system(.headline,design: .rounded))
                .foregroundColor(colorText)
            
        }
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
    }
}

/*
 cvstate
 profleaction
 repsitory
 profilerepository
 
 LIGHTBULB
 */
