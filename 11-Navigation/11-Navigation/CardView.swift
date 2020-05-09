//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by John Alexis Cristobal Jimenez  on 4/2/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var universe : Universe
    
    var body: some View {
        //vstack para poner pila con imagen
        VStack{
            Image(universe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            //colocamos hstack para con dpacer mandar a la izquierda
            HStack{
                //vstack alineado a la izquierda
                //uso de colores primarios y secundarios
                VStack(alignment: .leading){
                    Text(universe.autorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(universe.title.uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    //ponemos dos colores para destacar el mas nuevo
                    HStack{
                        Text(universe.originalDate)
                            .font(.subheadline)
                            .foregroundColor(.primary)

                        Text(universe.newDate)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .strikethrough()
                    }
                // damos mas prioridad a este vstack
                }
                .layoutPriority(10)
                Spacer()
                
            }.padding()
        }
        //redondea verticalstack
        .cornerRadius(12)
        //pone una subcapa encima - que seria un rectanguloredondeado con corner12
        // ojo aqui igual debe ser 12 para que empate con el corner de arriba
        .overlay(RoundedRectangle(cornerRadius: 12)
            //de la capa overlay...
            //con stroke obtenemos solo el contorno de, le damos una color y un ancho
            .stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.2),lineWidth: 2))
            //obtenemos padding de overlay
            .padding([.top, .horizontal])
                    
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(universe: Universe(imageName: "magic", autorName: "NASA", title: "Vista de la piel del sol", originalDate: "1999-09-09", newDate: "2009-09-11"))
    }
}
