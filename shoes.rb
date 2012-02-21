# Start of file	
Shoes.app :title => ":: Hamlet - Address Book v0.1 :: ", :width => 800, :height => 600, :resizable => false do
background 'F4F4F4'
#background 'wood.png' # Change me at some point

# Files and arrays
@file = File.open '/Users/josh/Desktop/db.txt', 'rb'
auth_file = File.open '/Users/josh/Dropbox/ReWrittenBlondie/auth.txt', 'r'
array_of_keys = ["1234", "5678", "9101"]
	
# unless the auth_file includes the
# relevant codes
unless auth_file.include? "0"
	verify_code = ask("What's the code?")
		# ask what the code is
	  if array_of_keys.include? verify_code
		 # auth_file.set_authenticated
				alert "Thanks for buying it!"
			# if the verify_code is the same as one in the array
					# alert this
			else 
					alert "Sorry, wrong code. Try opening it up again and re-entering it. If that doesn't work, send Josh a message!"
					exit()
			end
	end

### Start of buttons ###
	
flow :width => 800 do	
## Stack 1 ##
	
stack :height => 599, :width => 140 do
border red

	flow do # topButtonFlow
			button 'About' do 
				window :title => "About Page", :width => 500, :height => 470, :resizable => false do
					# set size of About window
					stack :width => 480 do
					# set size of stack (vertical)
					
					stack :height => 30 do
						caption "What is Hamlet?"
					end
				
					stack :height => 80 do	
						inscription INTRO	
					end 
					
					stack :height => 30 do
						caption "What works?"
					end
					
					stack :height => 50 do	
						inscription WHAT_WORKS	
					end 
					
					stack :height => 30 do
							caption "Yet to implement"
					end
						
					stack :height => 120, :scrollable => true do	
							inscription YET_TO_IMPLEMENT	
					end
						
					stack :height => 30 do
							caption "Why?"
					end
							
					stack :height => 100 do	
							inscription WHY
				end
			end
	 end		
end

		button 'Help' do 
			window :title => "New", :width => 500, :height => 500, :resizable => false do
				# set size of About window
				stack :width => 480 do
				# set size of stack (vertical)
				title "Help!"
					para "Lorem ipsum dolor sit amet.." 
				end # stack width
					stack :width => -50 do
					# this should make it go on the right
						para "This is on the right!"
					end # stack
				end # stack
			end
		end
	
flow :height => 600 do
	border red
	para "First"
	end
end


flow :height => 600, :width => 300 do
	border red
	para "Second"
	stack :height => 40 do
		border red
		para "Results"
	end
end

flow :height => 600, :width => 160 do
	border red
	para "Third"
	stack :height => 40 do
		border red
		para "Search term"
	end
end

stack :height => 600, :width => 200 do
border '889697'
background '8896A1'
	para "Search here.."
	stack :height => 530 do

search_box = edit_line :width => 187
	flow :height => 50 do
			button "Search"
			button "Clear"
		end
end	
							
							
stack :height => 40 do
		button "Add new" do

window :title => "Add New Number", :width => 300, :height => 130, :resizable => false do
flow :height => 30 do 
	caption "Insert details here"
end
	stack :width => 80 do
			inscription "Name:"
			inscription "Number:"
	end


stack :width => 200 do			
		new_name = edit_line # use me later
		new_number = edit_line # use me later
		new_line = "\n"
		dash = " - "
end
			
flow do
	button "OK"
	button "Cancel "
end
				end
			end	
	 end
end
		
end #main flow

### Methods ###
# Regexp for search
def search( file, query ) # need to define what the file is!
	file.rewind
		file.select {|line| line =~ /#{query}/i }.map {|match| match.chomp }
end

def display_all
	@file.each do |file|
		@output.clear
		@output.append do
			para file
		end
	end
end

# finish me
def set_authenticated
		open('/Users/josh/Dropbox/ReWrittenBlondie/auth.txt', 'a')	{ |f| f.puts "1"}
end


end
# locate auth_file -> if auth_file.includes? "1" set authenticated to true
#
#	
### Files ###


### Constants ###

#-- Blondie --
#-- What is Hamlet? --
#-- What works --
#-- What is to be implemented --
#-- Why? --

INTRO = "This is the README file for the 'Hamlet Address Book' written by Josh Stevens.

By the way: the GUI hasn't been finished yet, in fact; I haven't started on the design of it yet!" 

WHAT_IS_DESCRIPTION = "* Simple application that takes input from a database (textfile) and matches strings of characters on input.
"

WHAT_WORKS = "* GUI
* The code runs!"

YET_TO_IMPLEMENT = "* A proper search function
* Ability to add names and numbers to the database
* Additional windows for help documentation
* Ability to send bug reports to Josh
* Licensing codes (just for fun!)
* This in YAML form!"

WHY = "This was originally a project developed by myself to learn how to code with Ruby and the Shoes GUI toolkit. This is a rewrite from scratch just to learn more about coding with Ruby. This is the first time I've uploaded it to Github, and the code available here will change overtime. 

The original GitGist can be found here - https://gist.github.com/1418007

(The above is awfully coded, just a learning process!)"

	