import SwiftUI

struct PerfilUsuarioView: View {
    
    // Habilitando fundo para o TextEditor()
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State var count: Int = 0
    @State var input: String = ""
    // Bio do usuário
    
    
    var body: some View {
        
        
        VStack {
            // Ft. de perfil e campo p/ nome de
            // usuário
            HStack {
                
                HStack{
                // Foto de perfil
                Image("stevejobs")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white, lineWidth: 4)
                    }
                
                
                // Nome de usuário
                    VStack(alignment: .leading){
                    Text("Steve")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        
                    Text("@stevejobs")
                        .foregroundColor(.gray)
                }
                }.padding()
                    .offset(x: -60, y: 0)

               
               Image(systemName: "star.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .offset(x: 20, y: 0)
                    .foregroundColor(.yellow)
               
                
            }
            
            
            // Bio do usuário
//            ZStack(alignment: .leading) {
//                VStack(alignment: .leading){
//                    Text(" 'Design é função, não forma.' ")
//                    .font(.title2)
//                    .fontWeight(.medium)}
//                .position(x: 145, y: 20)
//            }
            
            HStack {
                
                Text("design é ferramenta.")
                
                    
                
            }
            
            
            //            TextField(
            //                text: $bio,
            //                label: {
            //                    Text("Biografia")
            //                })
            //                    .background(.green.opacity(0.50))
            //                    .cornerRadius(10.0)
            
            
            
            
            // Barra de infos 1
//            HStack {
//
//                Button(
//                    action: {
//                        count += 1
//                    },
//                    label: {
//                        HStack {
//                            Image(systemName: "star.fill")
//                            Text("Prêmios \n\(count)")
//                        }
//
//                    }
//                )
//                    .frame(width: 150, height: 50)
//                    .background(Color.blue)
//                    .foregroundColor(Color.white)
//                    .cornerRadius(100)
//
//
//            }
//            .padding(10)
//
            NavigationView
            {
                
                ScrollView {
                    
                    ConquitasView(conquistaBar:Color("ConquistaBar Win") , insignia: Image(systemName: "bolt.fill"), insigniaColor: .yellow, rosette: Image(systemName: "rosette"), rosetteColor: Color("Rosette Color Win"), conquistaName: "Um eletricista Nato", conquistaDescricao: "Insvetir num projeto de eletricidade 50 vezes")
                    
                    Spacer()
                    
                    ConquitasView(conquistaBar:Color("ConquistaBar Lose") , insignia: Image(systemName: "car.fill"), insigniaColor: Color("Rosette Color Lose"), rosette: Image(systemName: "gearshape.2.fill"), rosetteColor: Color("Rosette Color Lose"), conquistaName: "O Engenheiro", conquistaDescricao: "Insvetir num projeto automobilístico 50 vezes")
                    
                    Spacer()
                    
                    ConquitasView(conquistaBar:Color("ConquistaBar Win") , insignia: Image(systemName: "pawprint.fill"), insigniaColor: .brown, rosette: Image(systemName: "rosette"), rosetteColor: Color("Rosette Color Win"), conquistaName: "O Salvador", conquistaDescricao: "Insvetir num projeto com animais 50 vezes")
                }
                .navigationTitle(Text("Conquistas"))
            }
        }
        .padding(10)
    }
    
    struct PerfilUsuarioView_Previews: PreviewProvider {
        static var previews: some View {
            PerfilUsuarioView()
            
        }
    }
    
}
