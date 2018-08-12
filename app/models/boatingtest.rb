class BoatingTest

  attr_accessor :status
  attr_reader :test_name, :student, :instructor



  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(test_name, status, student, instructor)
    @test_name = test_name
    @status = status
    @student = student
    @instructor = instructor
    @@all << self
  end






end #end boatingtest class
