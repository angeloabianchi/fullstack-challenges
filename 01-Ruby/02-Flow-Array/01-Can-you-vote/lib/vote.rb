def allowed_to_vote?(age)
  # TODO: return (not print!) a boolean stating whether `age` is old enough to vote
  # NOTE: Use an if/else statment
  return age.to_i < 18 ? false : true

end

allowed_to_vote?(13)
