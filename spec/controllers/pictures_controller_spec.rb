RSpec.describe PicturesController, type: :controller do
  describe '#create' do
    it 'assigns @picture' do
      post :create, { picture: { data_url: '' } }

      expect(assigns(:picture)).to be_a Picture
    end

    context 'for a valid picture' do
      it 'redirects to the picture' do
        post :create, { picture: { data_url: 'blah' } }

        expect(response).to redirect_to(assigns(:picture))
      end
    end

    context 'for an invalid picture' do
      it 'renders :new' do
        post :create, { picture: { data_url: '' } }

        expect(response).to render_template :new
      end
    end
  end

  describe '#new' do
    before { get :new }

    it 'assigns @picture' do
      expect(assigns(:picture)).to be_a_new Picture
    end

    it 'renders :new' do
      expect(response).to render_template :new
    end
  end

  describe '#show' do
    let(:picture) { pictures(:portrait) }

    it 'assigns @picture' do
      get :show, id: picture.id

      expect(assigns(:picture)).to eq picture
    end
  end
end
