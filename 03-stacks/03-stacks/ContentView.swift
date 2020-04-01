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
                        .offset(x: 0, y: -95)
                }
            }.padding(.horizontal)
            //agregamos estilos a vstack
            
            //Spacer() //equilibro de fuerzas
            
            //Agregamos ZStack debajo con otra tarjea
            ZStack{
                //tarjeta 2
                PriceingView(title: "Plan definitivo", price: "$99.99", subtitle: "Todo una carrera online", colorText: .white, backgroundColor: .black, icon: "heart.fill").padding(.horizontal)
                                
                Text("Un master del universo")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(8)
                    .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                    //mover etiqueta para una posicion
                    //negativo para el lado contrario
                    .offset(x: 0, y: -90)
            }.padding(.vertical)
            
            Spacer()    //spacer en vertical stack para mandar todo hacia arriba
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().background(Color.white)
    }
}

struct HeaderView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4){
                Text("Elige tu itinerario")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.bold)
                
                Text("de aprendizaje")
                    .font(.system(.largeTitle,design: .rounded))
                    .fontWeight(.bold)
            }
            //este spacer mata todo el espacio dentro del hstack
            Spacer()
        }.padding()
    }
}

//extaemos price view
struct PriceingView: View {
    
    //creamos varialbes para la etiqueta
    var title: String
    var price: String
    var subtitle: String
    var colorText: Color
    var backgroundColor: Color
    var icon: String? //optional
        
    var body: some View {
        VStack{
            //if icon != nil{ //forma vieja
            //nueva forma para saber si un optional tiene dato
            //usas $0 para recuperar valor
            icon.map({
                Image(systemName: $0)   //$0 = icon
                .font(.largeTitle)
                .foregroundColor(.red)
            })
            
            Text(title)
                .font(.system(.title,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(colorText)
            
            Text(price)
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(colorText)
            
            Text(subtitle)
                .font(.system(.headline))
                .foregroundColor(colorText)
        }
            //OJO CON FRAME....bakcground pega a esta regla
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
