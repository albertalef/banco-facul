# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
unless AdminUser.find_by(email: 'admin@example.com')
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
CardStatus.create(name: 'desbloqueado')
CardStatus.create(name: 'bloqueado')
CardStatus.create(name: 'furtado')
CardStatus.create(name: 'cancelado')


card_status_ids = CardStatus.pluck(:id)

BillStatus.create(name: 'Paga')
BillStatus.create(name: 'Atrasada')
BillStatus.create(name: 'Aberta')
BillStatus.create(name: 'Fechada')
bill_status_ids = BillStatus.pluck(:id)

TransactionStatus.create(name: 'Finalizada')
TransactionStatus.create(name: 'Em andamento')
TransactionStatus.create(name: 'Cancelada')
transaction_status_ids = TransactionStatus.pluck(:id)

FraudStatus.create(name: 'Detectada')
FraudStatus.create(name: 'Em analise')
FraudStatus.create(name: 'Não detectada')
fraud_status_ids = FraudStatus.pluck(:id)

DisputeStatus.create(name: 'Finalizada')
DisputeStatus.create(name: 'Em Aberto')
DisputeStatus.create(name: 'Cancelada')
DisputeStatus.create(name: 'Sem disputa')
dispute_status_ids = DisputeStatus.pluck(:id)

Rails.configuration.allow_concurrency = true

Rails.application.eager_load!

puts 'Creating locations...'
puts 'Creating accommodations...'
threads = []
4.times do |_j|
  threads << Thread.new do
    ActiveRecord::Base.connection_pool.with_connection do
      puts 'start user creation'
      users = FactoryBot.build_stubbed_list(:user, 5_000).map(&:attributes)
      puts 'created users'
      User.insert_all(users)

      puts 'start card creation'
      cards = FactoryBot.build_stubbed_list(:card, 10_000).map(&:attributes)
      puts 'created cards'
      Address.insert_all(cards)

      puts 'start address creation'
      addresses = FactoryBot.build_stubbed_list(:address, 10_000).map(&:attributes)
      puts 'created addresses'
      Address.insert_all(addresses)
    end
  end
end
threads.each { |t| t.join }
puts 'Accommodations created...'
