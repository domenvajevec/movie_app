require 'spec_helper'

describe "Movies" do
  describe "GET /movies" do
    it "returns with a success response status" do
      get movies_path
      expect(response.status).to eq(200)
    end
  end
end
