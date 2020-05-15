pragma solidity ^0.4.26;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }


    // Model an Authorized Voter ...added code
    struct AuthorizedVoter {
        
        uint securePin;
        uint pid;
        bool voted;


    }

    
    // Store accounts that have voted...added code
    mapping(address => bool) public voters;

    // Store Candidates
    // Fetch Candidate
    mapping(uint => Candidate) public candidates;

    // Store Authorized Voters that have voted...added code
    mapping(uint => AuthorizedVoter) public authorizedvoters;

    // Store Candidates Count
    uint public candidatesCount;

    //Store Authorized Voters Count...Added code
    uint public AuthorizedVoterCount;


    // voted event
    event votedEvent (
        uint indexed _candidateId
    );

    constructor () public {
        addCandidate("The Duck Party (TDP)");
        addCandidate("The Wolf Party (TWF)");
        addCandidate("The Dog Party (TDG)");
        addCandidate("The Cat Party (TCP)");

        addAuthorizedVoter(2083);
        addAuthorizedVoter(3013);
        addAuthorizedVoter(2003);
        addAuthorizedVoter(2003);

    }

    function addCandidate (string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    //Function to add authorized voter....added code
    function addAuthorizedVoter (uint _securePin) private {
        
       // for(i=1; i<=authorizedvoters[AuthorizedVoterCount]; i++){

         //   if(authorizedvoters[securePin] == _securePin)

               AuthorizedVoterCount ++;
               authorizedvoters[_securePin] = AuthorizedVoter(_securePin, AuthorizedVoterCount, false);
      // } 
    }

    //////////////////////////////////////////////////////////////
    //testing images


    function vote (uint _candidateId, uint _pin) public {

        //require a valid authorized voter...added code
        require(!authorizedvoters[_pin].voted);

        //ensure only a valid pin can vote
        require(authorizedvoters[_pin].securePin == _pin);

        // require that they haven't voted before
        require(!voters[msg.sender]);

        //require(authorizedvoters[_pin]);

        // require a valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        // record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote Count
        candidates[_candidateId].voteCount ++;

       // update authorized voters vote Count
        authorizedvoters[_pin].voted = true;

        // trigger voted event
        emit votedEvent(_candidateId);
    }
}
