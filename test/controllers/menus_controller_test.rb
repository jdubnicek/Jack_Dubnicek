# require 'test_helper'
#
# class MenusControllerTest < ActionDispatch::IntegrationTest
#   before(:all) do
#     visit root_path
#   end
#
#   test "should get Menu show page" do
#     first("#edit-order").click
#     assert has_selector?(".shopping-cart")
#   end
#
#   test "should display dishes added to menu" do
#     first("#edit-order").click
#     if has_selector?(".edit-menu-dish")
#       menu_dishes = all(".edit-menu-dish").collect
#       assert menu_dishes.count == MenuDish.all.count
#     else
#       assert has_selector?(".text-center")
#     end
#   end
#
# end
