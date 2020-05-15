# CSE 4202(2019-2020) Block-Chain-Voting-Application-for-Guyana
This project is a fulfillment of a course requirement for the University of Guyana in the year 2019-2020. 
It entails building a block chain based application to allowing voting in the country of Guyana.

## Background
### Why is it bad to build a voting application with centralized application?
 - Votes can change
 - Election rules can change
 
 ### What are the aims of a voting application?
  - Votes should only be counted once.
  - Votes should not change once the voter has voted.
  - The most votes should win.
  
 ### How is a block chain better than a centralized application?
   - Data on the block chain is decentralized and distributed across nodes.
   - Nodes all share the responsibilities of a central server:
      - Each node contains a copy of all the data on the block chain and they work together to maintain the public ledger.
   - A block chain is essentially a network and databased intertwined into one.
   - Code on the block chain can not be changed once deployed.
   
## About the Application
 - Makes use of the Ethereum Block chain network
 - The election is deployed to the Block chain with "Smart Contracts.
 - Smart Contracts can be written in a language called "Solidity".
 - This project consists of a front end application rendered through the browser and connected to a local block chain.
 
 ## Design of the Application
 - The front end displays 4 sample candidates that can be voted for.
 - The voter selects from a drop down the candidate of their choice.
 - The voter the enters a secure pin.
    - In the real world application of this project, these pins would be preset and issued to individual voters.
    - The pin authroizes the user to vote with any unused account on the blockchain.
    - The pin can only be used once.
  - The voter then selects the 'Vote' button and a new page loads which allows them to select another button - "View Election Results",
  which displays the updated vote count after the voter would have voted.
  
  
# Instructions for running this project

## Step 1: Install the Different External Depedencies
- Install node.js which can be found at https://nodejs.org/en/
- Install truffle by going to the terminal and typing "npm install -g truffle@v4.1.14"
    - Truffle allows us to build smart contracts and deploy them to the block chain. 
- Install Ganache which can be downloaded at https://www.trufflesuite.com/ganache
    - Ganache is an in memory block chain that will be used to test out the application.
- Install the "metamask" extension in google chrome which can be found at https://chrome.google.com/webstore/search/metamask
    - Ensure that metamask is enabled after installing it in chrome.
    
## Step 2: Download the project

## Step 3: Install the project-dependencies
Execute command prompt from within the project directory and type - "npm install".

## Step 4: Start Ganache
Ganache can be started through the GUI client that came with its installation. Once started you now have 10 testing accounts
running on a block chain in local memory.

## Step 4: Compile and Deploy the Election Smart Contract
Open command prompt in the project directory and type "truffle migrate --reset".
#### N.B
You must run this command everytime Ganache is restarted.

## Step 5: Configure Metamask
 - Sign up for an account on metamask.
 - Login and connect Metamask to your local blockchain:
    - Create a custom rpc and input the url available in the Ganache interface - "http://127.0.0.1:7545"
    - Open "Settings", click on "Connections" and add "Localhost" as a connection.
- Now import an account from your Ganache block chain by clicking on the key icon in the Ganache UI and copying the private key
to the Metamask extension, and then clicking save.
- The account should now show the same amount of ether that is reflected on the blockchain.

## Step 6: Run the Front End Application
Open command prompt and type "npm run dev"
  - This will start the local server in your browser at http://localhost:3000
You can now vote using this Application.

### How to vote with the application:
- Select an imported account in metamask then reload the page.
- Select the candidate you wish to vote for from the 'Select  Candidate' drop down option.
- Enter the secure pin.
      - Secure pins available for testing are: 2083, 3013, 2003.
- Click the "Vote" button.
- On the newly loaded page, click the "View Election Results" Button to see the updated vote counts.
- You can repeat the voting process two more times with the unused pins, but after that you must go back to Step 4.

# Special Thanks must be extended to Gregory from DAPP University whose tutorials and code repository were key to this project
The link to his website is: https://www.dappuniversity.com/
The link to the code repository that served as guidance is: https://github.com/dappuniversity/election

