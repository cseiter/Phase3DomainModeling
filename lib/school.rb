# code here!
#sorting answer assistance
#https://stackoverflow.com/questions/4924633/sort-items-in-a-nested-hash-by-their-values

class School

    attr_accessor :name,:roster

    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(student_name,grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade_num)
        @roster[grade_num]
    end

    def sort
        sorted = {}
        @roster.each {|grade,students| sorted[grade] = students.sort}
        sorted
    
    end

end