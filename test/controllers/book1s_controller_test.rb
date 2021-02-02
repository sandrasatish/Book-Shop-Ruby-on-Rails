require 'test_helper'

class Book1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book1 = book1s(:one)
  end

  test "should get index" do
    get book1s_url
    assert_response :success
  end

  test "should get new" do
    get new_book1_url
    assert_response :success
  end

  test "should create book1" do
    assert_difference('Book1.count') do
      post book1s_url, params: { book1: { author: @book1.author, publication_year: @book1.publication_year, title: @book1.title } }
    end

    assert_redirected_to book1_url(Book1.last)
  end

  test "should show book1" do
    get book1_url(@book1)
    assert_response :success
  end

  test "should get edit" do
    get edit_book1_url(@book1)
    assert_response :success
  end

  test "should update book1" do
    patch book1_url(@book1), params: { book1: { author: @book1.author, publication_year: @book1.publication_year, title: @book1.title } }
    assert_redirected_to book1_url(@book1)
  end

  test "should destroy book1" do
    assert_difference('Book1.count', -1) do
      delete book1_url(@book1)
    end

    assert_redirected_to book1s_url
  end
end
