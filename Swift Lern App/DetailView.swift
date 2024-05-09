//
//  DetailView.swift
//  Swift Lern App
//
//  Created by RGMCode on 26.04.24.
//

import SwiftUI

struct DetailView: View {
    
    let topic: Topic
    
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text("Erklärung:").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()//.foregroundStyle(Color.red)
                Text(topic.explanation)
                Text("Code Beispiel:").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                Text(topic.codeSnippet)
                    .font(.system(size: 14, design: .monospaced))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding()
        } .navigationTitle(topic.title).navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(topic: Topic(title: "Konstante",
                            explanation: "Speichert Daten",
                            codeSnippet: "let variable: String")
    )
}
