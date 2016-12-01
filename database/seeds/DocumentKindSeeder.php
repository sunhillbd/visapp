<?php

use Illuminate\Database\Seeder;

class DocumentKindSeeder extends Seeder
{

    private $dks = ['Press','Exhibition Catelog','Event Poster','Screenshot of Venue Website','Press Release','Exhibition Postcard','Other'];
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Eloquent::unguard();
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        (new \App\DocumentKind())->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        foreach ($this->dks as $dk) {
            DB::table('document_kinds')->insert([

                'document_kind' => $dk,

            ]);
        }
    }
}
