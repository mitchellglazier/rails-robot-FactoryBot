class Robot < ApplicationRecord

  def greet
    if self.friendly
      "hello"
    else
      "die human!"
    end
  end
end
