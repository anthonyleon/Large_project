
def ask_question(question,option)
  puts question
  puts "Your options are #{option}"
  gets.chomp.capitalize.strip
end



puts"

+    +++++'    '
`..       .,.      .```     ;.,:;;,.`   `.,,:;:.`    `.,.``..,  `..:   ,.,,
+''.     '''+     ,+'',     ;'''''''':  ,''''''''+  `+''''''':  +'';   ''',
.+++'    ,+++;     '+++;     '+++++++++  ;+++++++++  ,++++++++, .++++   '++`
;++++    '+++:    `+++++     +++::,'++;  '++:;,'++#  ;++;;';;', ;++++`  +++
;+++#`  ;++++.    +++++#    `++#   '++.  +++   ,++'  '++.       '++++'  #+#
+++++.  #+++#`   :++'#+#    :++#   #++`  #+#   '++:  #++`       +++++# ,++#
#####; '#####    +##`+##    '##'   ###  .###   ###.  ###@####   ######.;##:
`#####+,##'##+   ;### +##    +##;  .##@  ;##+   @##  .#######@  `##@+###+##`
`##+##@##@'##,   ###` +##.   ###`  '##+  +##:  .##@  '#######@  ,##+.######`
:##:+####.+##.  :###@@@##;   @#@   +##:  ###.  '###  +##;       '##, @####@
+##`'###@ @#@`  @#########  .##@   @##:  @#@   '##'  ###,       ###` :####@
@#@ .@#@  @#@  ;##@@@@@##@  ;##+  ,@#@` .@#@  `###:  @#@     .  @#@`  @###+
`@@@  ''; .@@#  @@@.   `@@@  +@@@@@@@@@  ;@@@@@@@@@` `@@@@@@@@: `@@@   #@@#;
:@@#      '@@; +@@#     @@@  @@@@@@@@@`  '@@@@@@@@:  ;@@@@@@@@. ,@@#   :@@@.
'++,      ;'+. +#+      #+#` #+++++''`   #+++++'+,   +#++++++#` +++,    #++
,+##`  :##'`
'+#:
:
"




puts "
Welcome to Super Bowl XLIX.  Seahawks are on the 1 yard line, down by 4, with 33 seconds left on the clock.
"

puts "
As Russel Wilson approaches the huddle, you take over his brain.
"
puts "What will you do?"

puts "
Options:

A)Throw the ball.
B)Hand the ball off.
C)Run the ball yourself."

option = gets.chomp.upcase

until option == "A" || option =="B" || option =="C"
  puts"You have to:
A)Throw the ball.
B)Hand the ball off.
C)Run the ball yourself."
option = gets.chomp.upcase
end

case option.upcase
when "A"
  puts"
Throw to
A) Receiver 1
B) Receiver 2"
route = gets.chomp.upcase

until route == "A" || route =="B"
  puts "
Choose either
A) Receiver 1
B) Receiver 2"
route = gets.chomp.upcase
end

case route.upcase
when "A"
  puts '
  _____ ___  _   _  ____ _   _ ____   _____        ___   _ _
  |_   _/ _ \| | | |/ ___| | | |  _ \ / _ \ \      / / \ | | |
    | || | | | | | | |   | |_| | | | | | | \ \ /\ / /|  \| | |
    | || |_| | |_| | |___|  _  | |_| | |_| |\ V  V / | |\  |_|
    |_| \___/ \___/ \____|_| |_|____/ \___/  \_/\_/  |_| \_(_)
    '
when "B"
  puts "
INTERCEPTION!  YOU LOSE!"
else
  puts "You've been sacked"

end

when "B"
  puts'
  _____ ___  _   _  ____ _   _ ____   _____        ___   _ _
  |_   _/ _ \| | | |/ ___| | | |  _ \ / _ \ \      / / \ | | |
    | || | | | | | | |   | |_| | | | | | | \ \ /\ / /|  \| | |
    | || |_| | |_| | |___|  _  | |_| | |_| |\ V  V / | |\  |_|
    |_| \___/ \___/ \____|_| |_|____/ \___/  \_/\_/  |_| \_(_)
  '
  puts"

Plan your trip to Disney World! You just won the superbowl!"

when "C"
  puts "
A)Left
B)Right"
direction = gets.chomp.upcase

until direction == "A" || direction == "B"
  puts"
You need to either run:
A)left
or
B)right!"
direction =gets.chomp.upcase
end

case direction.upcase
when "A"
  puts "
FUMBLE! YOU LOSE!"
when "B"
  puts '
  _____ ___  _   _  ____ _   _ ____   _____        ___   _ _
  |_   _/ _ \| | | |/ ___| | | |  _ \ / _ \ \      / / \ | | |
    | || | | | | | | |   | |_| | | | | | | \ \ /\ / /|  \| | |
    | || |_| | |_| | |___|  _  | |_| | |_| |\ V  V / | |\  |_|
    |_| \___/ \___/ \____|_| |_|____/ \___/  \_/\_/  |_| \_(_)
  '

else
  puts "
Play clock has run down to ZERO.  YOU LOSE"

end
end
