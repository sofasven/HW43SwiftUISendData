//
//  StarterView.swift
//  SwiftUISendData
//
//  Created by Sofa on 19.12.23.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
       
        Group {
            if user.isRegister {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
