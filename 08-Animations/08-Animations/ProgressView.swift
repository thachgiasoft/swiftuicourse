//
//  ProgressView.swift
//  08-Animations
//
//  Created by John Alexis Cristobal Jimenez  on 4/14/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct ProgressView: View {

    @State private var progress : CGFloat = 0.3

    var body: some View {
        
        //ahora el progress es el state
        //va aumentado a cada segundo 
        ZStack{
            Text("\(Int(progress * 100)) %")
                .font(.system(.title, design: .rounded))
                .bold()
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 2)
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.green, lineWidth: 12)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: -90))

            
        }.onAppear() {
            //timer para cada segundo aumenta timer
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
                self.progress += 0.01
                
                if self.progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
