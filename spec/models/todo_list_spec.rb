require 'rails_helper'

RSpec.describe TodoList, type: :model do
  describe "Todo List Associations" do
    it { is_expected.to have_many :todo_list_items }
  end

  describe "Create a Todo List" do
    
    context "todo list must have a title" do
      it "passes if title is given" do
        subject.title = "Title"
        expect(subject.valid?).to be true
      end

      it "fails if title is blank" do
        expect(subject.title).to be_nil
        expect(subject.valid?).to be false
      end
    end

    context "#improve_title_text" do
      it "converts a todolist title by capitalizing first letter of every word" do
        todo_list = TodoList.new title: "weekend shopping list"
        expect(todo_list.improve_title_text).to eq("Weekend Shopping List")
      end
    end
  end
end
