RSpec.describe PicturesController, type: :controller do
  describe '#create' do
    before { post :create, {} }

    it 'assigns @picture' do
      expect(assigns(:picture)).to be_a Picture
    end

    context 'for a valid picture' do
      it 'redirects to the picture' do
        expect(response).to redirect_to(assigns(:picture))
      end

      it 'returns a :created status code' do
        expect(response).to have_http_status :created
      end
    end

    context 'for an invalid picture' do
      it 'renders :new' do
        expect(response).to render_template(:new)
      end

      it 'returns a :redirect status code' do
        expect(response).to have_http_status :redirect
      end
    end
  end

  describe '#new' do
    before { get :new }

    it 'assigns @picture' do
      expect(assigns(:picture)).to be_a_new Picture
    end

    it 'renders :new' do
      expect(response).to render_template(:new)
    end

    it 'returns an :ok status code' do
      expect(response).to have_http_status :ok
    end
  end
end
