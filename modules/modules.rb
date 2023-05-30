module Associations
  attr_reader :author, :genre, :label

  def author=(author)
    @author = author
    author.add_items(self) unless author.items.include?(self)
  end

  def genre=(genre)
    @genre = genre
    genre.add_items(self) unless genre.items.include?(self)
  end

  def label=(label)
    @label = label
    label.add_items(self) unless label.items.include?(self)
  end
end
