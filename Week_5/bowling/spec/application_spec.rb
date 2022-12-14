require 'game'
require 'frame'

describe Game do
  context 'frame 1' do
    it 'stores frames' do
      game = Game.new
      expect(game.frame).to eq nil 
    end
  end
end


# describe Frames do
#   context 'frame 1' do
#     it 'initializes' do
#       frames = Frames.new
#       frames.play
#       expect(@score).to eq(7)
#     end
#   end
# end

# # #     xit "allows user to input their score and convert to integer" do
# # #       @io = double :io
# # #       expect(@io).to receive(:puts).with("Please enter your score")
# # #       expect(@io).to receive(:gets).and_return(7)
# # #       expect(@io).to receive(:gets).and_return(1)
# # #       frames = Frames.new(@io, @total_score)
# # #       frame1 = frames.frame_1(7,1)
# # #       expect(frames).to eq("#<Frames:0x0000000106aa76c8 @io=#<Double :io>, @total_score=[7, 1]>")
# # #     end
# # #   end


# #     xit "allows user to input their score and convert to integer" do
# #       @io = double :io
# #       expect(@io).to receive(:puts).with("Please enter your score")
# #       expect(@io).to receive(:gets).and_return(7)
# #       expect(@io).to receive(:gets).and_return(1)
# #       frames = Frames.new(@io, @total_score)
# #       frame1 = frames.frame_1(7,1)
# #       expect(frames).to eq("#<Frames:0x0000000106aa76c8 @io=#<Double :io>, @total_score=[7, 1]>")
# #     end
# #   end

# #   context "frame 7" do
# #     xit "allows user to input their score and convert to integer" do
# #       @io = double :io
# #       expect(@io).to receive(:puts).with("Please enter your score")
# #       expect(@io).to receive(:gets).and_return(3)
# #       expect(@io).to receive(:gets).and_return(4)
# #       frames = Frames.new(@io)
# #       frames.frame_7(3,4)
# #     end
# #   end

# #   context "frames total" do
# #     xit "returns total of frames" do
# #       @io = double :io
# #       @total_score = double :total_score
# #       expect(@io).to receive(:puts).with("Please enter your score")
# #       expect(@io).to receive(:gets).and_return(7)
# #       expect(@io).to receive(:gets).and_return(2)
# #       frames = Frames.new(@io)
# #       expect(frames.total).to eq 9

# #     end
# #   end
# # end


# describe Frames do
#   context 'frame 1' do
#     it 'initializes' do
#       frames = Frames.new(@total_score)
#       @io = double :io
#       expect(@io).to receive(:puts).with('Please enter your score')
#       expect(@io).to receive(:gets).and_return(3)
#       expect(@io).to receive(:gets).and_return(4)
#       game = Game.new(@io)
#       game.rolls
#       @roll_1 = 3
#       @roll_2 = 4
#       expect(@frame_1).to eq([3, 4])
#     end
#   end
# end

#     xit "allows user to input their score and convert to integer" do
#       @io = double :io
#       expect(@io).to receive(:puts).with("Please enter your score")
#       expect(@io).to receive(:gets).and_return(7)
#       expect(@io).to receive(:gets).and_return(1)
#       frames = Frames.new(@io, @total_score)
#       frame1 = frames.frame_1(7,1)
#       expect(frames).to eq("#<Frames:0x0000000106aa76c8 @io=#<Double :io>, @total_score=[7, 1]>")
#     end
#   end

#   context "frame 7" do
#     xit "allows user to input their score and convert to integer" do
#       @io = double :io
#       expect(@io).to receive(:puts).with("Please enter your score")
#       expect(@io).to receive(:gets).and_return(3)
#       expect(@io).to receive(:gets).and_return(4)
#       frames = Frames.new(@io)
#       frames.frame_7(3,4)
#     end
#   end

#   context "frames total" do
#     xit "returns total of frames" do
#       @io = double :io
#       @total_score = double :total_score
#       expect(@io).to receive(:puts).with("Please enter your score")
#       expect(@io).to receive(:gets).and_return(7)
#       expect(@io).to receive(:gets).and_return(2)
#       frames = Frames.new(@io)
#       expect(frames.total).to eq 9

#     end
#   end
# end
