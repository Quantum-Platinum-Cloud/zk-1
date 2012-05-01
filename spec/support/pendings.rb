module Pendings
  def pending_192(msg)
    if ZK.ruby_19x?
      if block_given?
        pending(msg) { yield }
      else
        pending(msg)
      end
    else
      yield if block_given?
    end
  end

  def pending_187(msg)
    if ZK.ruby_187?
      if block_given?
        pending(msg) { yield }
      else
        pending(msg)
      end
    else
      yield if block_given?
    end
  end

  def jruby?
    defined?(::JRUBY_VERSION)
  end

  def rubinius?
    defined?(::Rubinius)
  end
end

