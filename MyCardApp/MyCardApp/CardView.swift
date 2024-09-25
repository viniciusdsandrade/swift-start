//
//  CardView.swift
//  MyCardApp
//
//  Created by VINICIUS DOS SANTOS ANDRADE on 25/09/24.
//

import SwiftUI

/// Uma View que exibe um cartão interativo com um ícone do sistema, um rótulo e efeitos visuais.
struct CardView: View {
    /// O nome do símbolo do sistema a ser exibido (ex: "person.fill", "house.fill").
    var symbolName: String
    
    /// Controla se o mouse está sobre o cartão (para plataformas desktop).
    @State private var isHovered = false
    
    /// Controla se o cartão foi tocado.
    @State private var isTapped = false
    
    var body: some View {
        VStack {
            Image(systemName: symbolName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 80, height: 80)
            
            // Normalização do tamanho do texto
            Text(symbolName.capitalized)
                .font(.title)
                .foregroundColor(.white)
                .padding(.top, 10)
                .frame(width: 100, height: 30) // Define um tamanho fixo para o texto
                .lineLimit(1) // Limita o número de linhas a 1
                .truncationMode(.tail) // Adiciona '...' se o texto for muito longo
        }
        .padding(50)
        .background(Color.blue)
        .cornerRadius(15)
        .frame(width: 200, height: 300) // Define tamanho fixo dos cards
        .scaleEffect(isTapped || isHovered ? 1.05 : 1.0) // Efeito de destaque
        .shadow(color: isTapped || isHovered ? .black.opacity(0.3) : .clear, radius: isTapped || isHovered ? 7 : 0, x: 0, y: 7) // Sombra
        .animation(.easeInOut(duration: isTapped ? 0.6 : 0.3), value: isTapped)
        .animation(.easeInOut(duration: 0.3), value: isHovered)
        .onTapGesture {
            self.isTapped.toggle() // Alterna o destaque ao toque
        }
        .onHover { hovering in
            self.isHovered = hovering // Para desktop
        }
    }
}

#Preview {
    ContentView()
}
