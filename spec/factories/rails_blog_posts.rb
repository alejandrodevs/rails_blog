# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rails_blog_post, :class => 'Post' do
    title "MyString"
    content "MyText"
  end
end
