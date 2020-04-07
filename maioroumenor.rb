def boas_vindas
    puts "Bem Vindo ao jogo de adivinhação. Qual é o seu nome?"
    nome = gets 
    puts "\n\n"
    puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "Escolhendo um número secreto de 0 a 200"
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
end

def pede_um_numero(tentativa, limite_de_tentativas)
    puts "tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets
    puts "\n\n"
    puts "Será que você acertou? Você chutou " + chute
    chute
end

def verifica_se_acertou(sorteado,numero)
    acerto = sorteado == numero.to_i
        if acerto
            puts "Acertou!"
        return true
        end
            if sorteado > numero.to_i
                puts "Errou! O número secreto é maior! "
            else
                puts "Errou! O número secreto é menor!"
            end
        false  
end

boas_vindas
numero_secreto = sorteia_numero_secreto
limite_de_tentativas = 5
    for tentativa in 1..limite_de_tentativas do
        chute = pede_um_numero tentativa, limite_de_tentativas
        puts "\n\n"
        puts "Será que você acertou? Você chutou " + chute.to_s
        if verifica_se_acertou numero_secreto, chute
            break
        end
    end



