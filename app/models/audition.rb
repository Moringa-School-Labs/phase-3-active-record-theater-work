class Audition < ActiveRecord::Base
  belongs_to :role

  def role
    Role.all.each do |each_role|
        puts each_role
    end
  end

  def call_back
    self.update(hired: true)
  end

end