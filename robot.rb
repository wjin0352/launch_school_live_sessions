class Robot
  attr_reader :name

  def initialize
    random_name
  end

  def reset
    random_name
  end

  private

  def random_name
    @name = ''
    @name << ('a'..'z').to_a.sample
    @name << ('a'..'z').to_a.sample
    @name << (0..9).to_a.sample.to_s
    @name << (0..9).to_a.sample.to_s
    @name << (0..9).to_a.sample.to_s
  end

end
