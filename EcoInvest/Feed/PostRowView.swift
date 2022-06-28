//
//  PostRowView.swift
//  EcoInvest
//
//  Created by aluno on 02/06/22.
//

import SwiftUI

struct PostRowView: View {
    
    
    var usuarioNome : String
    var EmpresaNome : String
    var usuarioFoto : Image
    let empresa: Empresa

    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 430, height: 120)
                .offset(x: 0, y: -8)
                .foregroundColor(.white)
            HStack{
            
                VStack(alignment: .leading){
            usuarioFoto
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white,lineWidth: 1)
                }
                .padding()
                .offset(x: -30, y: 0)
                }
                    
                Text(usuarioNome)
                    .font(.headline)
                    .offset(x: -40, y: 0)
                    .padding()
                    
                
            Text("Investiu em")
                    .offset(x: -40, y: 0)
                    .font(.headline)
                    .padding()
                
                NavigationLink(empresa.nome, destination: EmpresaView(empresa: empresa))
                    .foregroundColor(.blue)
                    .offset(x: -40, y: 0)
                    .font(.headline)
                    .padding()
               
            }
            .padding()
        }
       
    }
}

//struct PostRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        PostRowView(usuarioNome: "Adriana", EmpresaNome: empresa.nome, usuarioFoto: Image("avatar-b0b5054b16218e6dd826c3e640a79d4a"), empresa: .empresa_padrao)
//    }
//}
