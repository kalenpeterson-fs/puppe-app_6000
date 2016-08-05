module MCollective
  module Agent
    class deploy<RPC::Agent

      action "echo" do
        validate :msg, String
        reply[:msg] = request[:msg]
      end

      action "deploy" do
        validate :hostname, String
        hostname = request[:hostname]

        validate :codebase, String
        codebase = request[:codebase]

        validate :codeversion, String
        codeversion = request[:codeversion]

        validate :localcodedir, String
        localcodedir = request[:localcodedir]

        reply[:status] = run(
          "builder_5000_client #{hostname} #{codebase} #{codeversion} #{localcodedir}",
          :stdout => :out,
          :stderr => :err
        )
      end
    end
  end
end
