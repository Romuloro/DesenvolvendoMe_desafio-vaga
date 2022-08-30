require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/parts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Part. As you add validations to Part, be sure to
  # adjust the attributes here as well.
  let!(:part) {create(:part)}
  let!(:part_attributes) {attributes_for(:part)}

  describe "GET /index" do
    context "when the part exists"  do
      before do
        get "/parts/"
      end

      it "renders a successful response" do
        expect(response).to have_http_status(:success)
      end

      it "renders part number" do
        expect(response.body).to include(part.part_number)
      end

      it "renders part name" do
        expect(response.body).to include(part.name)
      end

      it "renders part descricao" do
        expect(response.body).to include(part.descricao)
      end

      it "renders part supplier name" do
        expect(response.body).to include(part.supplier.name.to_s)
      end
    end
  end

  describe "GET /show" do
    context "when the account exists"  do
      before do
        get "/parts/", params: {id:part.id}
      end

      it "renders a successful response" do
        expect(response).to have_http_status(:success)
      end

      it "renders part number" do
        expect(response.body).to include(part.part_number)
      end

      it "renders part name" do
        expect(response.body).to include(part.name)
      end

      it "renders part descricao" do
        expect(response.body).to include(part.descricao)
      end

      it "renders part supplier name" do
        expect(response.body).to include(part.supplier.name.to_s)
      end
    end

    context "when the account doesn't exists" do
      let!(:part_error) {build(:part)}
      before do
        get "/parts/", params: {id:part_error.id}
      end

      it "not renders account number" do
        expect(response.body).to_not include(part_error.part_number)
      end
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get "/parts/new"
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    context "when the parts exists"  do
      before do
        get "/parts/#{part.id}/edit"
      end

      it "renders a successful response" do
        expect(response).to be_successful
      end

      it "renders part number" do
        expect(response.body).to include(part.part_number)
      end

      it "renders part name" do
        expect(response.body).to include(part.name)
      end

      it "renders part descricao" do
        expect(response.body).to include(part.descricao)
      end

      it "renders part supplier name" do
        expect(response.body).to include(part.supplier.name.to_s)
      end
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      before do
        part_ = build(:part)
        post "/parts/", params: { part: { part_number: part_.part_number, supplier_id: part.supplier.id, name: part.name, descricao: part.descricao } }
      end

      it "creates a new accounts" do
        puts response.body
        expect(response).to have_http_status(:redirect)
      end

      it "redirects to the created accounts" do
        get "/accounts", params: { id: part.id }
        expect(response.body).to include("Part was successfully created.")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      before do
        patch "/parts/#{part.id}", params: { part: part_attributes }
      end

      it "redirects to the book" do
        expect(response).to have_http_status(:redirect)
      end

      it "redirects to the update part" do
        get "/parts", params: { id: part.id }
        expect(response.body).to include("Part was successfully updated.")
      end

      it "redirects to the update parts part number" do
        get "/parts/#{part.id}"
        expect(response.body).to include(part.reload.part_number.to_s)
      end
      it "redirects to the update parts name" do
        get "/parts/#{part.id}"
        expect(response.body).to include(part.reload.name)
      end

      it "redirects to the update parts descricao" do
        get "/parts/#{part.id}"
        expect(response.body).to include(part.reload.descricao)
      end

      it "redirects to the update part supplier name" do
        get "/parts/#{part.id}"
        expect(response.body).to include(part.reload.supplier.name.to_s)
      end
    end
  end

  describe "DELETE /destroy" do
    context "with valid parameters" do
      before do
        delete "/parts/#{part.id}"
      end

      it "destroys the requested parts" do
        expect(response).to have_http_status(:redirect)
      end

      it "redirects to the delete author" do
        get "/parts", params: { id: part.id }
        expect(response.body).to include("Part was successfully destroyed.")
      end
    end
  end
end
