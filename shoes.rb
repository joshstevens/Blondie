# Start of file	
Shoes.app :title => "Address Book", :width => 800, :height => 600, :resizable => false do

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
				window :title => "New", :width => 500, :height => 500, :color => ghostwhite, :resizable => false do
					# set size of About window
					stack :width => 480 do
					# set size of stack (vertical)
					title "About!"
						para "Lorem ipsum dolor sit amet.." 
				end # stack width
					stack :width => -50 do
					# this should make it go on the right
						para "This is on the right!"
				end # stack
			end # stack
		end		
		
		button 'Help' do 
			window :title => "New", :width => 500, :height => 500, :color => ghostwhite, :resizable => false do
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
	border red
		para "Search here.."
			stack :height => 530 do
				border red
				search_box = edit_line :width => 187
				flow :height => 50 do
					button "Search"
					button "Clear"
				end
			end	
	
	
stack :height => 40 do
	border red
	button "Add new" do
		alert "Add something here.."
	end	
end
end
		
end #main flow

		
### End of Buttons ###

### Start of main content ### 

#stack :width => -150, :height => 400, :scroll => true do
#	para "" # probably shouldn't be para's
#	para ""
#	
#	para "Lorem ipsum dolor sit amet, consectetur adipiscing elit.."
#		flow do
#				input = edit_line
#				
#				
#button "Search" do
#	matches = search( @file, input.text )
#		@output.clear
#		@output.append do
#			matches.empty? 
#				para( NOTHING_FOUND, :font => "Gill Sans MT", :stroke => '#ffffff', :size => 10 ) :  
#				para( SCROLL, :font => "Gill Sans MT",  :stroke => '#ffffff', :size => 10 )
#end
#		matches.each do |match|
#		@output.append { para match, SPACE, :font => "Gill Sans MT",  :stroke => '#ffffff', :size => 10 }
#	end
#end
#		@output = stack( )

#end # edit_line 
	

#end # stack

### End of main content ###
 # Shoes.app
### End of app ###



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


	