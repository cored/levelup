module ValidIp
  extend self

  def call(ip)
    if ip.include? ":"
      ip_numbers = ip.split(/:/).map(&:downcase).select { |n| n.size == 4 || n == "0" }

      return "Ipv6" if ip_numbers.size == 8 && !ip.end_with?(":")
    else
      ip_numbers = ip.split(/\./)

      return "Ipv4" if ip_numbers.size == 4 &&
        ip_numbers.all? { |num| num.to_i <= 255 } &&
        ip_numbers.all? do |num|
          num ~ /\d+/
        end
    end
    "Neither"
  end
end

describe ValidIp do
  it "validates an ipv4 ip address" do
    # expect(ValidIp.call("0.0.0.0")).to eql "Ipv4"
    # expect(ValidIp.call("127.0.0.1")).to eql "Ipv4"
    # expect(ValidIp.call("127.0.0")).to eql "Neither"
    # expect(ValidIp.call("127.0.280.256")).to eql "Neither"
    # expect(ValidIp.call("172.16.254.1")).to eql "Ipv4"
    # expect(ValidIp.call("1e1.4.5.6")).to eql "Neither"
    expect(ValidIp.call("172.16.254.1")).to eql "Ipv4"
  end

  it "validates ipv6 ip addresses" do
    expect(ValidIp.call("2001:0db8:85a3:0000:0000:8a2e:0370")).to eql "Neither"
    expect(ValidIp.call("2001:0db8:85a3:0000:0000:8a2e:0370:7334")).to eql "Ipv6"
    expect(ValidIp.call("2001:0db8:85a3::8A2E:0370:7334")).to eql "Neither"
    expect(ValidIp.call("02001:0db8:85a3:0000:0000:8a2e:0370:7334")).to eql "Neither"
    expect(ValidIp.call("2001:0db8:85a3:0:0:8A2E:0370:7334:")).to eql "Neither"
  end
end
