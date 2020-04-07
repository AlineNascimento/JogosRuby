

def conta(texto, letra)
    total_encontrado = 0
    for caractere in texto.chars
        if caractere == letra
            total_encontrado += 1
        end 
    end
    total_encontrado
end