//
//  ContentView.swift
//  11-Navigation
//
//  Created by MACBOOK on 08/05/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var cursos = [
        Curso(name: "Curso 1", image: "crunches"),
        Curso(name: "Curso 2", image: "magic"),
        Curso(name: "Curso 3", image: "ray"),
        Curso(name: "Curso 4", image: "sunmore"),
        Curso(name: "Curso 2", image: "ray")
    ]
    
    /*init() {
        let apperance = UINavigationBarAppearance()
        apperance.largeTitleTextAttributes = [
            .font: UIFont(name: "Times New Roman", size: 32)!,
            .foregroundColor: UIColor.gray
        ]
        
        apperance.titleTextAttributes = [
            .font: UIFont(name: "Times New Roman", size: 20)!,
            .foregroundColor: UIColor.green
        ]
        
        //cambiamos flecha de atras y color
        //apperance.setBackIndicatorImage(UIImage(systemName: "arrow.left"), transitionMaskImage: UIImage(systemName: "arrow.left.circle"))
        //UINavigationBar.appearance().tintColor = UIColor.green
        
        //UINavigationBar.appearance().standardAppearance = apperance
        //UINavigationBar.appearance().compactAppearance = apperance
        //UINavigationBar.appearance().scrollEdgeAppearance = apperance
    }*/

    var body: some View {

        //encerramos la vista en NavigationView
        NavigationView{
            List(cursos.indices) { idx in
                
                //add zstack para ocultar disclosure icon
                ZStack(alignment: .leading){
                    if idx < 2{
                        SubFullView(curso: self.cursos[idx])
                    }else{
                        SubView(curso: self.cursos[idx])
                    }
                    
                    //agregamos navigationlink con emptyView
                    NavigationLink(destination: DetailView(curso: self.cursos[idx])) {
                        
                        EmptyView()
                    }
                }
            }
            //agregamos titilo a lista para que con scroll se oculte
            //displaymode para cambiarlo grande, inline, automatic
            .navigationBarTitle("Tipos de soles", displayMode: .automatic)
        }
    }
}

struct SubView: View {
    var curso: Curso
    var body: some View {
        HStack{
            Image(curso.image)
            //con resizable se ajusta la imagen al tamaño del frame
            .resizable()
            //modo de presentar imagen
            .aspectRatio(contentMode: .fill)
            //frame para tamaño
            .frame(width: 60, height: 60)
            .clipped()
            //redondeamos para circulo
            .cornerRadius(30)
        
            Text("\(curso.name)")
        }
    }
}

//una fila con asepcto diferente
struct SubFullView: View {
    
    var curso: Curso
    var body: some View {
        ZStack{
            Image(curso.image)
                .resizable()    //para redimensionar
                .aspectRatio(contentMode: .fit)    //para no deformar imagen
                .frame(height: 200) //dejarlo con un alto de 200
                .cornerRadius(15)
                //agrega capa gris para restrle importancia
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                        .opacity(0.35)
                )
            
            Text("\(curso.name)")
                .font(.system(.headline, design: .rounded))
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}

//con esto ahorramos codigoi
//protocolo identificable
//con esto te cargas el .\id en la lista
struct Curso : Identifiable {
    var id = UUID()
    //ESTE IDENTIFICADOR unico universal
    //numero de 128 bits
    var name: String
    var image: String
}

struct ListaData_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

