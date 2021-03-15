class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def update
    @expense = Expense.find(params[:id])
    @expense.update(expense_params)
    redirect_to action: 'index'
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy
    redirect_to action: 'index'
  end

  private

  def expense_params
    params
      .require(:expense)
      .permit(:name, :description, :amount, :user_id, :event_id)
  end
end
