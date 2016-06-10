require_relative '../spec_helper'

describe Magic::Matrix do

  describe "#magic_hash" do 
    let(:action_matrix) { Magic::Matrix.new( test_yaml_path )}

    it "intialize" do 
      Magic::Matrix.new( test_yaml_path )
    end

    it "response to the method" do
      expect( action_matrix ).to respond_to( :matrix )
    end

    let(:matrix) { action_matrix.matrix }

    it "response to the method as keys: " do
      expect( matrix.next_action ).to include( "lef" )
    end
  end

end
