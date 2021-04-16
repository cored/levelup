module RankTeamByVotes
  extend self

  def call(votes)
    positions = votes.first.size
    ranks = votes.each_with_index.each_with_object({}) do |(vote, idx), ranks|
      0.upto(positions-1) do |position|
        team = vote[position]
        ranks[team] ||= Array.new(positions, 0)
        ranks[team][position] += 1
      end
    end

    ranks.keys.sort do |a, b|
      votes_team_a = ranks[a]
      votes_team_b = ranks[b]

      order = nil
      0.upto(positions) do |pos|
        if votes_team_a[pos] != votes_team_b[pos]
          order = votes_team_b[pos] - votes_team_a[pos]
          break
        end
      end

      order.nil? ? a<=>b : order

    end.join
  end
end

RSpec.describe RankTeamByVotes do
  let(:cases) do
    {
      ["ABC","ACB","ABC","ACB","ACB"] => "ACB",
      ["WXYZ","XYZW"] => "XWYZ",
      ["BCA","CAB","CBA","ABC","ACB","BAC"] => "ABC"
    }
  end

  it "return the ranks for a group of teams" do
    cases.each_pair do |input, expectation|
      expect(RankTeamByVotes.(input)).to eql expectation
    end
  end
end
