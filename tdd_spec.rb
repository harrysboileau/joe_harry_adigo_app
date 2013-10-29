require 'spec_helper'
require_relative 'tdd'

describe Task do
  describe "initialize" do
    it "should have 2 arguments" do
      expect { Task.new}.to raise_error(ArgumentError)
    end
  end
end
