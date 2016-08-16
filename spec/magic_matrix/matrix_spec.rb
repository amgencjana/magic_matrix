require "spec_helper"

describe MagicMatrix::Matrix do
  let(:action_matrix) { described_class.new(test_yaml_path) }

  describe ".initialize" do
    it "initializes an instance" do
      expect(action_matrix).to be_a(MagicMatrix::Matrix)
    end

    it "response to the method" do
      expect(action_matrix).to respond_to(:matrix)
    end
  end
  # describe "#magic_hash" do
  #   let(:action_matrix) { MagicMatrix::Matrix.new( test_yaml_path )}
  #
  #   it "initialize" do
  #     MagicMatrix::Matrix.new( test_yaml_path )
  #   end
  #
  #   it "response to the method" do
  #     expect( action_matrix ).to respond_to( :matrix )
  #   end
  #
  #   let(:matrix) { action_matrix.matrix }
  #
  #   it "response to the method as keys: " do
  #     expect( matrix.next_action ).to include( "lef" )
  #   end
  # end

  # describe '#matrix' do
  #   let(:action_matrix) { MagicMatrix::Matrix.new( test_yaml_path )}
  #
  #   it '' do
  #     expect(action_matrix.matrix.next_action.lef.generic.ver_a).to eq [ 'call', 'msg' ]
  #   end
  # end

end
