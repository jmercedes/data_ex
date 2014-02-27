require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase
  setup do
    @expense = expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense" do
    assert_difference('Expense.count') do
      post :create, expense: { account_id: @expense.account_id, amount_billed: @expense.amount_billed, billed_itbis: @expense.billed_itbis, businessid: @expense.businessid, line: @expense.line, modified_document: @expense.modified_document, ncf: @expense.ncf, payment_date: @expense.payment_date, retained_isr: @expense.retained_isr, retained_itbis: @expense.retained_itbis, status: @expense.status, typeid: @expense.typeid, voucher_date: @expense.voucher_date }
    end

    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should show expense" do
    get :show, id: @expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense
    assert_response :success
  end

  test "should update expense" do
    patch :update, id: @expense, expense: { account_id: @expense.account_id, amount_billed: @expense.amount_billed, billed_itbis: @expense.billed_itbis, businessid: @expense.businessid, line: @expense.line, modified_document: @expense.modified_document, ncf: @expense.ncf, payment_date: @expense.payment_date, retained_isr: @expense.retained_isr, retained_itbis: @expense.retained_itbis, status: @expense.status, typeid: @expense.typeid, voucher_date: @expense.voucher_date }
    assert_redirected_to expense_path(assigns(:expense))
  end

  test "should destroy expense" do
    assert_difference('Expense.count', -1) do
      delete :destroy, id: @expense
    end

    assert_redirected_to expenses_path
  end
end
