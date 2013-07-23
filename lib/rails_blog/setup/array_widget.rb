module RailsBlog
  module Setup
    class ArrayWidget < Array

      def sorted
        self.sort_by{ |widget| widget[:order] }
      end

      def add name, options = {}
        self.push OpenStruct.new({
          :name  => name,
          :title => options[:title],
          :order => options[:order]
        })
      end

    end
  end
end
