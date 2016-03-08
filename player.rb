class Player

	 attr_accessor :objectblood, :manna, :name, :status, :target
	

         def initialize
         	@objectblood = 100 
         	@manna = 400
         end

         def get_name
        	@name
		 end

		 def get_manna
        	@manna
		 end

		 def get_objectblood
		 	@objectblood
		 end

		 def set_name name
		 	@name = name
		 end


         def get_target
        	@target
		 end
		 
		team = Array.new
		
		
		
		puts "# ============================== #
				# Welcome to the Battle Arena #
				# ------------------------------------------------- ---- #
				# Description: #
				# 1 type new to create a character #
				# 2. type start to begin the fight #
				# ------------------------------------------------- ---- #
				# Current Player: #{team.length}#
				# - #
				# * Max player 2 or 3 #
				# ------------------------------------------------- ---- #
				"
		status = "new"
		if status.eql?"new"

			while team.length < 2
			 	
			  
			puts "Put Player names #{team.length+1}"

			player  = Player.new
         	player.name = gets
         	team << player

			end
			puts "# ============================== #
				# Welcome to the Battle Arena #
				# ------------------------------------------------- ---- #
				# Description: #
				# 1 type new to create a character #
				# 2. type start to begin the fight #
				# ------------------------------------------------- ---- #
				# Current Player: #{team.length}#
				# - #{team[0].get_name}: manna = #{team[0].get_manna}, blood = #{team[0].get_objectblood}
				# - #{team[1].get_name}: manna = #{team[1].get_manna}, blood = #{team[1].get_objectblood}
				# * Max player 2 or 3 #
				# ------------------------------------------------- ---- #
				"
		end
		puts "#{team[0].get_objectblood}"
		status = "start"
		if status.eql?"start"
			while team[0].get_objectblood > 0 && team[1].get_objectblood > 0
				
			
			puts "# ============================== #
			# Welcome to the Battle Arena #
			# ------------------------------------------------- ---- #
			Battle Start:
			who will attack:" 
			name = gets
			puts "
			who attacked   :" 
			target = gets
			puts"
			when pressing enter out the results:
			# ============================== #"
			if name.eql?team[0].get_name
				team[0].manna -= 20
				team[1].objectblood -= 20
			elsif name.eql?team[1].get_name
				team[1].manna -= 20
				team[0].objectblood -= 20
			end

			puts"Description:
			#{team[0].get_name}: manna = #{team[0].get_manna}, blood = #{team[0].get_objectblood}
			#{team[1].get_name}: manna = #{team[1].get_manna}, blood = #{team[1].get_objectblood}"
			end

			puts"Game Over"
		end
		

         
end