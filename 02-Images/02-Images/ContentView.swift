//
//  ContentView.swift
//  02-Images
//
//  Created by MACBOOK on 25/03/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //colcoar una imagen sf simbol
        
        /*Image(systemName: "recordingtape")
            .font(.system(size: 80))
            .foregroundColor(.green)
            .shadow(color: .gray, radius: 10, x: 10, y: 10)*/
        
        //imagen de assets catalog
        Image("img1")
            .resizable()    //rellene toda la pamntalla, limnites
            //.edgesIgnoringSafeArea(.all)    //igmnora areas seguras
            //.scaledToFit()  //escalar hasta ajustar
            //.aspectRatio(contentMode: .fit)     //mismo efecto que anterior
            .aspectRatio(contentMode: .fill)     //llena pantalla
            .frame(width: 300)          //creamos un marco de 300 ancho
            //.clipped()      //corta imagen
            .clipShape(Capsule())   //clipshape para dar forma, circulo, elipse, capsule
            .opacity(0.9)   //transparencia de la imagen

            //coloca capa, solicita cuakquiet tipo de view que estara por encima de la imagen, aqui un heart con 90 de fuente, texto
            .overlay(
                /*Image(systemName: "heart.fill")
                    .font(.system(size: 90))
                    .foregroundColor(.red)
                    .opacity(0.9)*/
                
                /*Text("en rookmotion no les gusta mi trabajo y ya quieren todo cool y entregado")
                    .fontWeight(.bold)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()  //primer padding de texto con caja
                    .background(Color.gray) //color de fondo
                    .cornerRadius(10)   //borde y rea caja
                    .opacity(0.7)   //opacidad al fondo de caja
                    .padding(),  //segundo padding de caja con borde
                alignment: .topTrailing //alineramos texto
                */
                
                Capsule()
                    .foregroundColor(.gray)
                    .opacity(0.3)
                    .overlay(Text("New york")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 250))
            )
        
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
