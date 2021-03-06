class Eye::Dsl::ProcessOpts < Eye::Dsl::Opts

  def monitor_children(&block)
    opts = Eye::Dsl::ChildProcessOpts.new
    opts.instance_eval(&block)
    @config[:monitor_children] ||= {}
    @config[:monitor_children].merge!(opts.config)
  end

  def xmonitor_children(&block); end

  def application
    parent.try(:parent)
  end
  alias :app :application

  def group
    parent
  end

end