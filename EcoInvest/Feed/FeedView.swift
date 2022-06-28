//
//  FeedView.swift
//  EcoInvest
//
//  Created by aluno on 31/05/22.
//

import SwiftUI

struct FeedView: View {
    let empresa: Empresa
    
    let empresasComoObjeto = [
        Empresa(nome: "Amazon", descricao: "Lorem ipsum dolor sit amet", icone: "Amazon"),
        Empresa(nome: "Natura", descricao: "Amet sit dolor ipsum lorem", icone: "Natura"),
        Empresa(nome: "Apple", descricao: "Lorem lorem ipsum ipsum dolor dolor sit sit amet amet", icone: "applenova"),
        Empresa(nome: "oBoticário", descricao: "Lorem ipsum", icone: "oBoticario")
    ]
    
    var body: some View {
        
        ZStack{
            Color("FundoFeed")
                .ignoresSafeArea()
            
            
        ScrollView{
            VStack(alignment: .center) {
       
            LazyVStack{
                ForEach(empresasComoObjeto, id: \.nome) { empresa in
                    PostRowView(usuarioNome: "User", EmpresaNome: empresa.nome, usuarioFoto: Image("avatar-b0b5054b16218e6dd826c3e640a79d4a"), empresa: empresa)
                }
//                ForEach(1...5, id:\.self){ _ in
//                    PostRowView(usuarioNome: "Adriana", EmpresaNome: "Amazon", usuarioFoto: Image("avatar-b0b5054b16218e6dd826c3e640a79d4a"), empresa: .empresa_padrao)
//                }
//                ForEach(0 ... 2, id:\.self){ _ in
//                    PostRowView(usuarioNome: "Pedro", EmpresaNome: "Amazon", usuarioFoto: Image("avatar-b0b5054b16218e6dd826c3e640a79d4a"), empresa: .empresa_padrao)
//                }
//                ForEach(0 ... 1, id:\.self){ _ in
//                    PostRowView(usuarioNome: "Sócrates", EmpresaNome: "Amazon", usuarioFoto: Image("avatar-b0b5054b16218e6dd826c3e640a79d4a"), empresa: .empresa_padrao)
//                }

            }
        }
    }
}
    }
struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(empresa: .empresa_padrao)
            }
        }
    }
