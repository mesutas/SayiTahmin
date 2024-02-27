//
//  ContentView.swift
//  SayiTahminOyunu
//
//  Created by asdirector on 26.02.2024.
//

import SwiftUI

struct AnaSayfa: View {
    
    @State private var tahminEkraninaGecis = false
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 100){
                Text("Tahmin Oyunu").font(.system(size: 36))
                Image("zar").resizable().frame(width: 128, height: 128)
                
                Button("Oyuna Başla"){
                    tahminEkraninaGecis = true
                }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50)
                    .background(.blue)
                    .cornerRadius(8)
                Text("mesutasdeveloper")
            }
            .navigationDestination(isPresented: $tahminEkraninaGecis){
                TahminEkrani()
            }
      
        }
    
    }
}

#Preview {
    AnaSayfa()
}
