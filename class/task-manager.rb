class Task
	def initialize (name, priority)
		@name = name
		@priority = priority
	end

	def print
		puts "name: #{@name}"
		puts "priority :#{@priority}"

	end
end

def start ()
	quit = false
	tasklist =[]
	until (quit)

		puts "Welcome \n choose below"
		puts "1 add task"
		puts "2 show task"
		puts "3 remove task"
		puts "4 get total number of tasks"
		puts "5 show all tasks"
		puts "6 quit"

		option_select = gets.chomp.to_i

		if (option_select == 1)
				tasklist = addClass (tasklist)
		elsif (option_select == 2)
				showTask(tasklist)
		elsif  (option_select == 3)
			puts "remove"
		elsif  (option_select == 4)
			puts "get total"
		elsif (option_select == 5)
			puts "show all"
		elsif  (option_select == 6)
			quit = true
			puts "quit"
		else
			puts "invalid, try again"
		end
	end
end

	def addClass (tasklist)
		puts "What should the name be?"
		name = gets.chomp

		puts "what should the priority be"
		priority = gets.chomp.to_i

		if(priority <= 10 && priority >= 0)
			task=Task.new(name, priority)
			tasklist.push(task)
			return tasklist
		else
			puts "priority must be between 0 and 10"
		end
				Task.new(name, priority)
	end

	def showTask (tasklist)
		puts "which task do you want me to see"
		index = gets.chomp.to_i
		tasklist[index].print
	end

start