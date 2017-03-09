# bank-tech-test

## Index
* [Task] (#Task)
* [Installation] (#Install)
* [Usage] (#Usage)
* [Approach] (#Approach)
* [User Stories] (#Stories)
* [Possible Extensions] (#Extensions)

## <a name="Task">Task</a>
### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```


## <a name="Install">Installation</a>
* Clone from github
```
$ git clone https://github.com/BenJohnCarson/bank-tech-test.git
```

* Switch to ruby 2.3.3
```
$ rvm use 2.3.3
```

* Install gems
```
$ gem install bundler
$ bundle
```

## <a name="Usage">Usage</a>
* Open irb
```
$ irb
```

* Running tests
```
$ rspec
```

## <a name="Approach">Approach</a>

## <a name="Stories">User Stories</a>

## <a name="Extensions">Possible Extensions</a>