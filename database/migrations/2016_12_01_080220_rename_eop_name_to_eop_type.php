<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameEopNameToEopType extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('event_productions', function (Blueprint $table) {
           $table->renameColumn('eop_name','eop_type');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('event_productions', function (Blueprint $table) {
           $table->renameColumn('eop_type','eop_name');
        });
    }
}
