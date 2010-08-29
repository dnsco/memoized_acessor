class Module
  def memoized_accessor(meth, &blk)
    module_eval "
      attr_writer :#{meth}

      def #{meth}
        @#{meth} ||= #{blk.call}
      end

      def #{meth}!
        #{blk.call}
      end
      "
  end
end


