# ChatBot Automation

	Pre Reguisite: 
		a. A service principal account with owner role (client id and secret created)
		b. Chatbot app name registared with AAD (appid and secret created)

	Automation script configuration:  
		a. PFA Ansible playbook (qnaplaybok.yml) which can be run on cloud bash shell or any vm having ansible
		b. In this playbook update variables for clientid/secret/tenant/subscription of service principal
		c. Also declare resourcegroupname/chatbot name/qnamkername/storageaccountname/ chatbotappid/chatbotappsecret
		d. Also upload and share urls where knowledgebase can be find for this qna chatbot. I have uploaded pdf on github                                and shared sbi portal url for knowledge base for my PPF chatbot
		e. Template files and othe KB docs are uploaded on github at: 
                        https://github.com/rajeev-world/BigDataInfraAzure/tree/master/rajeev/chatbot

	Automation Script Flow:
		a. It created qnamker cognitive service and qnamker app from template i uplaoded on github with runtime param in                              playbook task using Ansible Azure arm module
		b. It created knoweledge base in this qnamake after getting the cognitive service key(key is accessed after generation   		     oauth2 access token) and then and keeps checking till  KB is created and  then publish it
		c. it  then get KB id, KB endpoint auth key, and endpoint hostname 
		d. Then it creates webapp bot with config details given in starting and update it with KB details from above step

IF EVERYTHING IS SUCCESSFUL WE GET CHATBOT READY TO ANSWER YOUR QUESTIONS ON PPF.

	Testing the Chatbot:
		WE CAN TEST IT "Test in Web chat" section of Webapp bot OR can integrate the with Any channel like telegram/skype. 
		Few Questions:
		1. What is PPF?
		2. Who all can invest in PPF?
		3. What is interest rate on PPF?


				
