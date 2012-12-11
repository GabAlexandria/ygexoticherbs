class Product < ActiveRecord::Base
  # attr_accessible :title, :body
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


  def truncated_descript
    (description.split[0..11].join(" ") + "...")
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
