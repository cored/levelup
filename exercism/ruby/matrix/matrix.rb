=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def columns
    []
  end

  def rows
    parsed_matrix.map do |row|
      to_numbers(row)
    end
  end

  private

  attr_reader :matrix

  def parsed_matrix
    matrix.split(/\n/)
  end

  def to_numbers(row)
    row.split(/\s/).map(&:to_i)
  end
end
