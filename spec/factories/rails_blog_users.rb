# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rails_blog_user, :class => 'User' do
    name "MyString"
  end
end
