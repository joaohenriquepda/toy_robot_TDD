describe ToyRobotTDD::Directions do

  subject(:directions){described_class}


  describe "[]" do
    it "creates a North direction when a :north symbol is passed" do
      north = directions[:north]
      expect(north).to be_a ToyRobotTDD::Directions::North
    end

    it "returns correct direction after calling #[] with a different symbol" do
      west = directions[:west]
      expect(west).to be_a ToyRobotTDD::Directions::West
    end
  end

  describe ToyRobotTDD::Directions::North do
    subject(:north){described_class.new}

    it "knows which direction is at 90° to left" do
      expect(north.left).to be_a ToyRobotTDD::Directions::West
    end
    it "knows which direction is at 90° to left" do
      expect(north.right).to be_a ToyRobotTDD::Directions::East
    end
  end

  describe ToyRobotTDD::Directions::West do
    subject(:west){described_class.new}

    it "knows which direction is at 90° to left" do
      expect(west.left).to be_a ToyRobotTDD::Directions::South
    end
    it "knows which direction is at 90° to left" do
      expect(west.right).to be_a ToyRobotTDD::Directions::North
    end
  end

  describe ToyRobotTDD::Directions::South do
    subject(:south){described_class.new}

    it "knows which direction is at 90° to left" do
      expect(south.left).to be_a ToyRobotTDD::Directions::East
    end
    it "knows which direction is at 90° to left" do
      expect(south.right).to be_a ToyRobotTDD::Directions::West
    end
  end

  describe ToyRobotTDD::Directions::East do
    subject(:east){described_class.new}

    it "knows which direction is at 90° to left" do
      expect(east.left).to be_a ToyRobotTDD::Directions::North
    end
    it "knows which direction is at 90° to left" do
      expect(east.right).to be_a ToyRobotTDD::Directions::South
    end
  end



end
