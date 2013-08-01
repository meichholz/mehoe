module Hoe::Mehoe
  # VERSION assigment needs whitespace
  VERSION = "0.0.1"

  def initialize_mehoe
    @editfiles=["Rakefile", "README.txt", "Manifest.txt", "lib/*.rb" ]
  end
  
  def set_clean(ary)
    ary.include("TAGS", "t", "tt*", "*~")
  end

  def edit_includes(patterns)
    patterns.each do |pat|
      @editfiles << pat
    end
  end

  def define_mehoe_tasks
    desc "fire up editor"
    task :edit do
      sh "gvim #{@editfiles.join(' ')}"
    end

    desc "rebuild TAGS"
    task :ctags do
      sh "ctags -e -a --Ruby-kinds=+f -o TAGS -R --exclude=debian"
    end
  end
end

