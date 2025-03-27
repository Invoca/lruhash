class LRUHash < Hash
  attr_reader :max

  def initialize(max: 256)
    @max = max
  end

  def store(key, value)
    if !has_key?(key) && length >= max
      shift
    end
    super
  end

  def fetch(*args)
    key = args.first
    if has_key?(key)
      self[key]
    else
      super
    end
  end

  def []=(key, value)
    store(key, value)
  end

  def [](key)
    if has_key?(key)
      # Delete and add back to put the entry back on the back of the LRU (front of MRU) list.
      self[key] = delete(key)
    end
  end
end
