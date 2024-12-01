<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //
            'title' => fake()->sentence(4), // Generates a random title with 4 words
            'author' => fake()->name(), // Generates a random name for the author
            'description' => fake()->paragraph(3), // Generates a 3-sentence paragraph
            'genre' => fake()->randomElement(['Fiction', 'Non-Fiction', 'Sci-Fi', 'Romance', 'Biography']),
            'price' => fake()->randomFloat(2, 5, 100), // Random price between 5 and 100
            'file_path' => 'books/' . fake()->uuid() . '.pdf', // Mock file path for books
            'store' => fake()->company(), // Mock store or publisher
        ];
    }
}
