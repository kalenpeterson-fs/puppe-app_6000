module MCollective
  module Agent
    class Deploy<RPC::Agent

      action "deploycode" do
        validate :hostname, String
        hostname = request[:hostname]

        validate :codebase, String
        codebase = request[:codebase]

        validate :codeversion, String
        codeversion = request[:codeversion]

        validate :localcodedir, String
        localcodedir = request[:localcodedir]

        reply[:result] = "Deployed #{codebase} v#{codeversion} from #{hostname} to #{localcodedir}"

        #reply[:status] = run(
        #  "builder_5000_client #{hostname} #{codebase} #{codeversion} #{localcodedir}",
        #  :stdout => :out,
        #  :stderr => :err
        #)
      end
    end
  end
end
