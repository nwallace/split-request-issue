class HashPersistence

  def initialize(context)
    @store = {}
  end

  def [](key)
    @store[key]
  end

  def []=(key, value)
    @store[key] = value
  end

  def delete(key)
    @store.delete(key)
  end

  def keys
    @store.keys
  end
end

Split.configure do |config|
  config.experiments = {
    my_experiment: {
      alternatives: ["a", "b"],
    },
  }
  config.persistence = HashPersistence
end


class ContextWrapper
  include Split::EncapsulatedHelper
end


class User
  def experimental_group
    @group ||= ContextWrapper.new.ab_test("my_experiment")
  end
end
