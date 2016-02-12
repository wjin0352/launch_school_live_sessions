class School
  def initialize
    @db = Hash.new
  end

  def empty?
    @db.empty?
  end

  def add(student, grade)
    # if @db[grade]
    #   @db[grade] << student
    # else
    #   @db[grade] = [student]
    # end

    @db[grade] = [] unless @db[grade]
    @db[grade] << student
  end

  def to_h
    @db
  end
end
