//
//  ContentView.swift
//  CW3A
//
//  Created by Hessa AlMusafer on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
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
                            result = "A"
                        }
                        
                        else if (Double(grade) ?? 0 >= 80.0)
                        {
                            result = "B"
                        }
                        
                        else if (Double(grade) ?? 0 >= 70.0)
                        {
                            result = "C"
                        }
                        
                        else if (Double(grade) ?? 0 >= 60.0)
                        {
                            result = "D"
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
