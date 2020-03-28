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
            .edgesIgnoringSafeArea(.all)    //igmnora areas seguras
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
