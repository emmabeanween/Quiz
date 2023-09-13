//
//  ScoreScreen.swift
//  Quiz
//
//  Created by Emma Goldberg-Keller on 9/12/23.
//

import SwiftUI

struct ScoreScreen: View {
    
    
    var userScore:Int
    
    var body: some View {
        
        
        
        ZStack (){
            
            Color.cyan.ignoresSafeArea()
            
            
            VStack() {
                
                Text("THANKS FOR PLAYING!")
                    .font(.custom("augustvibes", size: 60.0))
                    .offset(y: -30)
                
                
                
                Text("Your score was...")
                    .font(.custom("augustvibes", size: 40.0))
                    .offset(y: -10)
                
                
                
                Text(String(userScore))
                    .offset(y: 10)
                    .font(.custom("augustvibes", size: 50.0))
                    .foregroundColor(.red)
                    .bold()

                    
                
                
                
            }.navigationBarBackButtonHidden()
                
            
        }
        
        
        
        
        
    }
}

struct ScoreScreen_Previews: PreviewProvider {
    static var previews: some View {
        ScoreScreen(userScore: 4)
    }
}
