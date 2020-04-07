//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by John Alexis Cristobal Jimenez  on 4/2/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var autorName: String
    var title: String
    var originalPrice: String
    var newPrice: String
    
    var body: some View {
        //vstack para poner pila con imagen
        VStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            //colocamos hstack para con dpacer mandar a la izquierda
            HStack{
                //vstack alineado a la izquierda
                //uso de colores primarios y secundarios
                VStack(alignment: .leading){
                    Text(autorName)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    //ponemos dos colores para destacar el mas nuevo
                    HStack{
                        Text(originalPrice)
                            .font(.subheadline)
                            .foregroundColor(.primary)

                        Text(newPrice)
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
        CardView(imageName: "magic", autorName: "John Cristobal", title: "Diseño de apps swift ui", originalPrice: "$9,9", newPrice: "$10.0")
    }
}
