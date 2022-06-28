import SwiftUI

struct HomeView: View {
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "Green-System")
    }
    
    @State var selectedIndex = 0
    
    
    let tabBarImagesNames = ["person", "newspaper" , "wrench.and.screwdriver", "suitcase"]
    
    let tabBarImagesNamesFill = ["person.fill", "newspaper.fill" , "wrench.and.screwdriver.fill", "suitcase.fill"]
    
    var body: some View {
        VStack{
            ZStack {
                switch selectedIndex {
                case 0:
                    PerfilUsuarioView()
                case 1:
                    FeedView(empresa: .empresa_padrao)
                case 2 :
                    ProjetosView(empresa: .empresa_padrao)
                default:
                    EmpresasView()
                }
            }
            Spacer()
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("VerdeBonito"))
                    .frame(width: 500, height: 90)
                
                HStack{
                    ForEach(0..<4){num in
                        Button(action: {
                            selectedIndex = num
                        },
                               label:{
                            Image(systemName: tabBarImagesNamesFill[num])
                                .font(.system(size:29, weight: .bold))
                                .foregroundColor(selectedIndex == num ?
                                                 Color(.white): .init(white: 0.9)
                                )
                                .padding()
                                .offset(x: 0, y: 10)
                        })
                        
                    }
                    
                }
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

/*
 var body: some View {
 
 TabView {
 
 LoginView()
 .tabItem {
 Label("Login", systemImage: "pencil")
 }
 PerfilUsuarioView()
 .tabItem {
 Label("Perfil", systemImage: "person")
 
 }
 
 ProjetosView()
 .tabItem {
 Label("Projetos", systemImage:"house")
 }
 EmpresasView()
 .tabItem {
 Label("Empresas", systemImage: "house")
 }
 
 
 }
 
 .navigationTitle("EcoInvest")
 }
 
 */

struct home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

