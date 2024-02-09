def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  return email.match?(/([a-zA-Z\d]\.?\_?){3,}\@[a-zA-Z]{3,}\.[a-zA-Z]{2,}/)
end

def clean_database(emails)
  # TODO: return an array with the valid emails only
  valid_emails = []
  emails.each do |email|
    if email.match?(/([a-zA-Z\d]\.?\_?){3,}\@[a-zA-Z]{3,}\.[a-zA-Z]{2,}/)
      valid_emails << email
    end
  end
  p valid_emails
  return valid_emails
end

def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  valid_emails = {
    "com" => [],
    "fr" => [],
    "de" => []
  }

  var = []

  emails.each_with_index do |email, index|
    var[index] = email.match(/(?<usuario>[a-zA-Z]+)\@(?<dominio>[a-zA-Z]+)\.(?<tld>[a-zA-Z]{2,3})/)
    if var[index][:tld] == "com"
      valid_emails["com"] << email
    elsif var[index][:tld] == "fr"
      valid_emails["fr"] << email
    else
      valid_emails["de"] << email
    end
  end

  return valid_emails
end

def compose_mail(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  email_composed = {}
  var = email.match(/(?<usuario>[a-zA-Z]+)\@(?<domain>[a-zA-Z]+)\.(?<tld>[a-zA-Z]{2,3})/)
  email_composed[:username] = var[:usuario].to_s
  email_composed[:domain] = var[:domain]
  email_composed[:tld] = var[:tld]

  return email_composed
end

def compose_translated_email(email)
  # TODO: return a Hash with username, domain and tld extracted from email
  # TODO: translate subject, body, closing and signature, according to TLD
  email_hash = compose_mail(email)
  p email_hash[:tld]
  if email_hash[:tld] == "fr"
    email_hash[:body] = "Venez nous rendre visite !"
    email_hash[:closing] = "A bientot"
    email_hash[:signature] = "L'équipe"
    email_hash[:subject] = "Notre site est en ligne"
  elsif email_hash[:tld] == "de"
    email_hash[:body] = "Komm und besuche uns!"
    email_hash[:closing] = "Bis bald"
    email_hash[:signature] = "Das Team"
    email_hash[:subject] = "Unsere Website ist jetzt online"
  else
    email_hash[:body] = "Come and visit us!"
    email_hash[:closing] = "See you soon"
    email_hash[:signature] = "The Team"
    email_hash[:subject] = "Our website is online"
  end

  return email_hash
end
