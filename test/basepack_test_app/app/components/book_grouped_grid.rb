class BookGroupedGrid < Netzke::Basepack::Grid

  def configure(c)
    c.model = "Book"
    c.title = I18n.t('books', :default => "Books")
    c.features = [{ftype:'grouping'}]
    super
  end
  
  column :author__name do |c|
    c.sorting_scope = :sorted_by_author_name
  end

end
