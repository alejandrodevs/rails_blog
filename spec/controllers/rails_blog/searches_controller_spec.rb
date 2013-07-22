require 'spec_helper'

module RailsBlog
  describe SearchesController do

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end

  end
end
