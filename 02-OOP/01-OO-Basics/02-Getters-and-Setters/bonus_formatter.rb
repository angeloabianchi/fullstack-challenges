RSpec::Support.require_rspec_core 'formatters/base_text_formatter'

class BonusFormatter < RSpec::Core::Formatters::DocumentationFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(notification)
    output.puts BONUS if notification.failure_count.zero?
    super(notification)
  end
end

BONUS = "

 ____________________________________________
|############################################|
|#|                           |##############|
|#|  =====  ..--''`  |~~``|   |##|````````|##|
|#|  |   |  \\     |  :    |   |##| Exact  |##|
|#|  |___|   /___ |  | ___|   |##| Change |##|
|#|  /=__\\  ./.__\\   |/,__\\   |##| Only   |##|
|#|  \\__//   \\__//    \\__//   |##|________|##|
|#|===========================|##############|
|#|```````````````````````````|##############|
|#| =.._      +++     //////  |##############|
|#| \\/  \\     | |     \\    \\  |#|`````````|##|
|#|  \\___\\    |_|     /___ /  |#| _______ |##|
|#|  / __\\\\  /|_|\\   // __\\   |#| |1|2|3| |##|
|#|  \\__//-  \\|_//   -\\__//   |#| |4|5|6| |##|
|#|===========================|#| |7|8|9| |##|
|#|```````````````````````````|#| ``````` |##|
|#| ..--    ______   .--._.   |#|[=======]|##|
|#| \\   \\   |    |   |    |   |#|  _   _  |##|
|#|  \\___\\  : ___:   | ___|   |#| ||| ( ) |##|
|#|  / __\\  |/ __\\   // __\\   |#| |||  `  |##|
|#|  \\__//   \\__//  /_\\__//   |#|  ~      |##|
|#|===========================|#|_________|##|
|#|```````````````````````````|##############|
|############################################|
|#|||||||||||||||||||||||||||||####```````###|
|#||||||||||||PUSH|||||||||||||####\\|||||/###|
|############################################|
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\///////////////////////
 |________________________________|____|___|

"
