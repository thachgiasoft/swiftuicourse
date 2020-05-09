//
//  DetailView.swift
//  11-Navigation
//
//  Created by MACBOOK on 08/05/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct DetailView: View {

    //hacemos referencias a vista con enviromente
    @Environment(\.presentationMode) var presentationMode
    
    var curso : Curso
    
    var body: some View {
        VStack{
            ScrollView{
            Image(curso.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 350)
                .clipped()
            
            Text(curso.name)
                .font(.system(.title, design: .rounded))
                .bold()
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .lineLimit(3)
            
            Spacer()
            }
        }
        //configuramos espacio de barra navegacion, para esto un poco mas chica
        //.navigationBarTitle("",displayMode: .inline)
        //ignora safe area segun donde le indiques
        .edgesIgnoringSafeArea(.top)
        //ocultamos barra de atras
        .navigationBarBackButtonHidden(true)
        //inovcamos a modificador para agregar a la izquierda
        //se agrega vista de boton
        .navigationBarItems(leading:
            Button(action: {
                //action to back
                //entorno
                //ocupamos dismiss para ocultar vista
                self.presentationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "arrow.left.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
            })
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(curso: Curso(name: "Curso de soles primer paso", image: "ray"))
    }
}
