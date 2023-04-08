var { faker } = require('@faker-js/faker');

// Generate a random email addresses.
console.log(faker.internet.email());

// Generate a past date.
console.log(faker.date.past().toString());

console.log(faker.address.streetAddress());
console.log(faker.address.city());
console.log(faker.address.state());

// Creating a function.
function generateAddress() {
    console.log(faker.address.streetAddress());
    console.log(faker.address.city());
    console.log(faker.address.state());
}

generateAddress();
generateAddress();