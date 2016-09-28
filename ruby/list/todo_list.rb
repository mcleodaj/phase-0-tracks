class TodoList
  def initialize(array)
    @to_do_list=array
  end

  def get_items
    @to_do_list
  end

  def add_item(input)
    @to_do_list << input
  end

  def delete_item(input)
    @to_do_list.delete(input)
  end

  def get_item(index)
    @to_do_list[index]
  end

end

