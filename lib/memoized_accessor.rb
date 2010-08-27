class Module
  def memoized_accessor(meth)
    module_eval "
      attr_writer :#{meth}

      def #{meth}
        @#{meth} ||= #{yield}
      end
      "
  end
end


