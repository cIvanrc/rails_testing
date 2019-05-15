require 'rails_helper' 

feature "User completes todo" do 
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"

    click_on "Mark complete"

    expect(page).to display_completed_todo "Buy milk"
  end

  def create_todo(todo_title)
    click_on "Add a new todo"
    fill_in "Title", with: todo_title
    click_on "Submit"
  end
end
