# example_global_build_cookbook

This repo shows patterns for implementing an organization wide build-cookbook

Pattern B gives more control at the individual repo and Pattern B moves that control more centrally.  Pattern B is more flexible but adds another layer of abstraction.

Both patterns set values in .delivery/config.json that can then be consumed by the build_cookbook. See the following files

myorg_build_cookbook/recipes/functional.rb
myorg_build_cookbook/templates/.kitchen.ec2.yml.erb

## Pattern A: 1 to rule them all

myorg_cookbook_a delegates all the work to myorg_build_cookbook through the config.json

## Pattern B: Wrappers all the way down

myorg_cookbook_b replaces the default delivery-truck dependency with
myorg_build_cookbook and repoints to an internal supermarket
