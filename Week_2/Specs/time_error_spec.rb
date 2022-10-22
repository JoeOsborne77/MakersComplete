require_relative "../lib/timeerror.rb"

RSpec.describe TimeError do
  it "returns difference between remote clock and local clock" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"2a01:70:f00:1:88c0:dc1f:4966:e5d9","datetime":"2022-09-22T14:11:24.581293+01:00","day_of_week":4,"day_of_year":265,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1663852284,"utc_datetime":"2022-09-22T13:11:24.581293+00:00","utc_offset":"+01:00","week_number":38}')
    time_error = TimeError.new(fake_requester)
    time = Time.new(2022, 9, 22, 14, 11, 24)
    expect(time_error.error(time)).to eq 0.581293
  end
end