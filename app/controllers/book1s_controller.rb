class Book1sController < ApplicationController
  before_action :set_book1, only: %i[ show edit update destroy ]

  # GET /book1s or /book1s.json
  def index
    @book1s = Book1.all
  end

  # GET /book1s/1 or /book1s/1.json
  def show
  end

  # GET /book1s/new
  def new
    @book1 = Book1.new
  end

  # GET /book1s/1/edit
  def edit
  end

  # POST /book1s or /book1s.json
  def create
    @book1 = Book1.new(book1_params)

    respond_to do |format|
      if @book1.save
        format.html { redirect_to @book1, notice: "Book1 was successfully created." }
        format.json { render :show, status: :created, location: @book1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book1s/1 or /book1s/1.json
  def update
    respond_to do |format|
      if @book1.update(book1_params)
        format.html { redirect_to @book1, notice: "Book1 was successfully updated." }
        format.json { render :show, status: :ok, location: @book1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book1s/1 or /book1s/1.json
  def destroy
    @book1.destroy
    respond_to do |format|
      format.html { redirect_to book1s_url, notice: "Book1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book1
      @book1 = Book1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book1_params
      params.require(:book1).permit(:title, :author, :publication_year)
    end
end
