def pick_bank_score
  # TODO: Use Random to get a new random score
  prng = Random.new
  return prng.rand(16..21)
end

def pick_player_card
  # TODO: Use Random to get a new random card
  prng = Random.new
  return prng.rand(1..11)
end

pick_bank_score
pick_player_card
