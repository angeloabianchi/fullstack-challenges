def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number.match?(/(0[1-9][-\s]?\d{2}([-\s]?\d{2}){3})|\+33[-\s]?\d{1}[-\s]?([-\s]?\d{2}){4}/)
end
