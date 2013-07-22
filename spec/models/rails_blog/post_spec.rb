require 'spec_helper'

module RailsBlog
  describe Post do
    describe "#description" do
      it "returns a two-hundred-long description" do
        subject.content = "a" * 500
        expect(subject.description).to eql(("a" * 200) + "...")
      end
    end
  end
end
