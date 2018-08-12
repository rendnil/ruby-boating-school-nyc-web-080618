class Instructor

  attr_reader :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.pass_student(test_name, student_name)
    BoatingTest.all.each do |btest|
      if btest.test_name == test_name && btest.student.first_name == student_name
        btest.status = "passed"
      end

    end
    "passed"
  end

  def self.fail_student(test_name, student_name)
    BoatingTest.all.each do |btest|
      if btest.test_name == test_name && btest.student.first_name == student_name
        btest.status = "failed"
      end

    end
    "failed"
  end

  def self.student_grade_percentage(student_name)
    #get all tests for this student
    all_tests = BoatingTest.all.select do |bt|
      bt.student.first_name == student_name
    end

    #get only the passed tests
    passed_tests = all_tests.select do |bt|
      bt.status == "passed"
    end

    if passed_tests.size == 0
      "#{student_name} has not passed any"
    else
      percentage = passed_tests.size.to_f/all_tests.size
      "Percentage passed for #{student_name} is #{percentage * 100}%"
    end
  end




end #end instructor class
