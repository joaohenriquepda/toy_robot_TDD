RSpec.describe ToyRobotTDD::Robot do
  subject(:robot){ToyRobotTDD::Robot.new}

  describe "#place" do
    it "Places Robot in the table" do
      robot.place 0,0,:south
      expect(robot.report).to eq "0,0,SOUTH"
    end
    it "Return position of robot" do
      robot.place 0,0,:south
      expect(robot.report).to eq "0,0,SOUTH"
    end
  end

  describe "#move" do
    it "Moves robot one unit in the direction it is facing " do
      robot.place 0,0,:north
      robot.move
      expect(robot.report).to eq "0,1,NORTH"  
    end
  end



end
