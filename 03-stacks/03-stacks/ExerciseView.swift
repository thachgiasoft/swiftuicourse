//
//  ExerciseView.swift
//  03-stacks
//
//  Created by John Alexis Cristobal Jimenez  on 4/1/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        
        VStack{
            //primer titulo
            
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Elige tu itinerario")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                    Text("de aprendizaje")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                }
                Spacer()
            }.padding()

            Spacer()

            ZStack{
                
                PriceingViewHW(title: "Basico", price: "$9.99", subtitle: "Carrera1", colorText: .white, backgroundColor: .green, icon: "heart.fill")
                    .padding(.horizontal)
                    .offset(x: 0, y:-110)
                
                PriceingViewHW(title: "Medium", price: "$19.99", subtitle: "Carrera2", colorText: .white, backgroundColor: .gray, icon: "heart.fill", layend: "El mejor para empezar")
                   .padding(.horizontal)
                   //.offset(x: 0, y:150)
                
                PriceingViewHW(title: "Premium", price: "$99.99", subtitle: "Carrera3", colorText: .white, backgroundColor: .black, icon: "heart.fill", layend: "Master del universo")
                    .padding(.horizontal)
                    .offset(x: 0, y:110)
                
            }.padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}

//extaemos price view
struct PriceingViewHW: View {
    
    //creamos varialbes para la etiqueta
    var title: String
    var price: String
    var subtitle: String
    var colorText: Color
    var backgroundColor: Color
    var icon: String? //optional
    var layend: String? 
        
    var body: some View {
        
        ZStack{
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
                    
            layend.map({
                Text($0)
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(8)
                .background(Color(red: 240/255, green: 180/255, blue: 50/255))
                //mover etiqueta para una posicion
                //negativo para el lado contrario
                .offset(x: 0, y: -90)
            })
        }
    }
}
