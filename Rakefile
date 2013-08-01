# -*- ruby -*-

$LOAD_PATH << File.join(File.dirname(__FILE__),"lib")

require "rubygems"
require "rake/clean"
require "hoe"

# Hoe.plugin :compiler
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :inline
# Hoe.plugin :racc
# Hoe.plugin :rcov
# Hoe.plugin :rubyforge

Hoe.plugin :mehoe

Hoe.spec "mehoe" do
  # self.group_name = "bugslayer" # if part of an organization/group
  edit_includes ["lib/hoe/*.rb"]
  developer("Marian Eichholz", "marian@bugslayer.de")
  license "MIT" # this should match the license in the README
end

# vim: syntax=ruby
