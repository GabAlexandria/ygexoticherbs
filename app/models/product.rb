class Product < ActiveRecord::Base
  # attr_accessible :title, :body

  acts_as_taggable
  has_ancestry :orphan_strategy => :rootify

  attr_accessible :name,
                  :slug,
                  :price,
                  :description,
                  :quantity,
                  :available,
                  :in_stock,
                  :packaging_type,
                  :scientific_name,
                  :recommendations,
                  :parent_id

  validates_presence_of :name, :message => "Please enter a name"
  validates_presence_of :slug, :message => "Please enter a slug"

  has_many :orders


  def truncated_descript
    stripped_descrip = Sanitize.clean(description.strip, Sanitize::Config::RESTRICTED).split
    (stripped_descrip.length > 12) ? (stripped_descrip[0..11].join(" ") + "...") : stripped_descrip.join(" ")
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
