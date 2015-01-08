class CodeGenerator

  attr_reader :colors, :secret_code

  def initialize
    @colors_arr = ["r", "g", "b", "y"]
    @secret_arr = []
  end

  def generate
    4.times do
      @secret_arr << @colors_arr.sample
    end
    secret_code = @secret_arr.join

    # puts secret_code                # un-comment & run file to test

    secret_code = 'rrrr'  # hard-coded secret for testing

  end
end


# code_generator = CodeGenerator.new  # un-comment & run file to test
# code_generator.generate             # un-comment & run file to test
