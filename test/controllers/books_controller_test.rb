require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, batch_details: @book.batch_details, book_rating: @book.book_rating, caption: @book.caption, category: @book.category, description: @book.description, discount: @book.discount, edition: @book.edition, featured: @book.featured, google_book_link: @book.google_book_link, height: @book.height, isbn: @book.isbn, length: @book.length, mrp: @book.mrp, name: @book.name, publisher: @book.publisher, stock: @book.stock, tags: @book.tags, type_of_book: @book.type_of_book, weight: @book.weight, width: @book.width, year_of_publishing: @book.year_of_publishing }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, batch_details: @book.batch_details, book_rating: @book.book_rating, caption: @book.caption, category: @book.category, description: @book.description, discount: @book.discount, edition: @book.edition, featured: @book.featured, google_book_link: @book.google_book_link, height: @book.height, isbn: @book.isbn, length: @book.length, mrp: @book.mrp, name: @book.name, publisher: @book.publisher, stock: @book.stock, tags: @book.tags, type_of_book: @book.type_of_book, weight: @book.weight, width: @book.width, year_of_publishing: @book.year_of_publishing }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
