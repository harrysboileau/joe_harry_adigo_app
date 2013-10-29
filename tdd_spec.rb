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
      task.title.should eq(title)
    end

    it "status should default to incomplete" do
      task.status.should eq(:incomplete)
    end

    it "created_at should be initialized" do
      task.created_at.should be_a(Time)
    end
  end

  describe "mark_as_complete!" do
    it "should change the status to complete" do
      task.mark_as_complete!.status.should eq(:complete)
    end
  end

  describe "mark_as_incomplete!" do
    it "should change the status to incomplete" do
      task.mark_as_incomplete!.status.should eq(:incomplete)
    end
  end

  describe "complete?" do
    it "should return a boolean indicating whether task is complete" do
      task.complete?.should eq(false)
      task.mark_as_complete!.complete?.should eq(true)
    end

  end

end



