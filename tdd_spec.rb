require 'rspec'
require_relative 'tdd'



describe Task do
  let(:title) { "Test title" }
  let(:description) { "Test" }
  let(:task) { Task.new(title, description) }

  describe "initialize" do
    it "should have 2 arguments" do
      expect { Task.new}.to raise_error(ArgumentError)
    end

    it "title should be set" do
      task.title.should eq.(title)
    end
  end
end



