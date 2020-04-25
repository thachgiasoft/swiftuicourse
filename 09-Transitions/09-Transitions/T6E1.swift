//
//  T6E1.swift
//  09-Transitions
//
//  Created by MACBOOK on 24/04/20.
//  Copyright © 2020 johnvera. All rights reserved.
//

import SwiftUI

struct T6E1: View {
    
    @State private var progress : CGFloat = 0.0
    @State private var loadingPay = true
    @State private var showAlert = false
    @State private var textPay = "Pagar con Apple"

    var body: some View {
        VStack{
            
            //texto inicial
            Text("\(textPay)")
                .font(.system(size: 40, design:.rounded))

            //elemento para pagar
            ZStack{
                Image(systemName: "dollarsign.circle")
                    .font(.system(size: 120))
                    .foregroundColor(loadingPay ? .blue : .gray)
                 
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.green, lineWidth: 10)
                    .frame(width: 150, height: 150)
                    .rotationEffect(Angle(degrees: -90))
            }.onTapGesture {
                self.textPay = "Pagar con Apple"
                withAnimation(Animation.spring()){
                    self.showAlert.toggle()
                }
            }
            
            if showAlert {
            //alerta
                VStack{
                    Text("Estas seguro que deseas pagar?")
                        .font(.system(size: 25, design: .rounded))
                        .foregroundColor(.gray)
                        .padding(8)
                    
                    HStack{
                        Button(action: {
                            withAnimation(Animation.spring()){
                                self.showAlert.toggle()
                            }
                        }) {
                            Text("No")
                                .font(.system(size:20))
                                .bold()
                                .foregroundColor(.red)
                                .padding()
                        }
                        
                        Button(action: {
                            self.showAlert.toggle()
                            self.loadingPay.toggle()
                            self.textPay = "Pagando..."
                            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
                                
                                self.progress += 0.1
                                if self.progress >= 1.0 {
                                    
                                    timer.invalidate()
                                    self.loadingPay.toggle()
                                    self.progress = 0.0
                                    self.textPay = "Listo :) "

                                }
                            }
                        }) {
                            Text("Si")
                                .font(.system(size:20))
                                .bold()
                                .foregroundColor(.blue)
                                .padding()
                        }
                    }
                }.transition(.offset(x: -700, y: 0))
            }
        }
    }
}

struct T6E1_Previews: PreviewProvider {
    static var previews: some View {
        T6E1()
    }
}
