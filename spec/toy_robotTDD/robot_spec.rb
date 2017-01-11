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
    it "Moves robot one unit in the direction it is facing to north " do
      robot.place 0,0,:north
      robot.move
      expect(robot.report).to eq "0,1,NORTH"
    end
    it "Moves robot one unit in the direction it is facing to east " do
      robot.place 0,0,:east
      robot.move
      expect(robot.report).to eq "1,0,EAST"
    end
    it "Moves robot one unit in the direction it is facing to south " do
      robot.place 0,4,:south
      robot.move
      expect(robot.report).to eq "0,3,SOUTH"
    end
    it "Moves robot one unit in the direction it is facing to west " do
      robot.place 4,4,:west
      robot.move
      expect(robot.report).to eq "3,4,WEST"
    end
  end



end
