//
//  ContentView.swift
//  CW3B
//
//  Created by Hessa AlMusafer on 10/09/2022.
//

import SwiftUI

struct ContentView: View
{
    @State var counter1 = 0
    @State var counter2 = 0
    @State var counter3 = 0

    var body: some View
    {
        VStack
        {
            EstghfarCounter(text: "استغفر الله العظيم", counter: $counter1)
            EstghfarCounter(text: "سبحان الله وبحمده", counter: $counter2)
            EstghfarCounter(text: "سبحان الله العظيم", counter: $counter3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct EstghfarCounter: View {
    var text: String
    @Binding var counter: Int
    var body: some View {
        
        HStack
        {
            Text(text)
                .foregroundColor(.black)
                .bold()
                .font(.largeTitle)
            ZStack
            {
                Circle()
                    .frame(width: 110, height: 110)
                    .foregroundColor(.brown)
                
                Text("\(counter)")
                    .bold()
                    .font(.largeTitle)
            }
            .onTapGesture
            {
                counter = counter + 1
            }
        }
    }
}
