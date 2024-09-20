wget http://localhost:8100/jnlpJars/jenkins-cli.jar

cat > galin-cred.xml <<EOF
<com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
  <scope>GLOBAL</scope>
  <id>script-credentials</id>
  <description>This is an example from REST API</description>
  <username>galinnnnn</username>
  <password>
    <secret-redacted/>admin
  </password>
</com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
EOF


java -jar jenkins-cli.jar -s http://localhost:8100 -auth admin:admin create-credentials-by-xml system::system::jenkins _  < galin-cred.xml

rm jenkins-cli.jar galin-cred.xml
