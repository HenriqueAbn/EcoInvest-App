import SwiftUI


import SwiftUI


struct EmpresaView: View {
    let empresa: Empresa
    @State var offset: CGFloat = 0
    @State private var search: String = ""
    
    var body: some View {
        ZStack{
            
    
        
            Color(UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            
        ScrollView(.vertical, showsIndicators: false,
               content: {
            VStack(spacing :15){
                
                GeometryReader{proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async{
                        self.offset = minY
                    }
                    
                    return AnyView(
                        
                        ZStack{
                            Image("wallpaperbonito")
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width:getRect().width,height: minY > 0 ? 180 + minY : nil, alignment: .center)
                                .cornerRadius(0)
                        }
                            .frame(height: minY > 0 ? 180 + minY : nil)
                        .offset(y: minY > 0 ? -minY : 0)
                    )
                }
                
                .frame(height:180)
                
                VStack{
                
                    HStack{
                        Image(empresa.icone)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 5)
                        .padding( .top, -30)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 10, content: {
                            Text(empresa.nome)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding(5)
                            .cornerRadius(15)
             
                        })
                    
                    Spacer()
                    
                    
                    HStack{
                        HStack {
                            Image(systemName: "bag.fill")
                                .padding(.trailing, 8)
                            TextField("Procurar Projeto", text: $search)
                        }
                        .padding(.all, 20)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding(.trailing)
                        
                    }
                    
                    VStack{
                        
                        ProjetoCard(imagem: "areaVerde", categoria: "Projeto", titulo: "Implementacao de Areas Verdes", empresaResponsavel: empresa.nome,nomeButton: "Investir")
                        
                        ProjetoCard(imagem: "painel", categoria: "Projeto", titulo: "Implementacao de Paineis Solares", empresaResponsavel: empresa.nome, nomeButton: "Investir")
                    }
                }
                
            }
        })
            .ignoresSafeArea(.all, edges: .top)
    }
    }
}

extension View {
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

struct EmpresaView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaView(empresa: .empresa_padrao)
            }
        }


