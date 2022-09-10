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
            HStack
            {
            Text("استغفر الله العظيم")
                    .foregroundColor(.black)
                    .bold()
                    .font(.largeTitle)
                ZStack
                {
                Circle()
                    .frame(width: 110, height: 110)
                    .foregroundColor(.brown)
                    
                    Text("\(counter1)")
                        .bold()
                        .font(.largeTitle)
                }
                .onTapGesture
                {
                    counter1 = counter1 + 1
                }
            }
            
            
                HStack
                {
                Text("سبحان الله وبحمده")
                        .foregroundColor(.black)
                        .bold()
                        .font(.largeTitle)
                    ZStack
                    {
                    Circle()
                        .frame(width: 110, height: 110)
                        .foregroundColor(.brown)
                        
                        Text("\(counter2)")
                            .bold()
                            .font(.largeTitle)
                    }
                    .onTapGesture
                    {
                        counter2 = counter2 + 1
                    }

                }
            
            
                HStack
                {
                Text("سبحان الله العظيم")
                        .foregroundColor(.black)
                        .bold()
                        .font(.largeTitle)
                    ZStack
                    {
                    Circle()
                        .frame(width: 110, height: 110)
                        .foregroundColor(.brown)
                        
                        Text("\(counter3)")
                            .bold()
                            .font(.largeTitle)
                    }
                    .onTapGesture
                    {
                        counter3 = counter3 + 1
                    }

                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
