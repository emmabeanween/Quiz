//
//  ContentView.swift
//  Quiz
//
//  Created by Emma Goldberg-Keller on 9/9/23.
//

import SwiftUI

struct ContentView: View {
@State private var userPresidentGuess = ""
@State private var userAnswerString = ""
@State private var showAlert = false
@State private var currentPresidentIndex = 0
@State private var showArrow = false
@State private var letEdit = false
@State private var letGuess = false
@State public var userScore = 0
@State private var showScoreArrow = false
@State private var GameOver = false

    
    
    // array of presidential images
    let currentPresidents = [
    "george-washington",
    "abraham-lincoln",
    "theodore-roosevelt",
    "dwight-eisenhower"
    
    
    ]
    
    // array of presidential answers
    let answers = [
    
    "George Washington",
    "Abraham Lincoln",
    "Theodore Roosevelt",
    "Dwight Eisenhower"
    
    
    ]
    
   
 // the current President in the answers list
   private var currentPresident: String {
        
        return answers[currentPresidentIndex]
        
   
        
    }

// the current President Image in the images list
    private var currentPresidentImage: String {
        
        return currentPresidents[currentPresidentIndex]
    }
 
    
    // a function to check the user's answer (he/she only gets one try)
    func checkPresident() {
        
        
        
        // check if game is over
        
    
        
        if (currentPresidentIndex == 3) {
            
            // length of stack
            
            GameOver = true
            
        }
        
        
        
        
        // compare the user's answer with the correct answer
      
      var userAnswer = userPresidentGuess
      var correctAnswer  = currentPresident
        if (userAnswer == correctAnswer) {
            
            userAnswerString = "You guessed correctly! And the president is..."
            
        // increase the user's score by 1
            
        userScore = userScore + 1
            
        }
        
        else {
            
            userAnswerString = "Incorrect! Better luck next time. And the president is..."
            
        }
        // does guess match answer?
        // alert dialog
        // if so, add + 1 to user's score and show dialog that says 'correct'
        // if not, do nothing and show dialog that says 'incorrect'
        // make arrow appear to change president
        
        
        
    }
    
    func changePresident () {
        
        // update photo
        // if user has not seen all presidents
        
            
            currentPresidentIndex  =
            currentPresidentIndex + 1
            showArrow = false
        
    }
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                
                Color.gray.ignoresSafeArea()
                
                
                
                VStack(alignment: .center, spacing: 15) {
                    
                    
                    
                    Label("Who is this president?", systemImage: "person")
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .padding(10.0)
                        .bold()
                    
                    
                    
                    
                    
                    
                    
                    Image(currentPresidentImage)
                        .cornerRadius(10.0)
                    
                    
                    
                    
                    
                    TextField("write your guess here...", text: $userPresidentGuess)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .padding().textFieldStyle(RoundedBorderTextFieldStyle.roundedBorder)
                        .disabled(letEdit)
                    
                    
                    
                    
                    
                    Button("Guess Now!") {
                        checkPresident()
                        showAlert.toggle()
                        
                        if (GameOver == true) {
                            showScoreArrow.toggle()
                            
                        } else {
                            
                            showArrow.toggle()
                            
                            
                        }
                        // after the user has guessed once, disable editing
                        letEdit.toggle()
                        
                        // after the user has guessed once, disable guessing
                        letGuess.toggle()
                    }
                    .alert(isPresented: $showAlert) {
                        
                        
                        Alert(title: Text(userAnswerString),
                              message: Text(currentPresident))
                    }
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .border(.black)
                    .background(.cyan)
                    .disabled(letGuess)
                    
                    
                    
                    
                    
                    
                    if showArrow {
                        Image(systemName: "arrowshape.zigzag.forward.fill")
                            .imageScale(.large)
                            .padding(10.0)
                            .onTapGesture {
                                
                                
                                
                                
                                changePresident()
                                // allow editing again
                                letEdit.toggle()
                                
                                // allow guessin g again
                                
                                letGuess.toggle()
                            }
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                    if showScoreArrow {
                        
                        
                        NavigationLink(
                            "get your score ->",
                            destination: ScoreScreen(userScore: userScore)).foregroundColor(Color.black)
                            .bold()
                            .background(Color.cyan)
                            .padding(10.0)
                            .border(Color.black)
                        
                        
    
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            
        }.navigationBarBackButtonHidden()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}



