# In the terminal use the following command line to install package (DEBBUG)
# gem install pry-byebug

require 'pry-byebug'

def fullname(first, last)
  first_name = first.capitalize
  binding.pry       # <-- this will make stop in this line and will open the shell in the terminal when running all this code
                    # In the shell, use this: [1] pry(main)> first_name
                                            # => "John"

                    # If I try to see what we have in the variable "last_name" <[2] pry(main)> last_name> it will return nill
                    # To debbug the next line we should use <[3] pry(main)> next> and them try to access the last_name
  last_name = last.capitalize

  return "#{first_name} #{last_name}"
end

puts fullname("john", "lennon")
