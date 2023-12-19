//
//  RegisterView.swift
//  SwiftUISendData
//
//  Created by Sofa on 19.12.23.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                Text("\(name.count)")
                    .padding(20)
                    .foregroundColor(textColor())
            }
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty, name.count <= 15 {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    private func textColor() -> Color {
        let color: Color
        if name.count < 5 {
            color = Color(.red)
        } else {
            color = Color(.green)
        }
        return color
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
