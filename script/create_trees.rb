#let's quickly rootify and adopt

independent_products = []

def downcase_and_dash(str)
  str.downcase.split.join("-")
end

Product.all.each do |product|
  if product.parent.blank? && product.children.blank? && product.price.present?
    independent_products << product
  end
end

independent_products.each do |product|
  build_parent = Product.create!(:name => product.name, :slug => downcase_and_dash(product.name), :scientific_name => product.try(:scientific_name), :description => product.try(:description))
  product.update_attribute(:parent_id, build_parent.id)
  product.update_attribute(:description, "")
  product.update_attribute(:scientific_name, "")
end
