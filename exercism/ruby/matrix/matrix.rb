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
    [[1, 2]]
    matrix.split(/\n/).map do |row|
      row.scan(/\d/).map(&:to_i)
    end
  end

  private

  attr_reader :matrix

end
