//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise2: View {
    @State var value = ""
    @State var Us = 3.28
    @State var Uk = 2.46
    @State var Eu = 2.70
    var body: some View {
        
        ZStack {
            VStack{
                Spacer()
                Image("currency")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(y: 60.0)
            }
            ZStack {
                VStack {
                    Text("محول العملات العجيب!")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("العمله بالدينار", text: $value)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                    VStack(spacing: 30){
                        HStack(spacing: 40){
                            Image("us")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("$\((Double(value) ?? 0) * Us)")
                            
                            //Text("\(Double(value) ?? 0 * Us)")
                        }
                        HStack(spacing: 40){
                            Image("uk")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            
                            Text("£\((Double(value) ?? 0) * Uk)")
                        }
                        HStack(spacing: 40){
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            Text("€\((Double(value) ?? 0) * Eu) ")
                        }
                    }.padding(.top, 50)
                    Spacer()
                }
            }.padding()
        }
    }
}

struct Exercise2_Previews: PreviewProvider {
    static var previews: some View {
        Exercise2()
    }
}
