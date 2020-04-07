//
//  ContentView.swift
//  05-Buttons
//
//  Created by MACBOOK on 04/04/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            /*Button(action: {
                //que debe hacer el button
                print("hola pulsado")
            }) {
                // como debe mirarse el button
                Text("Hola mundo")
                    //importante con el orden de los modificadores
                    //si el padding va despues, no qieda el color de fondo
                    //mejor al princiip lo del texto
                    .font(.largeTitle)
                    
                    //priMero el fondo del boton
                    .padding(20)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(50)

                    //una forma de redonder con elipse
                    //.clipShape(RoundedRectangle(cornerRadius: 35))
                    
                    //luego el de mas afuera
                    //.padding(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.green, lineWidth: 5)   //este solo para shapes
                    )
            }
            
            Button(action: {
                print("solo iconos")
            }) {
                Image(systemName: "trash")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .clipShape(Circle())    //manera de dibujar ciruclos
            }*/
            
            //BOTON Con icono y texto
            Button(action: {
                print("trash icono puklsado")
            }) {
                
                //podemos poner texto e imagen con hstack
                HStack{
                    Image(systemName: "trash")
                    Text("Eliminar")
                }
            }
            .buttonStyle(BasicButtonStyle())

            Button(action: {
                print("editar icono puklsado")
            }) {
                
                //podemos poner texto e imagen con hstack
                HStack{
                    Image(systemName: "square.and.pencil")
                    Text("Editar")
                }
            }
            .buttonStyle(BasicButtonStyle())

            Button(action: {
                print("share icono puklsado")
            }) {
                //podemos poner texto e imagen con hstack
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                }
            }
            .buttonStyle(BasicButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle : ButtonStyle {

    //makebdy lloena el prtocolo
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            //queo ocupe todo el ancho de la pantalla
            .frame(minWidth: 0, maxWidth: .infinity)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            //Wooooooow grdientes....
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkOcean"), Color.green]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(30)
            //.clipShape(Circle())    //manera de dibujar ciruclos
            //sombras al boton
            .shadow(color: .blue, radius: 10, x: 25, y: 5)
            .padding(.horizontal,20)
            
            //efecto de scalado para animacin al presionar burron
            //.scaleEffect(configuration.isPressed ? 0.8 : 1.0)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 90) : Angle(degrees: 0))
    }
}
