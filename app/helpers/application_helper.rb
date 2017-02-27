module ApplicationHelper
  def flash_class(key)
    if (key == 'alert')
      "alert alert-danger"
    elsif (key == 'notice')
      "alert alert-success"
    end
  end
end
