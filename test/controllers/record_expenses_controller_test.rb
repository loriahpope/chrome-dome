require 'test_helper'

class RecordExpensesControllerTest < ActionController::TestCase
  setup do
    @record_expense = record_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_expense" do
    assert_difference('RecordExpense.count') do
      post :create, record_expense: { amount: @record_expense.amount, date: @record_expense.date, location: @record_expense.location, paymentDescription: @record_expense.paymentDescription, purchaseDescription: @record_expense.purchaseDescription }
    end

    assert_redirected_to record_expense_path(assigns(:record_expense))
  end

  test "should show record_expense" do
    get :show, id: @record_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_expense
    assert_response :success
  end

  test "should update record_expense" do
    patch :update, id: @record_expense, record_expense: { amount: @record_expense.amount, date: @record_expense.date, location: @record_expense.location, paymentDescription: @record_expense.paymentDescription, purchaseDescription: @record_expense.purchaseDescription }
    assert_redirected_to record_expense_path(assigns(:record_expense))
  end

  test "should destroy record_expense" do
    assert_difference('RecordExpense.count', -1) do
      delete :destroy, id: @record_expense
    end

    assert_redirected_to record_expenses_path
  end
end
