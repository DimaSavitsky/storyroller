module Web::Views::Stories
  class New
    include Web::View

    def form
      form_for :story, '/stories' do
        div class: 'input' do
          label      :title
          text_field :title
        end

        div class: 'controls' do
          submit 'Create Story'
        end
      end
    end
  end
end
