function cert --description 'Generate a self signed SSL Certificate: cert [DOMAIN] [ORGANISATION]'
	openssl req -newkey rsa:2048 -sha256 -nodes -keyout PRIVATE.key -x509 -days 365 -out PUBLIC.pem -subj "/C=DE/ST=Hessen/L=Darmstadt/O=$argv[2]/CN=$argv[1]"
end
