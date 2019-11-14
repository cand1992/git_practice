require 'colorize'
require_relative 'git.rb'

class Main

  def self.menu
    puts '1: Enter git command'.colorize(:magenta)
    puts '2: Exit'.colorize(:yellow)
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'.colorize(:green)
      Git.puts_git(gets.strip)
      Main.menu
    when 2
      exit
    else
      puts 'Invalid choice'
      Main.menu
    end
  end

end
Main.menu
