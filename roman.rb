class Fixnum
  def to_roman
    "#{thousands}#{five_hundreds}#{hundreds}#{fiftys}#{tens}#{fives}#{ones}"
  end

  private
    def thousands
      result = ""
      (self / 1000).times{result << "M"}
      result
    end

    def five_hundreds
      result = ""
      remainder = self % 1000
      return "CM" if remainder >= 900
      return "D" if remainder >= 500
    end

    def hundreds
    end

    def fiftys
    end

    def tens

    end

    def fives
      remainder = self % 10
      return "IX" if remainder == 9
      return "V" if remainder == 5
      if remainder > 5
        result = "V"
        (remainder - 5).times { result << "I" }
      end
        result
    end

    def ones
      remainder = self % 10
      return "" if remainder > 4
      return "IV" if remainder == 4
      result = ""
      self.times { result << "I" }
      result
    end
end
