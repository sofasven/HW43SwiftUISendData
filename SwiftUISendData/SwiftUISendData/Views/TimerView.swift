//
//  TimerView.swift
//  SwiftUISendData
//
//  Created by Sofa on 19.12.23.
//

import SwiftUI

struct TimerView: View {
    
    @EnvironmentObject var user: UserManager
    
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hello, \(user.name)!")
                .font(.title)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            Spacer()
            ButtonView(action: {timer.startTimer()}, title: "\(timer.buttonTitle)")
                .environmentObject(timer)
            Spacer()
            ButtonView(action: {user.isRegister.toggle()}, title: "LogOut")
            
        }
    }
}

struct ButtonView: View {

    @EnvironmentObject var timer: TimeCounter
    let action: () -> Void
    let title: String

    var body: some View {
        Button(action: action ) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
