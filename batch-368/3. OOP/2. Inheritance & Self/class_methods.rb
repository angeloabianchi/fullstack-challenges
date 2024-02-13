# *class* method sao coisas gerais, ou seja, coisas que nao dependem de uma instancia. Ex: Quais sao todas as categorias de restaurante existentes?
Time.now            # => *class* method

require 'json'

JSON.parse('{}')    # => *class* method

require_relative 'restaurant'

vintao = Restaurant.new("Vintao", "Sao Paulo", 60, "brasileiro")

puts vintao.name    # => instance method
