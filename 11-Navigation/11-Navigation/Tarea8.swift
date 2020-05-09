//
//  Tarea8.swift
//  11-Navigation
//
//  Created by MACBOOK on 09/05/20.
//  Copyright © 2020 MACBOOK. All rights reserved.
//

import SwiftUI

struct Tarea8: View {
    
    var soles = [
        Universe(imageName: "magic", autorName: "NASA", title: "Choque de ondas cosmicas", originalDate: "1999-09-09", newDate: "2009-09-11"),
        Universe(imageName: "crunches", autorName: "ESPACIAL", title: "Vista de la piel del sol", originalDate: "2010-09-30", newDate: "2020-04-11"),
        Universe(imageName: "sunmore", autorName: "LEYENDA", title: "Miradas que se encuentran", originalDate: "2011-09-30", newDate: "2021-04-11"),
        Universe(imageName: "ray", autorName: "MITO", title: "Espirales hacia el infinito", originalDate: "1740-10-10", newDate: "1876-12-12")
    ]
    
    init() {
        let apperance = UINavigationBarAppearance()
        apperance.largeTitleTextAttributes = [
            .font: UIFont(name: "Helvetica Neue", size: 32)!,
            .foregroundColor: UIColor.gray
        ]
        
        apperance.titleTextAttributes = [
            .font: UIFont(name: "Helvetica Neue", size: 20)!,
            .foregroundColor: UIColor.gray
        ]
        
        //cambiamos flecha de atras y color
        apperance.setBackIndicatorImage(UIImage(systemName: "arrow.left"), transitionMaskImage: UIImage(systemName: "arrow.left.circle"))
        UINavigationBar.appearance().tintColor = UIColor.gray
        
        UINavigationBar.appearance().standardAppearance = apperance
        UINavigationBar.appearance().compactAppearance = apperance
        UINavigationBar.appearance().scrollEdgeAppearance = apperance
    }
    
    var body: some View {

        NavigationView{
            List(soles.indices) { idx in
                
                //agregamos navigationlink y destino con data
                NavigationLink(destination: DetailTarea8(universe: self.soles[idx])) {
                    
                    CardView(universe: self.soles[idx])
                    
                }
            }
            //agregamos titilo a lista para que con scroll se oculte
            //displaymode para cambiarlo grande, inline, automatic
            .navigationBarTitle("Tipos de soles", displayMode: .automatic)
        }        
    }
}

struct Tarea8_Previews: PreviewProvider {
    static var previews: some View {
        Tarea8()
    }
}

struct Universe : Identifiable{
    var id = UUID()
    var imageName: String
    var autorName: String
    var title: String
    var originalDate: String
    var newDate: String
}
