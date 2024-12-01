<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
class saleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create();

        // Define some real-world books, authors, and genres
        $books = [
            ['title' => 'The Great Gatsby', 'author' => 'F. Scott Fitzgerald', 'genre' => 'Fiction'],
            ['title' => 'To Kill a Mockingbird', 'author' => 'Harper Lee', 'genre' => 'Fiction'],
            ['title' => '1984', 'author' => 'George Orwell', 'genre' => 'Dystopian'],
            ['title' => 'Moby-Dick', 'author' => 'Herman Melville', 'genre' => 'Adventure'],
            ['title' => 'Pride and Prejudice', 'author' => 'Jane Austen', 'genre' => 'Romance'],
            ['title' => 'The Catcher in the Rye', 'author' => 'J.D. Salinger', 'genre' => 'Fiction'],
            ['title' => 'Harry Potter and the Sorcerer\'s Stone', 'author' => 'J.K. Rowling', 'genre' => 'Fantasy'],
            ['title' => 'The Hobbit', 'author' => 'J.R.R. Tolkien', 'genre' => 'Fantasy'],
            ['title' => 'The Da Vinci Code', 'author' => 'Dan Brown', 'genre' => 'Thriller'],
            ['title' => 'The Hunger Games', 'author' => 'Suzanne Collins', 'genre' => 'Dystopian'],
            ['title' => 'The Fault in Our Stars', 'author' => 'John Green', 'genre' => 'Romance'],
            ['title' => 'Sapiens: A Brief History of Humankind', 'author' => 'Yuval Noah Harari', 'genre' => 'Non-fiction'],
            ['title' => 'Becoming', 'author' => 'Michelle Obama', 'genre' => 'Memoir'],
            ['title' => 'The Alchemist', 'author' => 'Paulo Coelho', 'genre' => 'Adventure'],
            ['title' => 'The Book Thief', 'author' => 'Markus Zusak', 'genre' => 'Historical Fiction']
        ];

        $stores = ['Brooklyn', 'Queens', 'The Bronx', 'Manhattan', 'Staten Island', 'Rochester'];

        foreach ($stores as $store) {
            // Generate at least 15 sales per store
            for ($i = 0; $i < 150; $i++) {
                // Randomly pick a book from the array
                $book = $faker->randomElement($books);
                // Generate other necessary fields
                $quantity = $faker->numberBetween(1, 10); // Quantity between 1 and 10
                $price = $faker->randomFloat(2, 10, 100); // Price between 10.00 and 100.00
                $totalPrice = $quantity * $price; // Calculate totalPrice (quantity * price)

                // Insert data
                DB::table('sales')->insert([
                    'store' => $store,
                    'title' => $book['title'], // Use real-world book title
                    'author' => $book['author'], // Use real-world author
                    'genre' => $book['genre'], // Use real-world genre
                    'quantity' => $quantity, // Quantity
                    'price' => $price, // Unit price
                    'email' => $faker->email, // Random email
                    'address' => $faker->address, // Random address
                    'totalPrice' => $totalPrice, // Total price calculated
                    'zip' => $faker->postcode, // Random zip code
                    'date' => $faker->dateTimeBetween('-14 years', 'now'), // Date between 2010 and now
                    'name' => $faker->name, // Random customer name
                    'card_num' => $faker->creditCardNumber, // Random credit card number
                    'expiration' => $faker->creditCardExpirationDateString, // Random expiration date
                    'cvv' => $faker->numberBetween(100, 999), // Random 3-digit CVV
                ]);
            }
        }
    }
}