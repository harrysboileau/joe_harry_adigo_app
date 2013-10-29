class Task
  attr_reader :title, :description, :status, :created_at
  def initialize(title, description)
    @title = title
    @description = description
    @complete = false
    @created_at = Time.now
  end

  def status
    unless @complete
      return :incomplete
    end
  end
end


