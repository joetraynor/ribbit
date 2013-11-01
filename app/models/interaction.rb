class Relationship < ActiveRecord::Base

  belongs_to :user



  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ?', "%{search}%"])
    else
      find(:all)
    end
  end

end