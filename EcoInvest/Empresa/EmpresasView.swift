import Foundation
import SwiftUI

struct EmpresasView: View {
    
    let empresas = ["Amazon", "Natura", "Apple","oBoticário"]
    
    let empresasComoObjeto = [
        Empresa(nome: "Amazon", descricao: "Lorem ipsum dolor sit amet", icone: "Amazon"),
        Empresa(nome: "Natura", descricao: "Amet sit dolor ipsum lorem", icone: "Natura"),
        Empresa(nome: "Apple", descricao: "Lorem lorem ipsum ipsum dolor dolor sit sit amet amet", icone: "applenova"),
        Empresa(nome: "oBoticário", descricao: "Lorem ipsum", icone: "oBoticario")
    ]
    
    var body: some View {
        VStack {
            
            
            NavigationView {
                ScrollView {
                    VStack {
                        ForEach(empresasComoObjeto, id: \.nome) { empresa in
                            NavigationLink(destination: EmpresaView(empresa: empresa)) {
                                SpecialButton(buttonText: empresa.nome, buttonImage: empresa.icone)
                            }
                            .ignoresSafeArea()
                        }
                    }
                    
                }
                .navigationTitle(Text("Empresas"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresasView()
    }
}


