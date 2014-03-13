# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140313232717) do

  create_table "authors", force: true do |t|
    t.string   "username",                        null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "nom"
    t.string   "prenom"
    t.string   "sexe"
    t.string   "nom_resa"
    t.boolean  "limite"
    t.boolean  "newsletter"
    t.boolean  "partenaires"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer  "date_naissance"
    t.string   "ville"
    t.string   "token"
  end

  add_index "authors", ["reset_password_token"], name: "index_authors_on_reset_password_token"

  create_table "commentaires", force: true do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commentaires", ["author_id"], name: "index_commentaires_on_author_id"

  create_table "detailresas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", force: true do |t|
    t.string   "titre"
    t.text     "description"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "dateinvitation"
    t.boolean  "validation"
    t.text     "adresse"
    t.string   "place"
    t.string   "vraiadresse"
    t.boolean  "limite"
    t.string   "emailpartenaire"
    t.boolean  "envoiemail"
    t.datetime "heuremailpartenaire"
    t.boolean  "gratuit"
    t.float    "price"
    t.float    "tva"
  end

  create_table "mailgenerals", force: true do |t|
    t.string   "titre"
    t.text     "body"
    t.datetime "datemail"
    t.boolean  "envoigeneral"
    t.string   "maildestinataire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multidates", force: true do |t|
    t.datetime "datex"
    t.integer  "placex"
    t.datetime "heuremailpartenaire"
    t.boolean  "envoiemailx"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "gratuit"
    t.float    "price"
    t.float    "tva"
  end

  create_table "offres", force: true do |t|
    t.string   "nom"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_membres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pageinvitations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagemembres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paiments", force: true do |t|
    t.integer  "charge_id"
    t.integer  "prix_ht"
    t.integer  "prix_ttc"
    t.integer  "nombre"
    t.string   "titre"
    t.datetime "date1"
    t.string   "nom"
    t.string   "prenom"
    t.string   "adresse"
    t.string   "postal"
    t.string   "ville"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "charge_id2"
    t.integer  "prix_unitaire"
  end

  create_table "profils", force: true do |t|
    t.string   "nom"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.integer  "nombreinvitations"
    t.string   "titre"
    t.string   "adresse"
    t.datetime "dateinvitation"
    t.string   "author_nom"
    t.integer  "invitation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "code"
    t.string   "author_prenom"
    t.string   "pseudo"
    t.string   "sexe"
    t.integer  "idinvitation"
    t.string   "vraiadresse"
    t.string   "email_membre"
    t.string   "emailpartenaire"
    t.boolean  "envoiemail"
    t.datetime "heuremailpartenaire"
    t.integer  "author_id"
  end

  add_index "reservations", ["invitation_id"], name: "index_reservations_on_invitation_id"

  create_table "sas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "webmasters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
