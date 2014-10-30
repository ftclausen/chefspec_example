if defined?(ChefSpec)
  def create_chefspec_example(resource_name)
    ChefSpec::Matchers::ResourceMatcher
      .new(:chefspec_example, :doit, resource_name)
  end
end
