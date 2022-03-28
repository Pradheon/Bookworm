//
//  ContentViewA.swift
//  JoshanRai-Bookworm
//
//  Created by Joshan Rai on 3/27/22.
//
//  Creating a custom component with @Binding

/// To run this file, please uncomment the Views below.

/*
import SwiftUI

struct ContentViewA: View {
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "on" : "off")
        }
    }
}

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: isOn ? onColors : offColors), startPoint: .top, endPoint: .bottom))
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct ContentViewA_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewA()
    }
}
*/
