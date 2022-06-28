/*
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.projetos.count > 0 {
                ForEach(cartManager.projetos, id: \.id) {
                    projeto in
                    ProjetoRow(projeto: projeto)
                }
                
                HStack {
                    Text("Seu carrinho total é")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
            } else {
                Text("Seu carrinho está vazio")
            }
    
    }
        .navigationTitle(Text("Meu Carrinho"))
        .padding(.top)
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
}

*/
