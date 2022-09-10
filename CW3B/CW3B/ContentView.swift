//
//  ContentView.swift
//  CW3B
//
//  Created by Hessa AlMusafer on 10/09/2022.
//

import SwiftUI

struct MyOtherApp: View {
    @State var grade = ""
    @State var result = ""

    var body: some View {
        
                VStack
                {
                Text("Grade Calculator")
                    .bold()
                    .font(.largeTitle)
                    
                    
                    Image("calc")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    TextField("enter your grade" , text: $grade)
                        .font(.largeTitle)
        
                    
                    ZStack
                    {
                        Color(.gray)
                        Text("Calculate")
                            .bold()
                            .foregroundColor(.white)
                    }
                    
                    .frame(width: 100, height: 40)
                    .onTapGesture {
                        if(Double(grade) ?? 0 >= 90.0)
                        {
                        Text("A")
                                .bold()
                                .font(.largeTitle)
                        }
                        
                        else if (Double(grade) ?? 0 >= 80.0)
                        {
                            Text("B")
                                    .bold()
                                    .font(.largeTitle)
                        }
                        
                        else if (Double(grade) ?? 0 >= 70.0)
                        {
                            Text("C")
                                    .bold()
                                    .font(.largeTitle)
                        }
                        
                        else if (Double(grade) ?? 0 >= 60.0)
                        {
                            Text("D")
                                    .bold()
                                    .font(.largeTitle)
                        }
                        
                        else if (Double(grade) ?? 0 < 60.0)
                        {
                            result = "F"
                        }
                    }

                    
                    Text("Your Grade is:")
                        .bold()
                            
                    Text(result)
                            .bold()
                            .font(.largeTitle)

                            

                }
            
    }
}


struct ContentView: View {
    var body: some View {
        HStack {
            MyOtherApp()
            MyOtherApp()
            MyOtherApp()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
