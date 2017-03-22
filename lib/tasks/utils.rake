namespace :utils do
  desc 'TODO'
  task users_default: :environment do
    Member.create!(email: 'ricardo@mail.com', password: '123456', password_confirmation: '123456')
  end
end
