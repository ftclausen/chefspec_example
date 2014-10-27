if defined?(ChefSpec)
  def go_and_doit(resource_name)
    ChefSpec::Matchers::ResourceMatcher
      .new(:chefspec_example, :doit, resource_name)
  end
end
