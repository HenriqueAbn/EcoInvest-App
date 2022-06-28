import SwiftUI

struct ProjetosView: View {
    
    let empresa: Empresa
    var body: some View {
        
        
        NavigationView{
        ScrollView {
            VStack {
                
                    ProjetoCard(imagem: "areaVerde", categoria: "Projeto", titulo: "Implementacao de Areas Verdes", empresaResponsavel:"Amazon", nomeButton: "Investir")
                    
                Spacer()
                
                ProjetoCard(imagem: "painel", categoria: "Projeto", titulo: "Implementacao de Paineis Solares", empresaResponsavel: "Apple", nomeButton: "Investir")
                }
            }
        .navigationTitle(Text("Projetos"))
        }
    }
}


struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjetosView(empresa: .empresa_padrao)
        
    }
}
