def boas_vindas
    puts "Bem Vindo ao jogo de adivinhação. Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def pede_dificuldade
    puts "Qual o nível de dificuldade que deseja? (1 fácil, 5 difícil)"
    dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
    case dificuldade
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end
    puts "Escolhendo um número secreto de 1 a #{maximo}"
    sorteado = rand(maximo) + 1
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com o numero"
    chute = gets.strip
    puts "\n\n"
    puts "Será que você acertou? Você chutou #{chute}"
    chute.to_i
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

def joga(nome,dificuldade)
    numero_secreto = sorteia_numero_secreto dificuldade

    pontos_ate_agora = 1000
    limite_de_tentativas = 5
    chutes = []
    for tentativa in 1..limite_de_tentativas do
        chute = pede_um_numero chutes, tentativa, limite_de_tentativas
        #chutes[chutes.size] = chute
        chutes << chute

        pontos_a_perder = (chute - numero_secreto).abs/2.0
        unless pontos_a_perder > 0
            pontos_a_perder *= -1
        end
        pontos_ate_agora -= pontos_a_perder

        if verifica_se_acertou numero_secreto, chute
            break
        end
    end
    puts "Você ganhou #{pontos_ate_agora} pontos."
end

def quer_jogar
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    quero_jogar.upcase == "S"
end

nome = boas_vindas
dificuldade = pede_dificuldade

loop do 
    joga nome, dificuldade
    if !quer_jogar
        break
    end
end




