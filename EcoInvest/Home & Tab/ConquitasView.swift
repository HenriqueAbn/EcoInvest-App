//
//  ConquitasView.swift
//  EcoInvest
//
//  Created by aluno on 14/06/22.
//

import SwiftUI

struct ConquitasView: View {
    
    var conquistaBar : Color
    var insignia: Image
    var insigniaColor: Color
    var rosette: Image
    var rosetteColor: Color
    var conquistaName: String
    var conquistaDescricao: String
    
    var body: some View {
    
        ZStack{
            Rectangle()
                .frame(width: 400, height: 110)
                .foregroundColor(conquistaBar)
                .overlay(
                    rosette
                        .foregroundColor(rosetteColor)
                        .padding(.leading, 300)
                        .font(.system(size: 180, weight: .bold))
                        .offset(x: 20, y: -40)
                )
                .clipShape(Rectangle())
                .cornerRadius(15.0)
            
            HStack{
                
                insignia
                    .padding()
                    .foregroundColor(insigniaColor)
                    .font(.system(size:55, weight: .bold))
                
                VStack(alignment: .leading){
                    Text(conquistaName)
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        
                    Text(conquistaDescricao)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                }
                    
            }
            
        }
    }
}

struct ConquitasView_Previews: PreviewProvider {
    static var previews: some View {
        ConquitasView(conquistaBar:Color("ConquistaBar Win") , insignia: Image(systemName: "bolt.fill"), insigniaColor: .yellow, rosette: Image(systemName: "rosette.fill"), rosetteColor: Color("Rosette Color Win"), conquistaName: "Um eletricista Nato", conquistaDescricao: "Insvetir num projeto de eletricidade 50 vezes")
    }
}
