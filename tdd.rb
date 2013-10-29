class Task
  attr_reader :title, :description, :created_at, :status

  def initialize(title, description)
    @title = title
    @description = description
    @status = :incomplete
    @created_at = Time.now
  end

  def mark_as_complete!
    @status = :complete
    self
  end

  def mark_as_incomplete!
    @status = :incomplete
    self
  end

  def complete?
    if @status == :complete
      return true
    else
      return false
    end
  end
end








