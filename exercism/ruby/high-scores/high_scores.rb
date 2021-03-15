=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

require 'forwardable'
class HighScores

  class Score
    def self.for(scores)
      new(scores: scores.reject(&:zero?))
    end

    def initialize(scores:)
      @scores = scores
    end

    def latest
      scores.last
    end

    def personal_best
      sorted_scores.first
    end

    def personal_top_three
      sorted_scores.first(3)
    end

    def latest_is_personal_best?
      latest == personal_best
    end

    def to_a
      scores
    end

    private

    attr_reader :scores

    def sorted_scores
      @sorted_scores ||= scores.sort.reverse
    end

  end

  extend Forwardable
  def_delegators :@score,
    :latest, :personal_best, :personal_top_three, :latest_is_personal_best?
  def initialize(scores)
    @score = Score.for(scores)
  end

  def scores
    score.to_a
  end

  private

  attr_reader :score
end
