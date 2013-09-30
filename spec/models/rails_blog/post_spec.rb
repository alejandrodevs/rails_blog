require 'spec_helper'

module RailsBlog
  describe Post do
    let!(:subject){ described_class.new(title: "title", body: "body") }

    it "responds to searchable" do
      expect(described_class).to respond_to(:searchable?)
		end

    describe "#search_description" do
      it "returns a two-hundred-long description" do
        subject.body = "a" * 500
        expect(subject.search_description).to eql(("a" * 200) + "...")
      end
    end

		describe "#set_permalink" do
      it "sets permalink according to the post title" do
        subject.title = "Some title"
				expect(subject.set_permalink).to eql("some-title")
			end
		end

		describe "#sunspot_commit" do
      it "calls Sunspot commit method" do
        Sunspot.should_receive(:commit)
				subject.sunspot_commit
			end
		end

		describe "#url_params" do
      it "returns an array with custom post url params" do
        subject.permalink = "some-title"
				subject.created_at = Time.parse("2013-07-23")
				expect(subject.url_params).to eql([2013, "07", "23", "some-title"])
			end
		end

		describe "Callbacks" do
      describe "before_save" do
        it "calls set_permalink method" do
					subject.should_receive(:set_permalink)
					subject.save
				end
			end

			describe "after_save" do
        it "calls sunspot_commit" do
					subject.title = "Some title"
					subject.should_receive(:sunspot_commit)
					subject.save
				end
			end
		end
  end
end
