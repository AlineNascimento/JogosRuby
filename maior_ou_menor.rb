puts "Bem Vindo ao jogo de adivinhação"
puts "Qual é o seu nome? "

nome = gets 
puts
puts
puts
puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto de 0 a 200"
numero_secreto = 175
puts
puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
puts "\n\n"

puts "Tentativa 1"
puts "Entre com o numero"

chute = gets

puts "\n\n\n\n\n"

puts "Será que você acertou? Você chutou " + chute

#Acertou ???? Comentário u.u
#if numero_secreto == chute.to_i
#    puts "Acertou!"
#else
#    puts "Errou!"
#end
acerto = numero_secreto == chute.to_i
if acerto
    puts "Acertou!"
else
    if numero_secreto > chute.to_i
    puts "Errou! O número secreto é maior! "
    else
    puts "Errou! O número secreto é menor!"
    end
end

puts "Tentativa 2"
puts "Entre com o numero"

chute = gets

puts "\n\n\n\n\n"

puts "Será que você acertou? Você chutou " + chute

#Acertou ???? Comentário u.u
#if numero_secreto == chute.to_i
#    puts "Acertou!"
#else
#    puts "Errou!"
#end
acerto = numero_secreto == chute.to_i
if acerto
    puts "Acertou!"
else
    if numero_secreto > chute.to_i
    puts "Errou! O número secreto é maior! "
    else
    puts "Errou! O número secreto é menor!"
    end
end

puts "Tentativa 3"
puts "Entre com o numero"

chute = gets

puts "\n\n\n\n\n"

puts "Será que você acertou? Você chutou " + chute

#Acertou ???? Comentário u.u
#if numero_secreto == chute.to_i
#    puts "Acertou!"
#else
#    puts "Errou!"
#end
acerto = numero_secreto == chute.to_i
if acerto
    puts "Acertou!"
else
    if numero_secreto > chute.to_i
    puts "Errou! O número secreto é maior! "
    else
    puts "Errou! O número secreto é menor!"
    end
end