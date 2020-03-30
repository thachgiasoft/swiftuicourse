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
            HStack {
                //tarjeta 1
                VStack{
                    Text("Plan basico")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("$9.99")
                        .font(.system(.body,design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("Un curso incluido")
                        .font(.system(.headline,design: .rounded))
                        .foregroundColor(.white)
                    
                }
                .padding(20)
                .background(Color.green)
                .cornerRadius(10)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                
                //tarjeta 2
                VStack{
                    Text("Plan carrera")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("$19.99")
                        .font(.system(.body,design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("Todo una carrera")
                        .font(.system(.headline,design: .rounded))
                        .foregroundColor(.white)
                    
                }
                .padding(20)
                .background(Color.gray)
                .cornerRadius(10)
                //maxwidth infinity jala toada la pantalla
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                
            }.padding()
            //agregamos estilos a vstack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
