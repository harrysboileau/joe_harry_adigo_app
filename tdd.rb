class Task
  attr_reader :title, :description, :created_at
  attr_accessor :complete
  def initialize(title, description)
    @title = title
    @description = description
    @complete = false
    @created_at = Time.now
  end

  def status
    if @complete == true
      :complete
    else
      return :incomplete
    end
  end

  def mark_as_complete!
    @complete = true
    self
  end
end








