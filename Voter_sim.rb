class Everything
  # attr_accessor :voter, :politician

  def initialize
    @voters = []
    @politician = []
  end
  def menu
    puts"Welcome to the Voter Simulation\n"
    puts"What would you like to do?\n(C)reate, (L)ist, (U)pdate, or (D)elete."

    option = gets.chomp.capitalize
    case option
    when"C"
      create
    when"L"
      list
      p @politician
      p @voters
    when"U"
      update
    when"D"
      delete
    else
      menu
    end
  end
end


def create
  puts"What would you like to create?\n(P)olitician or (V)oter"
  option2 = gets.chomp.capitalize
  case option2
  when"P"
    politician
  when"V"
    voter
  else
    create
  end
end

def politician
  puts "Enter name:\n"
  politician_name = gets.chomp.capitalize
  puts"Enter Party: Democrat or Republican?\n"
  party_name = gets.chomp.capitalize
  puts"#{politician_name} has been entered as a #{party_name}.\n"
  candidate = Politician.new(politician_name, party_name)
  @politician << candidate.politician_name << candidate.party_name
  p @politician

  p""

  menu


end

def voter
  puts"Enter name:\n"
  voter_name = gets.chomp.capitalize
  puts"Enter affiltion: Liberal, Conservative, Tea Party, Socialist, or Neutral\n"
  affiliation = gets.chomp.capitalize
  #  citizen = Voters.new(voter_name, affiliation)
  #  @voters << citizen.voter_name << citizen.affiliation

  case affiliation
  when "Liberal"
    puts "#{voter_name} has been entered with a Liberal affiliation.\n"
    citizen = Voters.new(voter_name, affiliation)
    @voters << citizen.voter_name << citizen.affiliation
    p @voters

    p""

    menu
  when "Conservative"
    puts "#{voter_name} has been entered with a Conservative affiliation.\n"
    citizen = Voters.new(voter_name, affiliation)
    @voters << citizen.voter_name << citizen.affiliation
    p @voters

    p""

    menu
  when "Tea Party"
    puts "#{voter_name} has been entered with a Tea Party affiliation.\n"
    citizen = Voters.new(voter_name, affiliation)
    @voters << citizen.voter_name << citizen.affiliation
    p @voters

    p""

    menu
  when "Socialist"
    puts "#{voter_name} has been entered with a socialist affiliation.\n"
    citizen = Voters.new(voter_name, affiliation)
    @voters << citizen.voter_name << citizen.affiliation
    p @voters

    p""

    menu
  when "Neutral"
    puts "#{voter_name} has been entered with a #{affiliation} affiliation\n"
    citizen = Voters.new(voter_name, affiliation)
    @voters << citizen.voter_name << citizen.affiliation
    p @voters

    p""

    menu

  end
end

def list
  puts "list:\n"
  puts "Cadidate/Politcal Party\n\n"
  p @politician
  puts "Voter/Political Affiliation\n\n"
  p @voters
  menu
end


def update
  puts"Who would you like to update?\n(P)olitician or (V)oter?\n"
  update_choice = gets.chomp.capitalize
  if update_choice == "P"
    puts "Enter (N)ame or (P)arty?\n"
    update_answer = gets.chomp.capitalize
    if update_answer == "N"
      puts"Who would you like to update?\n"
      politician_name = gets.chomp.capitalize
      puts "Change name to:\n"
      new_name = gets.chomp.capitalize
      if @politician.include?(politician_name)
         @politician.delete(politician_name)
         @politician << new_name
         menu
      end
    elsif update_answer =="P"
      puts"Enter name of politician.\n"
      politician_name = gets.chomp.capitalize
      # puts"What political party do you want to switch to?"
      # new_party = gets.chomp.capitalize
      if @politician.include?(politician_name)
        puts"What political party is #{politician_name} currently listed as?\n"
        party_name = gets.chomp.capitalize
        puts"What political party do you want to switch to?\n"
        new_party = gets.chomp.capitalize
        @politician.delete(party_name)
        @politician << new_party
        menu
      end
    end
   elsif update_choice == "V"
     puts"Enter name of voter.\n"
     voter_name = gets.chomp.capitalize
     if @voters.include?(voter_name)
      puts"What political party is #{voter_name} affiliated with:\nLiberal\nConservative\nTea Party\nSocialist\nNeutral\n"
      affiliation = gets.chomp.capitalize
      puts"What political affiliation would you like to switch #{voter_name} to?\nLiberal\nConservative\nTea Party\nSocialist\nNeutral\n"
      new_affiliation = gets.chomp.capitalize
      @voters.delete(affiliation)
      @voters << new_affiliation
      puts"#{voter_name} is now listed under the #{new_affiliation} affiltion.\n"
      menu
     end
   end
end

def delete
  puts"Delete a (P)olitician or (V)oter?\n"
  delete_option = gets.chomp.capitalize
  if delete_option =="P"
    puts"Which politician do you want to delete?\n"
    politician_name = gets.chomp.capitalize
    puts"Which party does #{politician_name} belong to?\nDemocrat or Republican?"
    party_name = gets.chomp.capitalize
    if @politician.include?(politician_name)
      puts"Are you sure you want to delete #{politician_name}?\n(Y)es or (N)o"
      politician_validation = gets.chomp.capitalize
      if politician_validation =="Y"
        @politician.delete(politician_name)
        @politician.delete(party_name)
        menu
      elsif politician_validation=="N"
        menu
      end
    end
  elsif delete_option =="V"
    puts"Which voter would you like to delete?\n"
    voter_name = gets.chomp.capitalize
    puts"What political affiliations does #{voter_name} associate with?:\nLiberal\nConservative\nTea Party\nSocialist\nNeutral\n"

    affiliation = gets.chomp.capitalize
    if @voters.include?(voter_name)
      puts "Are you sure you want to delete #{voter_name}?\n(Y)es or (N)o"
      voter_validation = gets.chomp.capitalize
      if voter_validation =="Y"
        @voters.delete(voter_name)
        @voters.delete(affiliation)
        menu
      elsif voter_validation=="N"
        menu
      end
    end
  end
end

class Politician < Everything
  attr_accessor :politician_name, :party_name
  def initialize(politician_name, party_name)
    @politician_name = politician_name
    @party_name = party_name
  end
end

class Voters < Everything
  attr_accessor :voter_name, :affiliation
  def initialize(voter_name, affiliation)
    @voter_name = voter_name
    @affiliation = affiliation
  end
end


voting_sync = Everything.new
voting_sync.menu
