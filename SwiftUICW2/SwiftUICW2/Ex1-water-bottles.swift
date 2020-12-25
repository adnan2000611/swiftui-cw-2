//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var water = 1
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
                TextField("اكتب اسمك هنا ", text: $name)
                Stepper("كم بطلآ من الماء تريد ان تتعهد بان تشرب؟", value: $water , in: 1...100)
                Spacer()
                Text("اتعهد انا \(name) ان اشرب \(water) من اكواب الماء يوميا والله على ما اقول شهيد").padding().multilineTextAlignment(.center).font(.system(size: 40))
                
                Spacer()        
            }.padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
