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

  context "It hasn't been placed" do
    it "refuse to move" do
      expect{robot.move}.to raise_error ToyRobotTDD::NeedToBeInPlace
      expect{robot.left}.to raise_error ToyRobotTDD::NeedToBeInPlace
      expect{robot.right}.to raise_error ToyRobotTDD::NeedToBeInPlace
    end
  end

  context "It is place" do
    before "" do
        robot.place 0,0,:north
    end

    it "Allow to move" do
      expect{robot.move}.to_not raise_error
      expect{robot.left}.to_not raise_error
      expect{robot.right}.to_not raise_error
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

  describe "#left" do
    it "when facing to NORTH" do
      robot.place 0, 0, :north
      robot.left
      expect(robot.report).to eq "0,0,WEST"
    end
    it "when facing to WEST" do
      robot.place 0, 0, :west
      robot.left
      expect(robot.report).to eq "0,0,SOUTH"
    end
    it "when facing to SOUTH" do
      robot.place 0, 0, :south
      robot.left
      expect(robot.report).to eq "0,0,EAST"
    end
    it "when facing to EAST" do
      robot.place 0, 0, :east
      robot.left
      expect(robot.report).to eq "0,0,NORTH"
    end
  end


  describe "#left" do
    it "when facing to NORTH" do
      robot.place 0, 0, :north
      robot.right
      expect(robot.report).to eq "0,0,EAST"
    end
    it "when facing to EAST" do
        robot.place 0,0,:east
        robot.right
        expect(robot.report).to eq "0,0,SOUTH"
    end
    it "when facing to SOUTH" do
      robot.place 0,0,:south
      robot.right
      expect(robot.report).to eq "0,0,WEST"
    end
    it "when facing to WEST" do
      robot.place 0,0,:west
      robot.right
      expect(robot.report).to eq "0,0,NORTH"
    end
  end


end
