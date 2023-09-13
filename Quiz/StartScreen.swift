//
//  StartScreen.swift
//  Quiz
//
//  Created by Emma Goldberg-Keller on 9/11/23.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        
        
        NavigationView {
            ZStack(alignment: .center) {
                         Rectangle()
                              .fill(Color.cyan)
                              .edgesIgnoringSafeArea(.all)
                        
                        
                        Text("GUESS THE PRESIDENTS!")
                            .bold().font(.custom( "augustvibes", size: 60.0))
                            .offset(y: -30)
               
                            
                            
                        
              
                VStack() {
                    
                    
                    Image(systemName: "flag")
                        .offset(y: 280)
                    
                    Spacer()
                        .frame(minHeight: 50, idealHeight: 300, maxHeight: 600)
                        .fixedSize()
                    
                             NavigationLink(destination:  ContentView()){
                                 
                                 
                                 
                                 Text("START")
                                     .padding(30)
                                .background(.white)
                                .foregroundStyle(.black).border(Color.red).bold()
                               
                             }
                             
                             
                             
                             
                             
                                   
                }
                  }
              
             }
    
        
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
