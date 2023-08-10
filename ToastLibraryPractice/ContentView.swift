//
//  ContentView.swift
//  ToastLibraryPractice
//
//  Created by 신예진 on 8/10/23.
//

import SwiftUI
import SimpleToast

struct ContentView: View {
    
    @State var showToast: Bool = false

    private let toastOptions = SimpleToastOptions(
        hideAfter: 5
    )

    var body: some View{
        VStack(spacing: 20) {
            Button("Show toast") {
                withAnimation {
                    showToast.toggle()
                }
            }
        }
        .simpleToast(isPresented: $showToast, options: toastOptions) {
            Label("This is some simple toast message.", systemImage: "exclamationmark.triangle")
            .padding()
            .background(Color.red.opacity(0.8))
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding(.top)
        }
        
    }
   
}
