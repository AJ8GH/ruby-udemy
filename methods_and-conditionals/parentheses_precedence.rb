def authenticate(rank, name, credentials)
  if (rank == '007' && name == 'James Bond') || credentials == 'Secret Agent'
    puts "Access granted #{name}, please proceed to intelligence department!"
  else
    puts "Access denied, #{name}."
  end
end

authenticate('007', 'James Bond', 'Spy')
authenticate('007', 'Jim Bond', 'Spy')
authenticate('007', 'Jim Bond', 'Secret Agent')
