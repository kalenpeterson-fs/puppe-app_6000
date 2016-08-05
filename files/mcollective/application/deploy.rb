class MCollective::Application::Deploy<MCollective::Application
  description "Deploy app_6000"

   option :message,
          :description    => "Message to send",
          :arguments      => ["-m", "--message MESSAGE"],
          :type           => String,
          :required       => true

   def main
      mc = rpcclient("helloworld")

      printrpc mc.echo(:msg => configuration[:message], :options => options)

      printrpcstats
   end
end
