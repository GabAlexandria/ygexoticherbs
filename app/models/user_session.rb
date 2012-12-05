class UserSession < Authlogic::Session::Base
  # attr_accessible :title, :body
  def to_key
    new_record? ? nil : [self.send(self.class.primarykey)]
  end

  def persisted?
    false
  end
end
