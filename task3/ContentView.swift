//
//  ContentView.swift
//  task3
//
//  Created by Dmitrii Nazarov on 06.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isClicked: Bool = true
   // @State private var transparency = 0.0
    var body: some View {
        VStack {
            Button {
                //transparency = 0.6
                withAnimation(.spring(dampingFraction:0.5, blendDuration:0.4)){
                    isClicked = false
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    isClicked = true
                   // transparency = 0
                }
            } label: {
                ZStack {
//                    Circle()
//                        .frame(width: 90,height: 90)
//                        .foregroundColor(.cyan)
//                        .opacity(transparency)
//                        .offset(x:15,y:0)
                        
                    Text("▶")
                        .font(.system(size: 50))
                        .scaleEffect(isClicked ? 0 : 1)
                        .offset(x: 0, y: 0)
                        .foregroundColor(.blue.opacity(isClicked ? 0 : 1))
                    
                    Text("▶")
                        .font(.system(size: 50))
                        .offset(x: isClicked ? 0 : 30, y: 0)
                        .foregroundColor(.blue)
                    
                    Text("▶")
                        .font(.system(size: 50))
                        .scaleEffect(isClicked ? 1 : 0.3)
                        .offset(x: isClicked ? 30 : 50, y: 0)
                        .foregroundColor(.blue.opacity(isClicked ? 1 : 0))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
