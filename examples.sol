//Sending Ether safely

yourAddress.send(x);
//Safe against re-entrency
//2300 Gas Stipend allow only to do logs

yourAddress.transfer(x);
//Safe against re-entrency
//Same as send() but with a build
//in require()
//It's like require(yourAddress.send(x))
//Revert on failure

yourAddress.call.value(x)()
//Unlimited gas to fallback
//Enables re-entrency attack
