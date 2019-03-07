songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I Accepts the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list
  songs.each { |e| puts "#{songs.index(e) + 1}. #{e}" }
end

def play
  puts "Please enter a song name or number:"
  choice = get.chomp
  songs.include?(choice) ? (puts "Playing #{choice}") : (puts "Invalid input, please try again")
end

def exit_jukebox
  puts "Goodbye"
end

def run(song)
  help
  while input == "exit" do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list
    when "play"
      play
    when "exit"
      exit_jukebox
    else
      puts "Sorry I did not understand that"
    end
  end
end
