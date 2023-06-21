//
//  ContentView.swift
//  quizProgramSwftUI
//
//  Created by 주진형 on 2023/06/21.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let synthesizer = AVSpeechSynthesizer()
    @State private var showingAlert = false
    @State var gamingBool: Bool = false
    @State var newOrEnd: String = "새게임"
    
    @State var stage: Int = 1
    
    @State var lifeCount: Int = 3
    @State var tenProblem = problems[0..<10]
    @State var nowProblem: Problem = Problem(question: "게임을 시작해주세요",
                                             options: ["1", "2", "3", "4"],
                                             answer: "")
    
    var body: some View {
        ZStack {

            
            VStack {
                Text("")
                
                Spacer()
                
                List {
                    Section {
                        HStack {
                            Text("Question \(stage)")
                            Spacer()
                            Text("\(stage) / 10")
                            
                        }
                        HStack {
                            Text(nowProblem.question)
                                .padding()
                            Spacer()
                            
                            Button {
                                speak()
                            } label: {
                                Image(systemName: "speaker")
                            }
                        }
                    } header: {
                        HStack {
                            Spacer()
                            HStack {
                                switch (lifeCount){
                                case 3:
                                    Group {
                                        Spacer()
                                        Image(systemName: "heart.fill")
                                        Image(systemName: "heart.fill")
                                        Image(systemName: "heart.fill")
                                    }
                                    .imageScale(.large)
                                    .foregroundColor(.pink)
                                case 2:
                                    Group {
                                        Spacer()
                                        Image(systemName: "heart.fill")
                                        Image(systemName: "heart.fill")
                                        Image(systemName: "heart")
                                        
                                    }
                                    .imageScale(.large)
                                    .foregroundColor(.pink)
                                case 1:
                                    Group {
                                        Spacer()
                                        Image(systemName: "heart.fill")
                                        Image(systemName: "heart")
                                        Image(systemName: "heart")
                                    }
                                    .imageScale(.large)
                                    .foregroundColor(.pink)
                                case 0:
                                    Spacer()
                                    Image(systemName: "heart")
                                    Image(systemName: "heart")
                                    Image(systemName: "heart")
                                default:
                                    Spacer()
                                }
                            }
                        }
                    }
                    .listRowBackground(Color.white.opacity(0.3))
                    
                    Section {
                        ForEach(nowProblem.options,id: \.self) { option in
                            Button {
                                pressButton(option)
                            } label: {
                                Text("\(option)")
                            }
                        }
                        .listRowBackground(Color.white.opacity(0.3))

                    }
                }
                .scrollContentBackground(.hidden)
                
                
                
                
                
                
                Spacer()
                Button(newOrEnd) {
                    button()
                }
                .padding()
                .background(Color.pink.opacity(0.3))
                .cornerRadius(20)
                .shadow(color: .red, radius: 10, x: 1, y: 2)
                
            }
            .background {
                Image("11")
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 3)
                    .edgesIgnoringSafeArea(.all)
                    .edgesIgnoringSafeArea(.bottom)
            }
            
        }
        .foregroundColor(Color.white)
        .fontWeight(Font.Weight.black)
        
        
    }
        
    
    func pressButton(_ option: String) {
        if gamingBool == false { return }
        
        if option != tenProblem[stage].answer {
            lifeCount -= 1
            if lifeCount == 0 {
                gamingBool = false
            }
        }
        
        stage += 1
        nowProblem = tenProblem[stage]
        
    }
    
    func button() {
        if gamingBool == true {
            stopGame()
        } else {
            newGame()
        }
    }
    
    func stopGame() {
        gamingBool = false
        newOrEnd = "새게임"

        nowProblem = Problem(question: "게임을 시작해주세요",
                             options: ["1", "2", "3", "4"],
                             answer: "")
    }
    
    func newGame() {
        gamingBool = true
        newOrEnd = "게임 중단"
        
        tenProblem = problems.shuffled()[0..<10]
        nowProblem = tenProblem[0]
        lifeCount = 3
        stage = 1
    }
    
    func speak() {
        let utterance = AVSpeechUtterance(string:  nowProblem.question)
        utterance.volume = 0.3
        utterance.rate = 0.4
        
        synthesizer.speak(utterance)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
