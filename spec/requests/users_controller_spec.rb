require 'rails_helper'
require 'faraday'

RSpec.describe 'GET /users/:id', type: :request do

	context '全てのパラメータが揃っている場合' do
		before do
			@user = User.create(email: "hoge@gmail.com", password: "testtest")
			login_user(@user, "testtest")
		end
		it '200 OKを返す' do
			get "/users/#{@user.id}", headers: { 'ACCEPT' => 'application/json' }
			expect(response).to have_http_status(:ok)
		end
	end
end