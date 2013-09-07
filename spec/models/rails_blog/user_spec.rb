require 'spec_helper'

module RailsBlog
  describe User do
    pending "add some examples to (or delete) #{__FILE__}"

    describe "#admin?" do
      context "when is admin" do
        it "returns true" do
          subject.type = "RailsBlog::Admin"
          expect(subject.admin?).to be_true
        end
      end

      context "when is not admin" do
        it "returns false" do
          expect(subject.admin?).to be_false
        end
      end
    end
  end
end
