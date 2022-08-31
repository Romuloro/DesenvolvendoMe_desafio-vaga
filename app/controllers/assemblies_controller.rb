class AssembliesController < ApplicationController
  before_action :set_assembly, only: %i[ show edit update destroy ]

  # GET /assemblies or /assemblies.json
  def index
    @assemblies = Assembly.all
  end

  # GET /assemblies/1 or /assemblies/1.json
  def show
  end

  # GET /assemblies/new
  def new
    @assembly = Assembly.new
  end

  # GET /assemblies/1/edit
  def edit
  end

  # POST /assemblies or /assemblies.json
  def create
    @assembly = Assembly.new(assembly_params.except(:parts))
    create_or_delete_assemblies_parts(@assembly, params[:assembly][:parts])

    respond_to do |format|
      if @assembly.save
        format.html { redirect_to assembly_url(@assembly), notice: "Assembly was successfully created." }
        format.json { render :show, status: :created, location: @assembly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assemblies/1 or /assemblies/1.json
  def update
    create_or_delete_assemblies_parts(@assembly, params[:assembly][:parts])

    respond_to do |format|
      if @assembly.update(assembly_params.except(:parts))
        format.html { redirect_to assembly_url(@assembly), notice: "Assembly was successfully updated." }
        format.json { render :show, status: :ok, location: @assembly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assemblies/1 or /assemblies/1.json
  def destroy
    @assembly.destroy

    respond_to do |format|
      format.html { redirect_to assemblies_url, notice: "Assembly was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def create_or_delete_assemblies_parts(assembly, parts)
      parts.each do |part|
        assembly.parts << Part.find_or_create_by(id: part)
      end
    end
    def set_assembly
      @assembly = Assembly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assembly_params
      params.require(:assembly).permit(:name, :parts, :book_id)
    end
end
