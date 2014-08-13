class RecordExpensesController < ApplicationController
  before_action :set_record_expense, only: [:show, :edit, :update, :destroy]

  # GET /record_expenses
  # GET /record_expenses.json
  def index
    @record_expenses = RecordExpense.all
  end

  # GET /record_expenses/1
  # GET /record_expenses/1.json
  def show
  end

  # GET /record_expenses/new
  def new
    @record_expense = RecordExpense.new
  end

  # GET /record_expenses/1/edit
  def edit
  end

  # POST /record_expenses
  # POST /record_expenses.json
  def create
    @record_expense = RecordExpense.new(record_expense_params)

    respond_to do |format|
      if @record_expense.save
        format.html { redirect_to @record_expense, notice: 'New expense successfully created.' }
        format.json { render :show, status: :created, location: @record_expense }
      else
        format.html { render :new }
        format.json { render json: @record_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_expenses/1
  # PATCH/PUT /record_expenses/1.json
  def update
    respond_to do |format|
      if @record_expense.update(record_expense_params)
        format.html { redirect_to @record_expense, notice: 'Record expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_expense }
      else
        format.html { render :edit }
        format.json { render json: @record_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_expenses/1
  # DELETE /record_expenses/1.json
  def destroy
    @record_expense.destroy
    respond_to do |format|
      format.html { redirect_to record_expenses_url, notice: 'Record expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def say_hello(name)
    "Hello, #{name}."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_expense
      @record_expense = RecordExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_expense_params
      params.require(:record_expense).permit(:date, :location, :purchaseDescription, :amount, :paymentDescription)
    end
end
