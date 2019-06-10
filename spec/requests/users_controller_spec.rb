require 'rails_helper'
require 'faraday'

RSpec.describe 'GET /users/:id', type: :request do

	context '全てのパラメータが揃っている場合' do
		before do
		end
		it '200 OKを返す' do
			get '/users/1', headers: { 'ACCEPT' => 'application/json' }
			expect(response).to have_http_status(:ok)
		end
		it '成功時のJSONレスポンスを返す'
		it 'ユーザを登録する'
	end
end