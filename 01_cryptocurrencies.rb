# Crée un hash avec les devises et leurs montants
crypto_hash = {
  "Bitcoin" => 6558.07,
  "Ethereum" => 468.95,
  "XRP" => 0.487526,
  # Ajoutez d'autres devises avec leurs montants ici
}

# Affiche la ou les cryptos qui ont la plus grosse valeur
max_value = crypto_hash.values.max
max_cryptos = crypto_hash.select { |crypto, value| value == max_value }
puts "La ou les cryptos qui ont la plus grosse valeur : #{max_cryptos.keys.join(', ')}"

# Affiche la ou les cryptos qui ont la plus petite valeur
min_value = crypto_hash.values.min
min_cryptos = crypto_hash.select { |crypto, value| value == min_value }
puts "La ou les cryptos qui ont la plus petite valeur : #{min_cryptos.keys.join(', ')}"

# Compte le nombre de crypto contenant le mot "coin"
coin_cryptos = crypto_hash.keys.count { |crypto| crypto.downcase.include?("coin") }
puts "Le nombre de crypto contenant le mot 'coin' : #{coin_cryptos}"

# Affiche les devises dont le cours est inférieur à 6000
below_6000_cryptos = crypto_hash.select { |crypto, value| value < 6000 }
puts "Les devises dont le cours est inférieur à 6000 : #{below_6000_cryptos.keys.join(', ')}"

# Trouve la devise la plus chère parmi celles dont le cours est inférieur à 6000
max_below_6000 = below_6000_cryptos.values.max
expensive_below_6000 = below_6000_cryptos.select { |crypto, value| value == max_below_6000 }
puts "La devise la plus chère parmi celles dont le cours est inférieur à 6000 : #{expensive_below_6000.keys.join(', ')}"
# Création d'un tableau associatif des cryptomonnaies et de leurs valeurs
crypto_prices = {
  "Bitcoin" => 6558.07,
  "Ethereum" => 468.95,
  "XRP" => 0.487526,
  # Ajoutez d'autres cryptomonnaies ici
}

# Trouver la ou les cryptos qui ont la plus grosse valeur
max_price = crypto_prices.values.max
top_cryptos = crypto_prices.select { |crypto, price| price == max_price }.keys

puts "Cryptos avec la plus grosse valeur : #{top_cryptos.join(', ')} (#{max_price})"

# Trouver la ou les cryptos qui ont la plus petite valeur
min_price = crypto_prices.values.min
bottom_cryptos = crypto_prices.select { |crypto, price| price == min_price }.keys

puts "Cryptos avec la plus petite valeur : #{bottom_cryptos.join(', ')} (#{min_price})"

# Compter le nombre de cryptos contenant le mot "coin"
coin_cryptos = crypto_prices.keys.select { |crypto| crypto.downcase.include?("coin") }

puts "Nombre de cryptos contenant le mot 'coin' : #{coin_cryptos.count}"

# Trouver les devises dont le cours est inférieur à 6000
cheap_cryptos = crypto_prices.select { |crypto, price| price < 6000 }

puts "Devises dont le cours est inférieur à 6000 :"
cheap_cryptos.each { |crypto, price| puts "#{crypto}: #{price}" }

# Trouver la devise la plus chère parmi celles dont le cours est inférieur à 6000
most_expensive_cheap_crypto = cheap_cryptos.max_by { |crypto, price| price }

puts "Devise la plus chère parmi celles dont le cours est inférieur à 6000 : #{most_expensive_cheap_crypto[0]} (#{most_expensive_cheap_crypto[1]})"
