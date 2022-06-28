import SwiftUI


struct GrowingButton2: ButtonStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .multilineTextAlignment(.center)
        //.frame(width: 400, height: 60)
            .padding()
            .padding(.horizontal, UIScreen.main.bounds.width * 0.25)
            .background(Color("Green-System"))
            .cornerRadius(1)
            .foregroundColor(Color.white)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ProjetoCard: View {
    
    var imagem: String
    var categoria: String
    var titulo: String
    var empresaResponsavel: String
    var nomeButton: String
    
    
    var body: some View {
        VStack {
            Image(imagem)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(categoria)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(titulo)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(empresaResponsavel.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                
                .layoutPriority(100)
                
                Spacer()
                
            }
            
            HStack {
                NavigationLink("INVESTIR", destination: ContentView())
                    .buttonStyle(GrowingButton2())
                    .font(.title)
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}
    
struct ProjetoCard_Previews: PreviewProvider {
        static var previews: some View {
            
            ProjetoCard(imagem: "areaVerde", categoria: "Projeto", titulo: "Implementacao de Areas Verdes", empresaResponsavel: "Amazon", nomeButton: "Investir" )
            
        }
    }
    
    
    
