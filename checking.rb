  require 'hpricot'
  require 'open-uri'

def file_exists(a)
  # method takes original file, a
  if File.exist?(a)
    # if the file a exists
    puts "Yes"
    # say yes
  else
    puts "No!"
    # if not, no and download it
  end 
  # end of if
end
# end of file_exists


def compare_file(a, b)
# Method compare_file takes 2 variables
    if File.size(a) == File.size(b)
      # if they both have the same filesize
      puts "They are the same size, nothing to do.."
      # output this
     else
       puts "It's out of date"
       download_file
       # if they don't..
    end
    # End of if
end 
# End of method

def download_file
  # Download file method
  location = Hpricot(open('https://dl.dropbox.com/u/238570/file2.txt'))
  # variable location uses Hpricot method to download file from Dropbox 
  puts "Downloading.."
  puts location
  replace_file(a)
  # output file
end
# end of download_file method

def overwrite_file
  # method of overwrite file
  puts "What is the name of the file?"
  file_to_overwrite = gets.chomp
  # take name of file from user input
    File.open('file_to_overwrite', 'w') do |overwrite|
      # open file, and iterate
      overwrite.puts(b)
      # overwrite the file
    end
end
    
    
    
    
    


# Variables defined here
  a = File.open('file1.txt', 'rb')
  b = File.open('file2.txt', 'rb')
overwrite_file



### Steps
#
# => Check for existance in directory
# => If it's not there, download with download_file
# => If it is there, check with compare_file(a, b)
#
###




### To write
#
# => It only checks size
# => Have it check metdata
#
#
###