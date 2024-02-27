//
//  TahminEkrani.swift
//  SayiTahminOyunu
//
//  Created by asdirector on 26.02.2024.
//

import SwiftUI

struct TahminEkrani: View {
    @State private var sonucEkraninaGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var tfTahmin = ""
    @State private var rastgeleSayi = 0
    @State private var sonuc = false
    var body: some View {
        VStack(spacing: 40){
           
            
            Text("Kalan Hak: \(kalanHak)").font(.system(size: 36)).foregroundColor(.red)
            Text("1 ile 15 sayıları arasında bir sayı girin")
            
            Text(("Yardım: \(yonlendirme)")).font(.system(size: 24))
            
            
           
               
            TextField("Tahmin Etiiğin Rakamı Yaz", text:$tfTahmin)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
           
            
            Button("Tahmin Et"){
                
                kalanHak = kalanHak - 1
                
                if let tahmin = Int(tfTahmin){
                    if tahmin == rastgeleSayi {
                        sonucEkraninaGecis = true
                        sonuc = true
                        return
                    }
                    if tahmin > rastgeleSayi {
               
                        yonlendirme = "AZALT"
                    }
                    if tahmin < rastgeleSayi {
                  
                        yonlendirme = "ARTTIR"
                    }
                    if kalanHak == 0 {
                        sonucEkraninaGecis = true
                        sonuc = false
                    }
                }
              
                tfTahmin = ""
                
            }
            
                .foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(8)
        }
       
        
        .navigationDestination(isPresented: $sonucEkraninaGecis){
            SonucEkran(sonuc: sonuc)
        }.onAppear{
            rastgeleSayi = Int.random(in: 1...15)
            print("Rastgele Sayı: \(rastgeleSayi)")
            
//            Arayüzü Sıfırlama
            kalanHak = 5
            yonlendirme = ""
            tfTahmin = ""
        }
    }
}

#Preview {
    TahminEkrani()
}
