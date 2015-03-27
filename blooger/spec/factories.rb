FactoryGirl.define do

  factory :post do
    title('Tennies')
    content('kicks fo yo feet.')
  end

  factory :comment do
    text('That sounds so cool, thanks for sharing.')
  end

end
