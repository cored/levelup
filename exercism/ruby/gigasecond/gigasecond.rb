module Gigasecond
  extend self

  GIGASECOND = 10**9
  def from(time)
    Time.at(time.to_i + GIGASECOND).utc
  end
end
