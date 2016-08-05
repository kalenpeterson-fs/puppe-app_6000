metadata :name        => 'deploy',
         :description => 'Deploy app_6000',
         :author      => 'Kalen Peterson',
         :license     => 'Apache 2.0',
         :version     => '0.1',
         :url         => 'https://github.com/kalenpeterson-fs/puppe-app_6000',
         :timeout     => 60

action 'echo', :description => 'Echos back any message it receives' do
    display :always

    input :msg,
          :prompt      => 'Message',
          :description => 'Your message',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    output :msg,
        :description => 'Your message',
        :display_as  => 'Message',
        :default     => ''
end
