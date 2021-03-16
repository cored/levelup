=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end
class Matrix
  def initialize(matrix)
    @matrix = matrix.split(/\n/).map do |row|
      row.split(/\s/).map(&:to_i)
    end
  end

  def columns
    matrix.map { |row| row.map { |col| col } }
  end

  def rows
    matrix.map { |row| row }
  end

  private

  attr_reader :matrix

end
