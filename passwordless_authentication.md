Procure Ec2 Instances for Ansible Master preferibly ubuntu then from Loacl machine 

Using Public Key

ssh-copy-id -f "-o IdentityFile <PATH TO PEM FILE>" ubuntu@<INSTANCE-PUBLIC-IP>

ssh-copy-id: This is the command used to copy your public key to a remote machine.
-f: This flag forces the copying of keys, which can be useful if you have keys already set up and want to overwrite them.
"-o IdentityFile ": This option specifies the identity file (private key) to use for the connection. The -o flag passes this option to the underlying ssh command.
ubuntu@: This is the username (ubuntu) and the IP address of the remote server you want to access.

eg : 

chmod 400 'master.pem'  
ssh-copy-id -f "-o IdentityFile ~/Desktop/AWS/master.pem" ubuntu@52.90.119.134 --> Replace key file destination and IP address 
ssh -o ' IdentityFile ~/Desktop/AWS/master.pem' 'ubuntu@52.90.119.134'   

To SCP the master key file to ec2 machine uuse the below command : 

scp master.pem ubuntu@52.90.119.134:/home/ubuntu 

Now you can connect to other systems using this key if other ec2 instances are using it 

Using Password

Go to the file /etc/ssh/sshd_config.d/60-cloudimg-settings.conf
Update PasswordAuthentication yes