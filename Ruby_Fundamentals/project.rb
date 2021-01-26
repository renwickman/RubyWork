class Project
    @@no_of_projects = 0
    attr_accessor :name, :desc
  def initialize(name, desc)
      @name = name
      @desc = desc
      @@no_of_projects += 1
      puts "Created project #{@@no_of_projects}"
  end
  def elevator_pitch
      puts "Project Name: #{@name}"
      puts "Project Description: #{@desc}"
  end
end
  
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
  

  