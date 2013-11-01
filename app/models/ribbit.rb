class Ribbit < ActiveRecord::Base
  attr_accessible :content, :user_id
  default_scope order: "created_at DESC"

  belongs_to :user

  validates :content, length: { maximum: 140, minimum: 1 }

  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ?',  "#%#{search}%"])
    else
      find(:all)
    end
  end

  def self.search_mention(user_search)
    if user_search
      find(:all, :conditions => ['content LIKE ?',  "%@#{user_search}%"])
    else
      find(:all)
    end
  end

end
