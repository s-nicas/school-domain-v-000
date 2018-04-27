
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student (name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end 
  
  def grade(grade)
     roster[grade]
   end 
  
  # def sort
  #   roster.transform_values! do |grade_array|
  #     grade_array.sort 
  #   end 
  # end
  
    def sort(roster)
   roster.each do |number, student_array|
        roster[number] = student_array.sort 
    end 
    
  end 
  
end 
