//
//  SwiftUIView.swift
//  SayiTahminOyunu
//
//  Created by asdirector on 26.02.2024.
//

import SwiftUI

struct SonucEkran: View {
    
    var sonuc = false
    
    var body: some View {
        VStack(spacing: 100){
            
            if sonuc {
                
                Text("KAZANDINIZ!").font(.system(size: 36))
                Image("mutlu").resizable().frame(width: 128, height: 128)
            
            }else {
                
                Text("KAYBETTİNİZ!").font(.system(size: 36))
                Image("uzgun").resizable().frame(width: 128, height: 128)
            
            }
           
         
        }
    }
}

#Preview {
    SonucEkran()
}
