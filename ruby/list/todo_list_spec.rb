require_relative 'test_todo'

describe TodoList do
  let(:list) { TodoList.new("do the dishes", "mow the lawn") }

  it "stores the list items given on initialization" do
    list.get_items
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.add_item).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.delete_item).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    list.get_item(0)
    expect(list.get_item(0)).to eq ["do the dishes"]
  end
end