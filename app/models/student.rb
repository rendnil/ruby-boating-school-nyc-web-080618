class Student

  attr_reader :first_name


  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end



  @@all = [ ]

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    new_test = BoatingTest.new(test_name, status, self, instructor)
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end      














end #end Student class
