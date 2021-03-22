//
//  ContentView.swift
//  MyTimer
//
//  Created by Charlie Caquias on 3/21/21.
//

import SwiftUI

struct ContentView: View {
    @State var timerMode: TimerMode = .initial
    
    let availableMinutes = Array(1...59)
    
    @State var selectedPickerIndex = 0
    
    var body: some View {
        NavigationView {
            VStack {
        
        Text("60")
            .font(.system(size: 80))
            .padding(.top, 80)
            
            
            Image(systemName: timerMode == .running ? "pause.circle.fill" : "play.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
                .foregroundColor(.orange)
            
        if timerMode == .paused {
            Image(systemName: "gobackward")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .padding(.top, 40)
            }
            Picker(selection: $selectedPickerIndex, label:
                    Text("")) {
                ForEach(0 ..< availableMinutes.count) {
                    Text("\(self.availableMinutes[$0]) min")
                }
                .labelsHidden()
                }
                Spacer()
            }
            .navigationTitle("MyTimer")
            }
        
}
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

