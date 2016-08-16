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

  describe "#matrix" do
    let(:result) { { "next_action"=>{ "lef"=>{ "generic"=>{ "ver_a"=>["call", "msg"], "ver_b"=>["xxx", "yyy"] }, "funnel"=>["zzz", "ccc"] } } } }

    it 'returns hash from yaml file' do
      expect(action_matrix.matrix).to eq(result)
    end
  end

  describe "hash keys" do
    it "behave as methods" do
      expect(action_matrix.matrix.next_action.lef.generic.ver_a).to eq([ 'call', 'msg' ])
      expect(action_matrix.matrix.next_action.lef).to eq('generic' => { 'ver_a' => [ 'call', 'msg' ], 'ver_b' => [ 'xxx', 'yyy' ] }, 'funnel' =>  [ 'zzz', 'ccc' ])
    end
  end
end
