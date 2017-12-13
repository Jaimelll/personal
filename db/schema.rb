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

ActiveRecord::Schema.define(version: 20171213215119) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id", limit: 19, precision: 19
    t.string "author_type"
    t.integer "author_id", limit: 19, precision: 19
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "i_act_adm_com_aut_typ_aut_id"
    t.index ["namespace"], name: "i_act_adm_com_nam"
    t.index ["resource_type", "resource_id"], name: "i_act_adm_com_res_typ_res_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", precision: 38, default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "categoria", precision: 38, default: 1, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_adm_use_res_pas_tok", unique: true
  end

  create_table "dmrs_additional_ct_objects", id: false, force: :cascade do |t|
    t.string "type_ovid", limit: 36, null: false
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 36, null: false
    t.string "object_type", limit: 10
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["type_ovid"], name: "additional_class_types_pk_idx"
  end

  create_table "dmrs_aggr_func_dimensions", id: false, force: :cascade do |t|
    t.string "aggregate_function_id", limit: 70, null: false
    t.string "aggregate_function_name", limit: 256, null: false
    t.string "aggregate_function_ovid", limit: 36, null: false
    t.string "dimension_id", limit: 70, null: false
    t.string "dimension_name", limit: 256, null: false
    t.string "dimension_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["aggregate_function_ovid"], name: "aggr_func_dimensions_fk_idx"
  end

  create_table "dmrs_aggr_func_levels", id: false, force: :cascade do |t|
    t.string "aggregate_function_id", limit: 70, null: false
    t.string "aggregate_function_name", limit: 256, null: false
    t.string "aggregate_function_ovid", limit: 36, null: false
    t.string "level_id", limit: 70, null: false
    t.string "level_name", limit: 256, null: false
    t.string "level_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["aggregate_function_ovid"], name: "aggr_func_levels_fk_idx"
  end

  create_table "dmrs_attributes", id: false, force: :cascade do |t|
    t.string "attribute_name", limit: 256, null: false
    t.string "object_id", limit: 80, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "mandatory", limit: 1, null: false
    t.string "datatype_kind", limit: 20, null: false
    t.string "value_type", limit: 10
    t.string "formula", limit: 4000
    t.string "scopeentity_id", limit: 70
    t.string "scopeentity_ovid", limit: 36
    t.string "domain_id", limit: 70
    t.string "domain_ovid", limit: 36
    t.string "logical_type_id", limit: 70
    t.string "logical_type_ovid", limit: 36
    t.string "distinct_type_id", limit: 70
    t.string "distinct_type_ovid", limit: 36
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "collection_type_id", limit: 70
    t.string "collection_type_ovid", limit: 36
    t.string "check_constraint_name", limit: 256
    t.string "default_value", limit: 256
    t.string "use_domain_constraint", limit: 1
    t.string "domain_name", limit: 256
    t.string "logical_type_name", limit: 256
    t.string "structured_type_name", limit: 256
    t.string "distinct_type_name", limit: 256
    t.string "collection_type_name", limit: 256
    t.string "synonyms", limit: 4000
    t.string "preferred_abbreviation", limit: 256
    t.string "relationship_id", limit: 100
    t.string "relationship_ovid", limit: 36
    t.string "entity_name", limit: 256, null: false
    t.string "pk_flag", limit: 1
    t.string "fk_flag", limit: 1
    t.string "relationship_name", limit: 256
    t.decimal "sequence", null: false
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.string "char_units", limit: 4
    t.string "native_type", limit: 60
    t.decimal "t_scale"
    t.string "data_source", limit: 256
    t.string "scopeentity_name", limit: 256
    t.string "sensitive_type_ovid", limit: 36
    t.string "sensitive_data_descr", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["container_ovid"], name: "attributes_container_ovid_idx"
    t.index ["ovid"], name: "attributes_pk_idx"
  end

  create_table "dmrs_avt", id: false, force: :cascade do |t|
    t.string "dataelement_id", limit: 70, null: false
    t.string "dataelement_ovid", limit: 36, null: false
    t.string "type", limit: 10
    t.decimal "sequence", null: false
    t.string "value", limit: 256, null: false
    t.string "short_description", limit: 256
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "dataelement_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["dataelement_ovid"], name: "avt_dataelement_ovid_idx"
  end

  create_table "dmrs_business_info", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.index ["business_info_ovid"], name: "business_info_pk_idx"
  end

  create_table "dmrs_change_request_elements", id: false, force: :cascade do |t|
    t.string "change_request_id", limit: 70, null: false
    t.string "change_request_ovid", limit: 36, null: false
    t.string "change_request_name", limit: 256, null: false
    t.string "element_id", limit: 70, null: false
    t.string "element_ovid", limit: 36, null: false
    t.string "element_model_name", limit: 256, null: false
    t.string "element_name", limit: 256, null: false
    t.string "element_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["change_request_ovid"], name: "change_req_elements_fk1_idx"
    t.index ["element_ovid"], name: "change_req_elements_fk2_idx"
  end

  create_table "dmrs_change_requests", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "change_request_id", limit: 70, null: false
    t.string "change_request_ovid", limit: 36, null: false
    t.string "change_request_name", limit: 256, null: false
    t.string "request_status", limit: 30
    t.string "request_date_string", limit: 30
    t.string "completion_date_string", limit: 30
    t.string "is_completed", limit: 1
    t.string "reason", limit: 4000
    t.index ["change_request_ovid"], name: "change_requests_pk_idx"
  end

  create_table "dmrs_check_constraints", id: false, force: :cascade do |t|
    t.string "dataelement_id", limit: 70, null: false
    t.string "dataelement_ovid", limit: 36, null: false
    t.string "type", limit: 10
    t.decimal "sequence", null: false
    t.string "constraint_name", limit: 256
    t.string "text", limit: 4000, null: false
    t.string "database_type", limit: 60, null: false
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "dataelement_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["dataelement_ovid"], name: "cc_dataelement_ovid_dx"
  end

  create_table "dmrs_classification_types", id: false, force: :cascade do |t|
    t.string "type_id", limit: 70, null: false
    t.string "type_ovid", limit: 36, null: false
    t.string "type_name", limit: 256, null: false
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.index ["type_ovid"], name: "class_types_pk_idx"
  end

  create_table "dmrs_collection_types", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "collection_type_id", limit: 70, null: false
    t.string "collection_type_ovid", limit: 36, null: false
    t.string "collection_type_name", limit: 256, null: false
    t.string "c_type", limit: 30
    t.string "datatype_id", limit: 70
    t.string "datatype_ovid", limit: 36
    t.string "datatype_name", limit: 256
    t.string "dt_type", limit: 30
    t.string "dt_ref", limit: 1
    t.decimal "max_element"
    t.string "predefined", limit: 1
    t.string "char_units", limit: 4
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.string "datatype_kind", limit: 20
    t.string "domain_name", limit: 256
    t.index ["collection_type_ovid"], name: "dmrs_coll_types_pk_idx"
  end

  create_table "dmrs_column_groups", id: false, force: :cascade do |t|
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.decimal "sequence", null: false
    t.string "columngroup_id", limit: 70, null: false
    t.string "columngroup_ovid", limit: 36, null: false
    t.string "columngroup_name", limit: 256, null: false
    t.string "columns", limit: 4000
    t.string "notes", limit: 4000
    t.string "table_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["table_ovid"], name: "column_groups_fk_idx"
  end

  create_table "dmrs_column_ui", id: false, force: :cascade do |t|
    t.string "label", limit: 256
    t.string "format_mask", limit: 50
    t.integer "form_display_width", limit: 4, precision: 4
    t.integer "form_maximum_width", limit: 4, precision: 4
    t.string "display_as", limit: 30
    t.integer "form_height", limit: 4, precision: 4
    t.string "displayed_on_forms", limit: 1
    t.string "displayed_on_reports", limit: 1
    t.string "read_only", limit: 1
    t.string "help_text", limit: 4000
    t.string "object_id", limit: 70, null: false
    t.string "object_ovid", limit: 36, null: false
    t.string "object_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid"], name: "column_ui_fk_idx"
  end

  create_table "dmrs_columns", id: false, force: :cascade do |t|
    t.string "column_name", limit: 256, null: false
    t.string "abbreviation", limit: 30
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "mandatory", limit: 1, null: false
    t.string "datatype_kind", limit: 20, null: false
    t.string "value_type", limit: 10
    t.string "computed", limit: 1
    t.string "formula", limit: 4000
    t.string "scopeentity_id", limit: 70
    t.string "scopeentity_ovid", limit: 36
    t.string "domain_id", limit: 70
    t.string "domain_ovid", limit: 36
    t.string "logical_type_id", limit: 70
    t.string "logical_type_ovid", limit: 36
    t.string "distinct_type_id", limit: 70
    t.string "distinct_type_ovid", limit: 36
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "collection_type_id", limit: 70
    t.string "collection_type_ovid", limit: 36
    t.string "check_constraint_name", limit: 256
    t.string "default_value", limit: 256
    t.string "use_domain_constraint", limit: 1
    t.string "domain_name", limit: 256
    t.string "logical_type_name", limit: 256
    t.string "structured_type_name", limit: 256
    t.string "distinct_type_name", limit: 256
    t.string "collection_type_name", limit: 256
    t.string "uses_default", limit: 1
    t.string "engineer", limit: 1, null: false
    t.string "table_name", limit: 256, null: false
    t.string "pk_flag", limit: 1
    t.string "fk_flag", limit: 1
    t.string "native_type", limit: 60
    t.decimal "sequence", null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.string "char_units", limit: 4
    t.string "personally_id_information", limit: 1
    t.string "sensitive_information", limit: 1
    t.string "sensitive_type_ovid", limit: 36
    t.string "sensitive_data_descr", limit: 256
    t.string "contains_pii", limit: 3
    t.string "mask_type", limit: 10
    t.string "mask_tymplate_ovid", limit: 36
    t.string "mask_for_none_production", limit: 12
    t.string "scopeentity_name", limit: 256
    t.string "auto_increment_column", limit: 1
    t.string "identity_column", limit: 1
    t.string "auto_increment_generate_always", limit: 1
    t.decimal "auto_increment_start_with"
    t.decimal "auto_increment_increment_by"
    t.decimal "auto_increment_min_value"
    t.decimal "auto_increment_max_value"
    t.string "auto_increment_cycle", limit: 1
    t.string "auto_increment_disable_cache", limit: 1
    t.decimal "auto_increment_cache"
    t.string "auto_increment_order", limit: 1
    t.string "auto_increment_sequence_name", limit: 256
    t.string "auto_increment_trigger_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["container_ovid"], name: "columns_fk_idx"
    t.index ["ovid"], name: "columns_pk_idx"
  end

  create_table "dmrs_constr_fk_columns", id: false, force: :cascade do |t|
    t.string "fk_id", limit: 70, null: false
    t.string "fk_ovid", limit: 36, null: false
    t.string "column_id", limit: 70, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "index_name", limit: 256, null: false
    t.string "table_name", limit: 256, null: false
    t.string "column_name", limit: 256, null: false
    t.decimal "sequence", null: false
    t.string "sort_order", limit: 4
    t.string "design_ovid", limit: 36, null: false
    t.index ["fk_ovid"], name: "constr_fk_columns_fk_idx"
  end

  create_table "dmrs_constr_index_columns", id: false, force: :cascade do |t|
    t.string "index_id", limit: 70, null: false
    t.string "index_ovid", limit: 36, null: false
    t.string "column_id", limit: 70, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "index_name", limit: 256, null: false
    t.string "table_name", limit: 256, null: false
    t.string "column_name", limit: 256, null: false
    t.decimal "sequence", null: false
    t.string "sort_order", limit: 4
    t.string "design_ovid", limit: 36, null: false
    t.index ["index_ovid"], name: "constr_index_columns_fk_idx"
  end

  create_table "dmrs_contact_emails", id: false, force: :cascade do |t|
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "email_id", limit: 70, null: false
    t.string "email_ovid", limit: 36, null: false
    t.string "email_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "contact_emails_fk1_idx"
  end

  create_table "dmrs_contact_locations", id: false, force: :cascade do |t|
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "location_id", limit: 70, null: false
    t.string "location_ovid", limit: 36, null: false
    t.string "location_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "contact_locations_fk1_idx"
  end

  create_table "dmrs_contact_res_locators", id: false, force: :cascade do |t|
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "resource_locator_id", limit: 70, null: false
    t.string "resource_locator_ovid", limit: 36, null: false
    t.string "resource_locator_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "contact_res_locators_fk1_idx"
  end

  create_table "dmrs_contact_telephones", id: false, force: :cascade do |t|
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "telephone_id", limit: 70, null: false
    t.string "telephone_ovid", limit: 36, null: false
    t.string "telephone_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "contact_telephones_fk1_idx"
  end

  create_table "dmrs_contacts", id: false, force: :cascade do |t|
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "contacts_pk_idx"
  end

  create_table "dmrs_cube_dimensions", id: false, force: :cascade do |t|
    t.string "cube_id", limit: 70, null: false
    t.string "cube_name", limit: 256, null: false
    t.string "cube_ovid", limit: 36, null: false
    t.string "dimension_id", limit: 70, null: false
    t.string "dimension_name", limit: 256, null: false
    t.string "dimension_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["cube_ovid"], name: "cube_dimensions_fk1_idx"
    t.index ["dimension_ovid"], name: "cube_dimensions_fk2_idx"
  end

  create_table "dmrs_cubes", id: false, force: :cascade do |t|
    t.string "cube_id", limit: 70, null: false
    t.string "cube_name", limit: 256, null: false
    t.string "cube_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "part_dimension_id", limit: 70
    t.string "part_dimension_name", limit: 256
    t.string "part_dimension_ovid", limit: 36
    t.string "part_hierarchy_id", limit: 70
    t.string "part_hierarchy_name", limit: 256
    t.string "part_hierarchy_ovid", limit: 36
    t.string "part_level_id", limit: 70
    t.string "part_level_name", limit: 256
    t.string "part_level_ovid", limit: 36
    t.string "full_cube_slice_id", limit: 70
    t.string "full_cube_slice_name", limit: 256
    t.string "full_cube_slice_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "is_compressed_composites", limit: 1
    t.string "is_global_composites", limit: 1
    t.string "is_partitioned", limit: 1
    t.string "is_virtual", limit: 1
    t.string "part_description", limit: 4000
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["cube_ovid"], name: "cubes_pk_idx"
    t.index ["model_ovid"], name: "cubes_fk_idx"
  end

  create_table "dmrs_data_flow_diagram_infos", id: false, force: :cascade do |t|
    t.string "diagram_id", limit: 70, null: false
    t.string "diagram_ovid", limit: 36, null: false
    t.string "diagram_name", limit: 256, null: false
    t.string "info_store_id", limit: 70, null: false
    t.string "info_store_ovid", limit: 36, null: false
    t.string "info_store_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["diagram_ovid"], name: "dfd_infos_fk1_idx"
    t.index ["info_store_ovid"], name: "dfd_infos_fk2_idx"
  end

  create_table "dmrs_designs", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.datetime "date_published", precision: 6
    t.string "published_by", limit: 80
    t.decimal "persistence_version", precision: 5, scale: 2, null: false
    t.string "version_comments", limit: 4000
    t.index ["design_id", "design_ovid", "design_name", "version_comments", "date_published"], name: "designs__idx"
    t.index ["design_ovid"], name: "designs_pk_idx"
  end

  create_table "dmrs_diagram_elements", id: false, force: :cascade do |t|
    t.string "name", limit: 256, null: false
    t.string "long_name", limit: 256
    t.string "type", limit: 30, null: false
    t.string "geometry_type", limit: 10, null: false
    t.string "object_id", limit: 80, null: false
    t.string "ovid", limit: 36, null: false
    t.string "view_id", limit: 70
    t.string "source_id", limit: 70
    t.string "source_ovid", limit: 36
    t.string "source_view_id", limit: 70
    t.string "target_id", limit: 70
    t.string "target_ovid", limit: 36
    t.string "target_view_id", limit: 70
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.decimal "location_x", precision: 10, scale: 2
    t.decimal "location_y", precision: 10, scale: 2
    t.decimal "height", precision: 10, scale: 2
    t.decimal "width", precision: 10, scale: 2
    t.integer "bg_color", limit: 10, precision: 10
    t.integer "fg_color", limit: 10, precision: 10
    t.string "use_default_color", limit: 1
    t.string "formatting", limit: 4000
    t.string "points", limit: 4000
    t.string "diagram_ovid", limit: 36, null: false
    t.string "diagram_id", limit: 70, null: false
    t.string "diagram_name", limit: 256, null: false
    t.string "source_name", limit: 256
    t.string "target_name", limit: 256
    t.string "model_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["diagram_ovid"], name: "diagram_elements_fk_idx"
    t.index ["name", "ovid", "type", "model_ovid", "diagram_ovid"], name: "diagram_elements_name_idx"
    t.index ["ovid"], name: "diagram_elements_pk_idx"
  end

  create_table "dmrs_diagrams", id: false, force: :cascade do |t|
    t.string "diagram_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "diagram_type", limit: 12, null: false
    t.string "is_display", limit: 1, null: false
    t.string "visible", limit: 1, null: false
    t.string "master_diagram_id", limit: 70
    t.string "master_diagram_ovid", limit: 36
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "subview_id", limit: 70
    t.string "subview_ovid", limit: 36
    t.string "subview_name", limit: 256
    t.string "display_id", limit: 70
    t.string "display_ovid", limit: 36
    t.string "display_name", limit: 256
    t.string "notation", limit: 30
    t.string "show_all_details", limit: 1
    t.string "show_names_only", limit: 1
    t.string "show_elements", limit: 1
    t.string "show_datatype", limit: 1
    t.string "show_keys", limit: 1
    t.string "autoroute", limit: 1
    t.string "box_in_box", limit: 1
    t.string "master_diagram_name", limit: 256
    t.text "diagram_svg"
    t.binary "diagram_pdf"
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "diagrams_fk_idx"
    t.index ["ovid", "diagram_name", "diagram_type", "is_display"], name: "diagrams_name_idx"
    t.index ["ovid"], name: "diagrams_pk_idx"
  end

  create_table "dmrs_dimension_calc_attrs", id: false, force: :cascade do |t|
    t.string "dimension_id", limit: 70, null: false
    t.string "dimension_name", limit: 256, null: false
    t.string "dimension_ovid", limit: 36, null: false
    t.string "calc_attribute_id", limit: 70, null: false
    t.string "calc_attribute_name", limit: 256, null: false
    t.string "calc_attribute_ovid", limit: 36, null: false
    t.string "calculated_expr", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["dimension_ovid"], name: "dimension_calc_attrs_fk_idx"
  end

  create_table "dmrs_dimension_levels", id: false, force: :cascade do |t|
    t.string "dimension_id", limit: 70, null: false
    t.string "dimension_name", limit: 256, null: false
    t.string "dimension_ovid", limit: 36, null: false
    t.string "level_id", limit: 70, null: false
    t.string "level_name", limit: 256, null: false
    t.string "level_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["dimension_ovid"], name: "dimension_levels_fk_idx"
  end

  create_table "dmrs_dimensions", id: false, force: :cascade do |t|
    t.string "dimension_id", limit: 70, null: false
    t.string "dimension_name", limit: 256, null: false
    t.string "dimension_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "base_entity_id", limit: 70
    t.string "base_entity_name", limit: 256
    t.string "base_entity_ovid", limit: 36
    t.string "base_level_id", limit: 70
    t.string "base_level_name", limit: 256
    t.string "base_level_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["dimension_ovid"], name: "dimensions_pk_idx"
    t.index ["model_ovid"], name: "dimensions_fk_idx"
  end

  create_table "dmrs_distinct_types", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "distinct_type_id", limit: 70, null: false
    t.string "distinct_type_ovid", limit: 36, null: false
    t.string "distinct_type_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70
    t.string "logical_type_ovid", limit: 36
    t.string "logical_type_name", limit: 256
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.index ["distinct_type_ovid"], name: "distinct_types_pk_idx"
  end

  create_table "dmrs_document_elements", id: false, force: :cascade do |t|
    t.string "document_id", limit: 70, null: false
    t.string "document_ovid", limit: 36, null: false
    t.string "document_name", limit: 256, null: false
    t.string "element_id", limit: 70, null: false
    t.string "element_ovid", limit: 36, null: false
    t.string "element_name", limit: 256, null: false
    t.string "element_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["document_ovid"], name: "document_elements_fk1_idx"
    t.index ["element_ovid"], name: "document_elements_fk2_idx"
  end

  create_table "dmrs_documents", id: false, force: :cascade do |t|
    t.string "document_id", limit: 70, null: false
    t.string "document_ovid", limit: 36, null: false
    t.string "document_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "parent_id", limit: 70
    t.string "parent_ovid", limit: 36
    t.string "parent_name", limit: 256
    t.string "doc_reference", limit: 2000
    t.string "doc_type", limit: 1000
    t.string "design_ovid", limit: 36, null: false
    t.index ["document_ovid"], name: "documents_pk_idx"
  end

  create_table "dmrs_domain_avt", id: false, force: :cascade do |t|
    t.string "domain_id", limit: 70, null: false
    t.string "domain_ovid", limit: 36, null: false
    t.decimal "sequence", null: false
    t.string "value", limit: 256, null: false
    t.string "short_description", limit: 256
    t.string "domain_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["domain_ovid"], name: "domain_avt_fk_idx"
  end

  create_table "dmrs_domain_check_constraints", id: false, force: :cascade do |t|
    t.string "domain_id", limit: 70, null: false
    t.string "domain_ovid", limit: 36, null: false
    t.decimal "sequence", null: false
    t.string "text", limit: 4000, null: false
    t.string "database_type", limit: 60, null: false
    t.string "domain_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["domain_ovid"], name: "domain_check_constr_fk_idx"
  end

  create_table "dmrs_domain_value_ranges", id: false, force: :cascade do |t|
    t.string "domain_id", limit: 70, null: false
    t.string "domain_ovid", limit: 36, null: false
    t.decimal "sequence", null: false
    t.string "begin_value", limit: 256, null: false
    t.string "end_value", limit: 256
    t.string "short_description", limit: 256
    t.string "domain_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["domain_ovid"], name: "domain_value_ranges_fk_idx"
  end

  create_table "dmrs_domains", id: false, force: :cascade do |t|
    t.string "domain_id", limit: 70, null: false
    t.string "domain_name", limit: 256, null: false
    t.string "ovid", limit: 36, null: false
    t.string "synonyms", limit: 4000
    t.string "logical_type_id", limit: 70, null: false
    t.string "logical_type_ovid", limit: 36, null: false
    t.decimal "t_size"
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.string "native_type", limit: 60
    t.string "lt_name", limit: 256, null: false
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "default_value", limit: 256
    t.string "unit_of_measure", limit: 30
    t.string "char_units", limit: 4
    t.string "sensitive_type_ovid", limit: 36
    t.string "sensitive_data_descr", limit: 256
    t.index ["domain_id"], name: "domains_pk_idx"
    t.index ["logical_type_ovid"], name: "domains_fk_idxv1"
    t.index ["ovid"], name: "domains_pk1_idx"
  end

  create_table "dmrs_dynamic_properties", id: false, force: :cascade do |t|
    t.string "design_ovid", limit: 36
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "object_name", limit: 100, null: false
    t.string "object_type", limit: 100, null: false
    t.string "name", limit: 256
    t.string "value", limit: 4000
  end

  create_table "dmrs_emails", id: false, force: :cascade do |t|
    t.string "email_id", limit: 70, null: false
    t.string "email_ovid", limit: 36, null: false
    t.string "email_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "email_address", limit: 2000
    t.string "email_type", limit: 1000
    t.string "design_ovid", limit: 36, null: false
    t.index ["email_ovid"], name: "emails_pk_idx"
  end

  create_table "dmrs_entities", id: false, force: :cascade do |t|
    t.string "entity_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "structured_type_name", limit: 256
    t.decimal "number_data_elements"
    t.string "classification_type_id", limit: 70
    t.string "classification_type_ovid", limit: 36
    t.string "classification_type_name", limit: 256
    t.string "allow_type_substitution", limit: 1
    t.string "create_surrogate_key", limit: 1
    t.decimal "min_volume"
    t.decimal "expected_volume"
    t.decimal "max_volume"
    t.decimal "growth_rate_percents"
    t.string "growth_rate_interval", limit: 5
    t.string "normal_form", limit: 6
    t.string "temporary_object_scope", limit: 30
    t.string "adequately_normalized", limit: 1
    t.string "substitution_parent", limit: 70
    t.string "substitution_parent_ovid", limit: 36
    t.string "synonyms", limit: 4000
    t.string "synonym_to_display", limit: 60
    t.string "preferred_abbreviation", limit: 256
    t.string "supertypeentity_id", limit: 70
    t.string "supertypeentity_ovid", limit: 36
    t.string "engineering_strategy", limit: 25
    t.string "owner", limit: 50
    t.string "entity_source", limit: 200
    t.string "model_name", limit: 256
    t.string "substitution_parent_name", limit: 256
    t.string "supertypeentity_name", limit: 256
    t.string "subt_subtree_generation", limit: 30
    t.string "subt_apply_to_model_ovid", limit: 36
    t.string "subt_references", limit: 30
    t.string "subt_attributes_inheritance", limit: 30
    t.string "subt_generate_discriminator", limit: 1
    t.string "subt_use_attribute_id", limit: 36
    t.string "subt_discriminator_column_name", limit: 30
    t.string "subt_discriminator_value", limit: 50
    t.string "subt_complete_subtypes", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.string "remotedesign_id", limit: 256
    t.string "remotemodel_id", limit: 256
    t.string "remoteobject_id", limit: 256
    t.string "remoteobjectrltvstoragename", limit: 256
    t.string "usedasremoteobject", limit: 1
    t.index ["classification_type_ovid"], name: "entities_fk_idx"
    t.index ["model_ovid"], name: "entities_fk_idxv1"
    t.index ["ovid"], name: "entities_pk_idx"
  end

  create_table "dmrs_entity_arcs", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "arc_name", limit: 256, null: false
    t.string "entity_id", limit: 36, null: false
    t.string "model_name", limit: 256
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid", "arc_name"], name: "entity_arc_name_idx"
  end

  create_table "dmrs_entityviews", id: false, force: :cascade do |t|
    t.string "entityview_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "structured_type_name", limit: 256
    t.string "user_defined", limit: 1, null: false
    t.string "view_type", limit: 12
    t.string "model_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.string "remotedesign_id", limit: 256
    t.string "remotemodel_id", limit: 256
    t.string "remoteobject_id", limit: 256
    t.string "remoteobjectrltvstoragename", limit: 256
    t.string "usedasremoteobject", limit: 1
    t.index ["model_ovid"], name: "entityviews_fk_idx"
    t.index ["ovid"], name: "entityviews_pk_idx"
  end

  create_table "dmrs_events", id: false, force: :cascade do |t|
    t.string "event_id", limit: 70, null: false
    t.string "event_ovid", limit: 36, null: false
    t.string "event_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "flow_id", limit: 70
    t.string "flow_ovid", limit: 36
    t.string "flow_name", limit: 256
    t.string "event_type", limit: 30
    t.string "times_when_run", limit: 100
    t.string "day_of_week", limit: 100
    t.string "months", limit: 100
    t.integer "frequency", limit: 10, precision: 10
    t.integer "time_frequency", limit: 10, precision: 10
    t.integer "minute", limit: 2, precision: 2
    t.integer "hour", limit: 2, precision: 2
    t.integer "day_of_month", limit: 2, precision: 2
    t.boolean "quarter"
    t.integer "year", limit: 4, precision: 4
    t.string "on_day", limit: 1
    t.string "at_time", limit: 1
    t.string "fiscal", limit: 1
    t.string "text", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["event_ovid"], name: "events_pk_idx"
    t.index ["flow_ovid"], name: "events_fk_flow_idx"
    t.index ["model_ovid"], name: "events_fk_model_idx"
  end

  create_table "dmrs_existence_dep", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "dependency_name", limit: 256, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "generation_level", limit: 20, null: false
    t.string "discriminator_column_ovid", limit: 36
    t.string "discriminator_column_name", limit: 256
    t.string "model_name", limit: 256
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid", "dependency_name"], name: "existence_dep_name_idx"
  end

  create_table "dmrs_existence_dep_columns", id: false, force: :cascade do |t|
    t.string "dependency_ovid", limit: 36, null: false
    t.string "discriminator_value", limit: 50
    t.string "table_name", limit: 256, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "column_name", limit: 256, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "depend_as_mandatory", limit: 1
    t.string "depend", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["dependency_ovid", "table_ovid"], name: "existence_dep_col_name_idx"
  end

  create_table "dmrs_ext_agent_ext_datas", id: false, force: :cascade do |t|
    t.string "external_agent_id", limit: 70, null: false
    t.string "external_agent_ovid", limit: 36, null: false
    t.string "external_agent_name", limit: 256, null: false
    t.string "external_data_id", limit: 70, null: false
    t.string "external_data_ovid", limit: 36, null: false
    t.string "external_data_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["external_agent_ovid"], name: "ext_agent_ext_datas_fk1_idx"
    t.index ["external_data_ovid"], name: "ext_agent_ext_datas_fk2_idx"
  end

  create_table "dmrs_ext_agent_flows", id: false, force: :cascade do |t|
    t.string "external_agent_id", limit: 70, null: false
    t.string "external_agent_ovid", limit: 36, null: false
    t.string "external_agent_name", limit: 256, null: false
    t.string "flow_id", limit: 70, null: false
    t.string "flow_ovid", limit: 36, null: false
    t.string "flow_name", limit: 256, null: false
    t.string "incoming_outgoing_flag", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["external_agent_ovid"], name: "ext_agent_flows_fk1_idx"
    t.index ["flow_ovid"], name: "ext_agent_flows_fk2_idx"
  end

  create_table "dmrs_external_agents", id: false, force: :cascade do |t|
    t.string "external_agent_id", limit: 70, null: false
    t.string "external_agent_ovid", limit: 36, null: false
    t.string "external_agent_name", limit: 256, null: false
    t.string "diagram_id", limit: 70, null: false
    t.string "diagram_ovid", limit: 36, null: false
    t.string "diagram_name", limit: 256, null: false
    t.string "external_agent_type", limit: 30
    t.string "file_location", limit: 256
    t.string "file_source", limit: 256
    t.string "file_name", limit: 256
    t.string "file_type", limit: 30
    t.string "file_owner", limit: 256
    t.string "data_capture_type", limit: 30
    t.string "field_separator", limit: 1
    t.string "text_delimiter", limit: 1
    t.integer "skip_records", limit: 10, precision: 10
    t.string "self_describing", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["diagram_ovid"], name: "ext_agents_fk_diagram_idx"
    t.index ["external_agent_ovid"], name: "ext_agents_pk_idx"
  end

  create_table "dmrs_external_datas", id: false, force: :cascade do |t|
    t.string "external_data_id", limit: 70, null: false
    t.string "external_data_ovid", limit: 36, null: false
    t.string "external_data_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70
    t.string "logical_type_ovid", limit: 36
    t.string "logical_type_name", limit: 256
    t.string "record_structure_type_id", limit: 70
    t.string "record_structure_type_ovid", limit: 36
    t.string "record_structure_type_name", limit: 256
    t.integer "starting_pos", limit: 10, precision: 10
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["external_data_ovid"], name: "ext_datas_pk_idx"
    t.index ["model_ovid"], name: "ext_datas_fk_model_idx"
  end

  create_table "dmrs_fact_entities", id: false, force: :cascade do |t|
    t.string "cube_id", limit: 70, null: false
    t.string "cube_name", limit: 256, null: false
    t.string "cube_ovid", limit: 36, null: false
    t.string "entity_id", limit: 70, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["cube_ovid"], name: "fact_entities_fk_idx"
  end

  create_table "dmrs_fact_entities_joins", id: false, force: :cascade do |t|
    t.string "join_id", limit: 70, null: false
    t.string "join_name", limit: 256, null: false
    t.string "join_ovid", limit: 36, null: false
    t.string "cube_id", limit: 70, null: false
    t.string "cube_name", limit: 256, null: false
    t.string "cube_ovid", limit: 36, null: false
    t.string "left_entity_id", limit: 70
    t.string "left_entity_name", limit: 256
    t.string "left_entity_ovid", limit: 36
    t.string "right_entity_id", limit: 70
    t.string "right_entity_name", limit: 256
    t.string "right_entity_ovid", limit: 36
    t.string "design_ovid", limit: 36, null: false
    t.index ["cube_ovid"], name: "fact_entities_joins_fk_idx"
  end

  create_table "dmrs_fk_cd_constraints", id: false, force: :cascade do |t|
    t.string "fk_ovid", limit: 36, null: false
    t.string "constraint_ovid", limit: 36, null: false
    t.string "constraint_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["fk_ovid", "constraint_ovid"], name: "fk_cd_constr_name_idx"
  end

  create_table "dmrs_fk_cd_constraints_cols", id: false, force: :cascade do |t|
    t.string "constraint_ovid", limit: 36, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "depend_as_mandatory", limit: 1
    t.string "depend", limit: 1
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["constraint_ovid", "column_ovid"], name: "fk_cd_constr_col_name_idx"
  end

  create_table "dmrs_flow_info_structures", id: false, force: :cascade do |t|
    t.string "flow_id", limit: 70, null: false
    t.string "flow_ovid", limit: 36, null: false
    t.string "flow_name", limit: 256, null: false
    t.string "info_structure_id", limit: 70, null: false
    t.string "info_structure_ovid", limit: 36, null: false
    t.string "info_structure_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["flow_ovid"], name: "flow_info_structs_fk1_idx"
    t.index ["info_structure_ovid"], name: "flow_info_structs_fk2_idx"
  end

  create_table "dmrs_flows", id: false, force: :cascade do |t|
    t.string "flow_id", limit: 70, null: false
    t.string "flow_ovid", limit: 36, null: false
    t.string "flow_name", limit: 256, null: false
    t.string "diagram_id", limit: 70, null: false
    t.string "diagram_ovid", limit: 36, null: false
    t.string "diagram_name", limit: 256, null: false
    t.string "event_id", limit: 70
    t.string "event_ovid", limit: 36
    t.string "event_name", limit: 256
    t.string "source_id", limit: 70
    t.string "source_ovid", limit: 36
    t.string "source_name", limit: 256
    t.string "destination_id", limit: 70
    t.string "destination_ovid", limit: 36
    t.string "destination_name", limit: 256
    t.string "parent_id", limit: 70
    t.string "parent_ovid", limit: 36
    t.string "parent_name", limit: 256
    t.string "source_type", limit: 30
    t.string "destination_type", limit: 30
    t.string "system_objective", limit: 4000
    t.string "logging", limit: 1
    t.string "op_create", limit: 1
    t.string "op_read", limit: 1
    t.string "op_update", limit: 1
    t.string "op_delete", limit: 1
    t.string "crud_code", limit: 4
    t.string "design_ovid", limit: 36, null: false
    t.index ["diagram_ovid"], name: "flows_fk_diagram_idx"
    t.index ["flow_ovid"], name: "flows_pk_idx"
  end

  create_table "dmrs_foreignkeys", id: false, force: :cascade do |t|
    t.string "fk_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "child_table_name", limit: 256, null: false
    t.string "referred_table_name", limit: 256, null: false
    t.string "engineer", limit: 1
    t.string "delete_rule", limit: 10
    t.string "child_table_id", limit: 70, null: false
    t.string "child_table_ovid", limit: 36
    t.string "referred_table_id", limit: 70, null: false
    t.string "referred_table_ovid", limit: 36
    t.string "referred_key_id", limit: 70, null: false
    t.string "referred_key_ovid", limit: 36
    t.decimal "number_of_columns", null: false
    t.string "mandatory", limit: 1
    t.string "transferable", limit: 1
    t.string "in_arc", limit: 1
    t.string "arc_id", limit: 70
    t.string "model_name", limit: 256
    t.string "referred_key_name", limit: 256
    t.string "discriminator_column_ovid", limit: 36
    t.string "discriminator_value", limit: 50
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "foreignkeys_fk_idx"
    t.index ["ovid"], name: "foreignkeys_pk_idx"
  end

  create_table "dmrs_glossaries", id: false, force: :cascade do |t|
    t.string "glossary_id", limit: 70, null: false
    t.string "glossary_ovid", limit: 36, null: false
    t.string "glossary_name", limit: 256, null: false
    t.string "file_name", limit: 256
    t.string "description", limit: 4000
    t.string "incomplete_modifiers", limit: 1
    t.string "case_sensitive", limit: 1
    t.string "unique_abbrevs", limit: 1
    t.string "separator_type", limit: 10
    t.string "separator_char", limit: 1
    t.datetime "date_published", precision: 6, null: false
    t.string "published_by", limit: 80
    t.decimal "persistence_version", precision: 5, scale: 2, null: false
    t.string "version_comments", limit: 4000
    t.index ["glossary_ovid"], name: "glossaries_ovid_idx"
  end

  create_table "dmrs_glossary_terms", id: false, force: :cascade do |t|
    t.string "term_id", limit: 70, null: false
    t.string "term_ovid", limit: 36, null: false
    t.string "term_name", limit: 256, null: false
    t.string "short_description", limit: 4000
    t.string "abbrev", limit: 256
    t.string "alt_abbrev", limit: 256
    t.string "prime_word", limit: 1
    t.string "class_word", limit: 1
    t.string "modifier", limit: 1
    t.string "qualifier", limit: 1
    t.string "glossary_id", limit: 70, null: false
    t.string "glossary_ovid", limit: 36, null: false
    t.string "glossary_name", limit: 256, null: false
    t.string "plural", limit: 256
    t.index ["glossary_ovid"], name: "glossary_terms_fk_idx"
  end

  create_table "dmrs_hierarchies", id: false, force: :cascade do |t|
    t.string "hierarchy_id", limit: 70, null: false
    t.string "hierarchy_name", limit: 256, null: false
    t.string "hierarchy_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "dimension_id", limit: 70
    t.string "dimension_name", limit: 256
    t.string "dimension_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "is_default_hierarchy", limit: 1
    t.string "is_ragged_hierarchy", limit: 1
    t.string "is_value_based_hierarchy", limit: 1
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["hierarchy_ovid"], name: "hierarchies_pk_idx"
    t.index ["model_ovid"], name: "hierarchies_fk_idx"
  end

  create_table "dmrs_hierarchy_levels", id: false, force: :cascade do |t|
    t.string "hierarchy_id", limit: 70, null: false
    t.string "hierarchy_name", limit: 256, null: false
    t.string "hierarchy_ovid", limit: 36, null: false
    t.string "level_id", limit: 70, null: false
    t.string "level_name", limit: 256, null: false
    t.string "level_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["hierarchy_ovid"], name: "hierarchy_levels_fk1_idx"
    t.index ["level_ovid"], name: "hierarchy_levels_fk2_idx"
  end

  create_table "dmrs_hierarchy_rollup_links", id: false, force: :cascade do |t|
    t.string "hierarchy_id", limit: 70, null: false
    t.string "hierarchy_name", limit: 256, null: false
    t.string "hierarchy_ovid", limit: 36, null: false
    t.string "rollup_link_id", limit: 70, null: false
    t.string "rollup_link_name", limit: 256, null: false
    t.string "rollup_link_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["hierarchy_ovid"], name: "hierarchy_rollup_links_fk1_idx"
    t.index ["rollup_link_ovid"], name: "hierarchy_rollup_links_fk2_idx"
  end

  create_table "dmrs_indexes", id: false, force: :cascade do |t|
    t.string "index_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "state", limit: 20, null: false
    t.string "functional", limit: 1
    t.string "expression", limit: 4000
    t.string "engineer", limit: 1, null: false
    t.string "table_name", limit: 256, null: false
    t.string "spatial_index", limit: 1
    t.string "spatial_layer_type", limit: 15
    t.string "geodetic_index", limit: 1
    t.decimal "number_of_dimensions", default: "2.0"
    t.string "schema_ovid", limit: 36
    t.string "schema_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["container_ovid"], name: "indexes_fk_idx"
    t.index ["ovid"], name: "indexes_pk_idx"
  end

  create_table "dmrs_info_stores", id: false, force: :cascade do |t|
    t.string "info_store_id", limit: 70, null: false
    t.string "info_store_ovid", limit: 36, null: false
    t.string "info_store_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "info_store_type", limit: 30
    t.string "object_type", limit: 30
    t.string "implementation_name", limit: 256
    t.string "location", limit: 256
    t.string "source", limit: 256
    t.string "file_name", limit: 256
    t.string "file_type", limit: 30
    t.string "owner", limit: 256
    t.string "rdbms_site", limit: 256
    t.string "scope", limit: 30
    t.string "transfer_type", limit: 30
    t.string "field_separator", limit: 4
    t.string "text_delimiter", limit: 4
    t.integer "skip_records", limit: 10, precision: 10
    t.string "self_describing", limit: 1
    t.string "system_objective", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["info_store_ovid"], name: "info_stores_pk_idx"
    t.index ["model_ovid"], name: "info_stores_fk_model_idx"
  end

  create_table "dmrs_info_struct_attrs", id: false, force: :cascade do |t|
    t.string "info_structure_id", limit: 70, null: false
    t.string "info_structure_ovid", limit: 36, null: false
    t.string "info_structure_name", limit: 256, null: false
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "attribute_name", limit: 256, null: false
    t.string "entity_id", limit: 70, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["attribute_ovid"], name: "info_struct_attr_fk_attr_idx"
    t.index ["info_structure_ovid"], name: "info_struct_attr_fk_istr_idx"
  end

  create_table "dmrs_info_structures", id: false, force: :cascade do |t|
    t.string "info_structure_id", limit: 70, null: false
    t.string "info_structure_ovid", limit: 36, null: false
    t.string "info_structure_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "growth_rate_unit", limit: 30
    t.integer "growth_rate_percent", limit: 10, precision: 10
    t.integer "volume", limit: 10, precision: 10
    t.string "design_ovid", limit: 36, null: false
    t.index ["info_structure_ovid"], name: "info_structs_pk_idx"
    t.index ["model_ovid"], name: "info_structs_fk_model_idx"
  end

  create_table "dmrs_key_attributes", id: false, force: :cascade do |t|
    t.string "key_id", limit: 70, null: false
    t.string "key_ovid", limit: 36, null: false
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "entity_id", limit: 70, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "key_name", limit: 256, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "attribute_name", limit: 256, null: false
    t.decimal "sequence"
    t.string "relationship_id", limit: 100
    t.string "relationship_ovid", limit: 36
    t.string "relationship_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["key_ovid"], name: "key_attributes_fk_idx"
  end

  create_table "dmrs_key_elements", id: false, force: :cascade do |t|
    t.string "key_id", limit: 80, null: false
    t.string "key_ovid", limit: 36, null: false
    t.string "type", limit: 1
    t.string "element_id", limit: 80, null: false
    t.string "element_ovid", limit: 36, null: false
    t.string "element_name", limit: 256, null: false
    t.decimal "sequence"
    t.string "source_label", limit: 100
    t.string "target_label", limit: 100
    t.string "entity_id", limit: 70, null: false
    t.string "key_name", limit: 256, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["key_ovid"], name: "key_elements_fk_idx"
  end

  create_table "dmrs_keys", id: false, force: :cascade do |t|
    t.string "key_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "state", limit: 20, null: false
    t.string "synonyms", limit: 4000
    t.string "entity_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["ovid", "container_ovid", "state"], name: "keys_fk_idx"
    t.index ["ovid"], name: "keys_pk_idx"
  end

  create_table "dmrs_large_text", id: false, force: :cascade do |t|
    t.string "object_id", limit: 80, null: false
    t.string "ovid", limit: 36, null: false
    t.string "object_name", limit: 256
    t.string "type", limit: 30
    t.text "text", null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["ovid"], name: "dmrs_large_text_pk_idx"
  end

  create_table "dmrs_level_attrs", id: false, force: :cascade do |t|
    t.string "level_id", limit: 70, null: false
    t.string "level_name", limit: 256, null: false
    t.string "level_ovid", limit: 36, null: false
    t.string "attribute_id", limit: 70
    t.string "attribute_name", limit: 256
    t.string "attribute_ovid", limit: 36
    t.string "is_default_attr", limit: 1
    t.string "is_level_key_attr", limit: 1
    t.string "is_parent_key_attr", limit: 1
    t.string "is_descriptive_key_attr", limit: 1
    t.string "is_calculated_attr", limit: 1
    t.string "descriptive_name", limit: 256
    t.string "descriptive_is_indexed", limit: 1
    t.string "descriptive_slow_changing", limit: 30
    t.string "calculated_expr", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["level_ovid"], name: "level_attrs_fk_idx"
  end

  create_table "dmrs_levels", id: false, force: :cascade do |t|
    t.string "level_id", limit: 70, null: false
    t.string "level_name", limit: 256, null: false
    t.string "level_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "entity_id", limit: 70
    t.string "entity_name", limit: 256
    t.string "entity_ovid", limit: 36
    t.string "name_column_id", limit: 70
    t.string "name_column_name", limit: 256
    t.string "name_column_ovid", limit: 36
    t.string "value_column_id", limit: 70
    t.string "value_column_name", limit: 256
    t.string "value_column_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "root_identification", limit: 30
    t.string "identification_value", limit: 2000
    t.string "selection_criteria", limit: 4000
    t.string "selection_criteria_description", limit: 4000
    t.string "is_value_based_hierarchy", limit: 1
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["level_ovid"], name: "levels_pk_idx"
    t.index ["model_ovid"], name: "levels_fk_idx"
  end

  create_table "dmrs_locations", id: false, force: :cascade do |t|
    t.string "location_id", limit: 70, null: false
    t.string "location_ovid", limit: 36, null: false
    t.string "location_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "loc_address", limit: 1000
    t.string "loc_city", limit: 1000
    t.string "loc_post_code", limit: 1000
    t.string "loc_area", limit: 1000
    t.string "loc_country", limit: 1000
    t.string "loc_type", limit: 1000
    t.string "design_ovid", limit: 36, null: false
    t.index ["location_ovid"], name: "locations_pk_idx"
  end

  create_table "dmrs_logical_to_native", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70, null: false
    t.string "logical_type_ovid", limit: 36, null: false
    t.string "lt_name", limit: 256, null: false
    t.string "native_type", limit: 60
    t.string "rdbms_type", limit: 60, null: false
    t.string "rdbms_version", limit: 60, null: false
    t.string "has_size", limit: 1
    t.string "has_precision", limit: 1
    t.string "has_scale", limit: 1
    t.index ["logical_type_ovid"], name: "logical_to_native_fk_idxv1"
  end

  create_table "dmrs_logical_types", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "lt_name", limit: 256, null: false
    t.index ["ovid"], name: "logical_types_pk_idx"
  end

  create_table "dmrs_mapping_target_sources", id: false, force: :cascade do |t|
    t.string "object_id", limit: 70, null: false
    t.string "object_ovid", limit: 36, null: false
    t.string "object_name", limit: 256, null: false
    t.string "target_id", limit: 70, null: false
    t.string "target_ovid", limit: 36, null: false
    t.string "target_name", limit: 256, null: false
    t.string "source_id", limit: 70, null: false
    t.string "source_ovid", limit: 36, null: false
    t.string "source_name", limit: 256, null: false
    t.string "object_type", limit: 30
    t.string "target_type", limit: 30
    t.string "source_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid"], name: "mapping_target_sources_fk1_idx"
    t.index ["source_ovid"], name: "mapping_target_sources_fk3_idx"
    t.index ["target_ovid"], name: "mapping_target_sources_fk2_idx"
  end

  create_table "dmrs_mapping_targets", id: false, force: :cascade do |t|
    t.string "object_id", limit: 70, null: false
    t.string "object_ovid", limit: 36, null: false
    t.string "object_name", limit: 256, null: false
    t.string "target_id", limit: 70, null: false
    t.string "target_ovid", limit: 36, null: false
    t.string "target_name", limit: 256, null: false
    t.string "object_type", limit: 30
    t.string "target_type", limit: 30
    t.string "transformation_type", limit: 30
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid"], name: "mapping_targets_fk1_idx"
    t.index ["target_ovid"], name: "mapping_targets_fk2_idx"
  end

  create_table "dmrs_mappings", id: false, force: :cascade do |t|
    t.string "logical_model_id", limit: 70, null: false
    t.string "logical_model_ovid", limit: 36, null: false
    t.string "logical_model_name", limit: 256, null: false
    t.string "logical_object_id", limit: 80, null: false
    t.string "logical_object_ovid", limit: 36, null: false
    t.string "logical_object_name", limit: 256, null: false
    t.string "logical_object_type", limit: 30
    t.string "relational_model_id", limit: 70, null: false
    t.string "relational_model_ovid", limit: 36, null: false
    t.string "relational_model_name", limit: 256, null: false
    t.string "relational_object_id", limit: 70, null: false
    t.string "relational_object_ovid", limit: 36, null: false
    t.string "relational_object_name", limit: 256, null: false
    t.string "relational_object_type", limit: 30
    t.string "entity_id", limit: 70
    t.string "entity_ovid", limit: 36
    t.string "entity_name", limit: 256
    t.string "table_id", limit: 70
    t.string "table_ovid", limit: 36
    t.string "table_name", limit: 256
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.index ["logical_object_ovid"], name: "mappings_log_obj_ovid_idx"
    t.index ["relational_object_ovid"], name: "mappings_rel_obj_ovid_idx"
  end

  create_table "dmrs_mask_templates", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "mask_template_name", limit: 50, null: false
    t.string "function_type", limit: 10, null: false
    t.string "data_type", limit: 10, null: false
    t.string "input_format", limit: 50
    t.string "output_format", limit: 50
    t.string "mask_char", limit: 50
    t.decimal "mask_from"
    t.decimal "mask_to"
    t.string "pattern", limit: 50
    t.string "replace_string", limit: 50
    t.decimal "position"
    t.decimal "occurrence"
    t.string "match_parameter", limit: 50
    t.string "month", limit: 10
    t.string "day", limit: 10
    t.string "year", limit: 10
    t.string "hour", limit: 10
    t.string "minute", limit: 10
    t.string "second", limit: 10
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid", "mask_template_name"], name: "mask_template_name_idx"
  end

  create_table "dmrs_measure_aggr_funcs", id: false, force: :cascade do |t|
    t.string "measure_id", limit: 70, null: false
    t.string "measure_name", limit: 256, null: false
    t.string "measure_ovid", limit: 36, null: false
    t.string "aggregate_function_id", limit: 70, null: false
    t.string "aggregate_function_name", limit: 256, null: false
    t.string "aggregate_function_ovid", limit: 36, null: false
    t.string "measure_alias", limit: 256
    t.string "is_default", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["measure_ovid"], name: "measure_aggr_funcs_fk_idx"
  end

  create_table "dmrs_measure_folder_measures", id: false, force: :cascade do |t|
    t.string "measure_folder_id", limit: 70, null: false
    t.string "measure_folder_name", limit: 256, null: false
    t.string "measure_folder_ovid", limit: 36, null: false
    t.string "measure_id", limit: 70, null: false
    t.string "measure_name", limit: 256, null: false
    t.string "measure_ovid", limit: 36, null: false
    t.string "parent_object_id", limit: 70
    t.string "parent_object_name", limit: 256
    t.string "parent_object_ovid", limit: 36
    t.string "parent_object_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["measure_folder_ovid"], name: "measure_folder_meas_fk_idx"
  end

  create_table "dmrs_measure_folders", id: false, force: :cascade do |t|
    t.string "measure_folder_id", limit: 70, null: false
    t.string "measure_folder_name", limit: 256, null: false
    t.string "measure_folder_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "parent_folder_id", limit: 70
    t.string "parent_folder_name", limit: 256
    t.string "parent_folder_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "is_leaf", limit: 1
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["measure_folder_ovid"], name: "measure_folders_pk_idx"
    t.index ["model_ovid"], name: "measure_folders_fk_idx"
  end

  create_table "dmrs_measurements", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "measurement_id", limit: 70, null: false
    t.string "measurement_ovid", limit: 36, null: false
    t.string "measurement_name", limit: 256, null: false
    t.string "measurement_value", limit: 50
    t.string "measurement_unit", limit: 36
    t.string "measurement_type", limit: 36
    t.string "measurement_cr_date", limit: 30
    t.string "measurement_ef_date", limit: 30
    t.string "object_name", limit: 256
    t.string "object_type", limit: 256
    t.string "object_model", limit: 256
  end

  create_table "dmrs_measures", id: false, force: :cascade do |t|
    t.string "measure_id", limit: 70, null: false
    t.string "measure_name", limit: 256, null: false
    t.string "measure_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "cube_id", limit: 70
    t.string "cube_name", limit: 256
    t.string "cube_ovid", limit: 36
    t.string "fact_object_id", limit: 70
    t.string "fact_object_name", limit: 256
    t.string "fact_object_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "fact_object_type", limit: 30
    t.string "additivity_type", limit: 30
    t.string "is_fact_dimension", limit: 1
    t.string "is_formula", limit: 1
    t.string "is_custom_formula", limit: 1
    t.string "formula", limit: 4000
    t.string "where_clause", limit: 4000
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["measure_ovid"], name: "measures_pk_idx"
    t.index ["model_ovid"], name: "measures_fk_idx"
  end

  create_table "dmrs_model_displays", id: false, force: :cascade do |t|
    t.string "display_id", limit: 70, null: false
    t.string "display_ovid", limit: 36, null: false
    t.string "display_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["display_ovid"], name: "model_displays_pk_idx"
    t.index ["model_ovid"], name: "model_displays_fk_idx"
  end

  create_table "dmrs_model_naming_options", id: false, force: :cascade do |t|
    t.string "object_type", limit: 30, null: false
    t.integer "max_name_length", limit: 4, precision: 4, null: false
    t.string "character_case", limit: 10, null: false
    t.string "valid_characters", limit: 512, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_type", limit: 30, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "model_naming_options_fk_idx"
  end

  create_table "dmrs_model_subviews", id: false, force: :cascade do |t|
    t.string "subview_id", limit: 70, null: false
    t.string "subview_ovid", limit: 36, null: false
    t.string "subview_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "model_subviews_fk_idx"
    t.index ["subview_ovid"], name: "model_subviews_pk_idx"
  end

  create_table "dmrs_models", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_type", limit: 30, null: false
    t.string "rdbms_type", limit: 60
    t.index ["model_ovid", "model_name", "model_type"], name: "models_name_idx"
    t.index ["model_ovid"], name: "models_pk_idx"
  end

  create_table "dmrs_native_to_logical", id: false, force: :cascade do |t|
    t.string "rdbms_type", limit: 60, null: false
    t.string "rdbms_version", limit: 60, null: false
    t.string "native_type", limit: 60
    t.string "lt_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70, null: false
    t.string "logical_type_ovid", limit: 36, null: false
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.index ["logical_type_ovid"], name: "native_to_logical_fk_idxv1"
  end

  create_table "dmrs_notes", id: false, force: :cascade do |t|
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "object_name", limit: 256
    t.string "model_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "notes_fk_idx"
    t.index ["ovid"], name: "notes_pk_idx"
  end

  create_table "dmrs_pk_oid_columns", id: false, force: :cascade do |t|
    t.string "column_id", limit: 70, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "table_name", limit: 256, null: false
    t.string "column_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["column_ovid"], name: "pk_oid_columns_pk_idx"
    t.index ["table_ovid"], name: "pk_oid_columns_fk_idx"
  end

  create_table "dmrs_process_attributes", id: false, force: :cascade do |t|
    t.string "process_id", limit: 70, null: false
    t.string "process_ovid", limit: 36, null: false
    t.string "entity_id", limit: 70, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "flow_id", limit: 70, null: false
    t.string "flow_ovid", limit: 36, null: false
    t.string "dfd_id", limit: 70, null: false
    t.string "dfd_ovid", limit: 36, null: false
    t.string "process_name", limit: 256, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "flow_name", limit: 256, null: false
    t.string "dfd_name", limit: 256, null: false
    t.string "op_read", limit: 1
    t.string "op_create", limit: 1
    t.string "op_update", limit: 1
    t.string "op_delete", limit: 1
    t.string "crud_code", limit: 4
    t.string "flow_direction", limit: 3, null: false
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "attribute_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["process_ovid"], name: "process_attrs_pk_idx"
  end

  create_table "dmrs_process_entities", id: false, force: :cascade do |t|
    t.string "process_id", limit: 70, null: false
    t.string "process_ovid", limit: 36, null: false
    t.string "entity_id", limit: 70, null: false
    t.string "entity_ovid", limit: 36, null: false
    t.string "flow_id", limit: 70, null: false
    t.string "flow_ovid", limit: 36, null: false
    t.string "dfd_id", limit: 70, null: false
    t.string "dfd_ovid", limit: 36, null: false
    t.string "process_name", limit: 256, null: false
    t.string "entity_name", limit: 256, null: false
    t.string "flow_name", limit: 256, null: false
    t.string "dfd_name", limit: 256, null: false
    t.string "op_read", limit: 1
    t.string "op_create", limit: 1
    t.string "op_update", limit: 1
    t.string "op_delete", limit: 1
    t.string "crud_code", limit: 4
    t.string "flow_direction", limit: 3, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["entity_ovid"], name: "process_ents_ent_idx"
    t.index ["process_ovid"], name: "process_ents_pk_idx"
  end

  create_table "dmrs_processes", id: false, force: :cascade do |t|
    t.string "process_id", limit: 70, null: false
    t.string "process_ovid", limit: 36, null: false
    t.string "process_name", limit: 256, null: false
    t.string "diagram_id", limit: 70, null: false
    t.string "diagram_ovid", limit: 36, null: false
    t.string "diagram_name", limit: 256, null: false
    t.string "transformation_task_id", limit: 70
    t.string "transformation_task_ovid", limit: 36
    t.string "transformation_task_name", limit: 256
    t.string "parent_process_id", limit: 70
    t.string "parent_process_ovid", limit: 36
    t.string "parent_process_name", limit: 256
    t.string "process_number", limit: 30
    t.string "process_type", limit: 30
    t.string "process_mode", limit: 30
    t.string "priority", limit: 30
    t.integer "frequency_times", limit: 10, precision: 10
    t.string "frequency_time_unit", limit: 30
    t.string "peak_periods_string", limit: 30
    t.string "parameters_wrappers_string", limit: 4000
    t.integer "interactive_max_response_time", limit: 10, precision: 10
    t.string "interactive_response_time_unit", limit: 30
    t.integer "batch_min_transactions", limit: 10, precision: 10
    t.string "batch_time_unit", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["diagram_ovid"], name: "processes_fk_diagram_idx"
    t.index ["process_ovid"], name: "processes_pk_idx"
  end

  create_table "dmrs_ragged_hier_link_attrs", id: false, force: :cascade do |t|
    t.string "ragged_hier_link_id", limit: 70, null: false
    t.string "ragged_hier_link_name", limit: 256, null: false
    t.string "ragged_hier_link_ovid", limit: 36, null: false
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_name", limit: 256, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["ragged_hier_link_ovid"], name: "ragged_hier_link_attrs_fk_idx"
  end

  create_table "dmrs_ragged_hier_links", id: false, force: :cascade do |t|
    t.string "ragged_hier_link_id", limit: 70, null: false
    t.string "ragged_hier_link_name", limit: 256, null: false
    t.string "ragged_hier_link_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "parent_level_id", limit: 70
    t.string "parent_level_name", limit: 256
    t.string "parent_level_ovid", limit: 36
    t.string "child_level_id", limit: 70
    t.string "child_level_name", limit: 256
    t.string "child_level_ovid", limit: 36
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "ragged_hier_links_fk_idx"
    t.index ["ragged_hier_link_ovid"], name: "ragged_hier_links_pk_idx"
  end

  create_table "dmrs_rdbms_sites", id: false, force: :cascade do |t|
    t.string "site_name", limit: 256, null: false
    t.string "site_id", limit: 70
    t.string "site_ovid", limit: 36
    t.decimal "rdbms_type", null: false
    t.string "design_ovid", limit: 36
    t.index ["site_ovid"], name: "rdbms_sites_pk_idx"
  end

  create_table "dmrs_record_struct_ext_datas", id: false, force: :cascade do |t|
    t.string "record_structure_id", limit: 70, null: false
    t.string "record_structure_ovid", limit: 36, null: false
    t.string "record_structure_name", limit: 256, null: false
    t.string "external_data_id", limit: 70, null: false
    t.string "external_data_ovid", limit: 36, null: false
    t.string "external_data_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["external_data_ovid"], name: "rec_struct_ext_datas_fk2_idx"
    t.index ["record_structure_ovid"], name: "rec_struct_ext_datas_fk1_idx"
  end

  create_table "dmrs_record_structures", id: false, force: :cascade do |t|
    t.string "record_structure_id", limit: 70, null: false
    t.string "record_structure_ovid", limit: 36, null: false
    t.string "record_structure_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "record_structs_fk_model_idx"
    t.index ["record_structure_ovid"], name: "record_structs_pk_idx"
  end

  create_table "dmrs_relationships", id: false, force: :cascade do |t|
    t.string "relationship_name", limit: 256, null: false
    t.string "model_id", limit: 80, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "object_id", limit: 80, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "source_entity_name", limit: 256, null: false
    t.string "target_entity_name", limit: 256, null: false
    t.string "source_label", limit: 100
    t.string "target_label", limit: 100
    t.string "sourceto_target_cardinality", limit: 3, null: false
    t.string "targetto_source_cardinality", limit: 3, null: false
    t.string "source_optional", limit: 1, null: false
    t.string "target_optional", limit: 1, null: false
    t.string "dominant_role", limit: 256, null: false
    t.string "identifying", limit: 1, null: false
    t.string "source_id", limit: 70, null: false
    t.string "source_ovid", limit: 36, null: false
    t.string "target_id", limit: 70, null: false
    t.string "target_ovid", limit: 36, null: false
    t.decimal "number_of_attributes", null: false
    t.string "transferable", limit: 1
    t.string "in_arc", limit: 1
    t.string "arc_id", limit: 70
    t.string "model_name", limit: 256
    t.string "source_name", limit: 256
    t.string "target_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "relationships_fk_idxv2"
    t.index ["ovid"], name: "relationships_pk_idx"
    t.index ["source_ovid"], name: "relationships_fk_idxv1"
    t.index ["target_ovid"], name: "relationships_fk_idx"
  end

  create_table "dmrs_res_party_contacts", id: false, force: :cascade do |t|
    t.string "responsible_party_id", limit: 70, null: false
    t.string "responsible_party_ovid", limit: 36, null: false
    t.string "responsible_party_name", limit: 256, null: false
    t.string "contact_id", limit: 70, null: false
    t.string "contact_ovid", limit: 36, null: false
    t.string "contact_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["contact_ovid"], name: "res_party_contacts_fk2_idx"
    t.index ["responsible_party_ovid"], name: "res_party_contacts_fk1_idx"
  end

  create_table "dmrs_res_party_elements", id: false, force: :cascade do |t|
    t.string "responsible_party_id", limit: 70, null: false
    t.string "responsible_party_ovid", limit: 36, null: false
    t.string "responsible_party_name", limit: 256, null: false
    t.string "element_id", limit: 70, null: false
    t.string "element_ovid", limit: 36, null: false
    t.string "element_name", limit: 256, null: false
    t.string "element_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["element_ovid"], name: "res_party_elements_fk2_idx"
    t.index ["responsible_party_ovid"], name: "res_party_elements_fk1_idx"
  end

  create_table "dmrs_resource_locators", id: false, force: :cascade do |t|
    t.string "resource_locator_id", limit: 70, null: false
    t.string "resource_locator_ovid", limit: 36, null: false
    t.string "resource_locator_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "url", limit: 2000
    t.string "design_ovid", limit: 36, null: false
    t.index ["resource_locator_ovid"], name: "resource_locators_pk_idx"
  end

  create_table "dmrs_responsible_parties", id: false, force: :cascade do |t|
    t.string "responsible_party_id", limit: 70, null: false
    t.string "responsible_party_ovid", limit: 36, null: false
    t.string "responsible_party_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "parent_id", limit: 70
    t.string "parent_ovid", limit: 36
    t.string "parent_name", limit: 256
    t.string "responsibility", limit: 2000
    t.string "design_ovid", limit: 36, null: false
    t.index ["responsible_party_ovid"], name: "responsible_parties_pk_idx"
  end

  create_table "dmrs_role_processes", id: false, force: :cascade do |t|
    t.string "role_id", limit: 70, null: false
    t.string "role_ovid", limit: 36, null: false
    t.string "role_name", limit: 256, null: false
    t.string "process_id", limit: 70, null: false
    t.string "process_ovid", limit: 36, null: false
    t.string "process_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["process_ovid"], name: "role_processes_fk2_idx"
    t.index ["role_ovid"], name: "role_processes_fk1_idx"
  end

  create_table "dmrs_roles", id: false, force: :cascade do |t|
    t.string "role_id", limit: 70, null: false
    t.string "role_ovid", limit: 36, null: false
    t.string "role_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "roles_fk_model_idx"
    t.index ["role_ovid"], name: "roles_pk_idx"
  end

  create_table "dmrs_rollup_link_attrs", id: false, force: :cascade do |t|
    t.string "rollup_link_id", limit: 70, null: false
    t.string "rollup_link_name", limit: 256, null: false
    t.string "rollup_link_ovid", limit: 36, null: false
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_name", limit: 256, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["rollup_link_ovid"], name: "rollup_link_attrs_fk_idx"
  end

  create_table "dmrs_rollup_links", id: false, force: :cascade do |t|
    t.string "rollup_link_id", limit: 70, null: false
    t.string "rollup_link_name", limit: 256, null: false
    t.string "rollup_link_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "parent_object_id", limit: 70
    t.string "parent_object_name", limit: 256
    t.string "parent_object_ovid", limit: 36
    t.string "child_object_id", limit: 70
    t.string "child_object_name", limit: 256
    t.string "child_object_ovid", limit: 36
    t.string "fact_entity_id", limit: 70
    t.string "fact_entity_name", limit: 256
    t.string "fact_entity_ovid", limit: 36
    t.string "parent_object_type", limit: 30
    t.string "child_object_type", limit: 30
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "default_aggr_operator", limit: 256
    t.string "is_role_playing", limit: 1
    t.string "is_sparse_dimension", limit: 1
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "rollup_links_fk_idx"
    t.index ["rollup_link_ovid"], name: "rollup_links_pk_idx"
  end

  create_table "dmrs_schema_object", id: false, force: :cascade do |t|
    t.string "design_ovid", limit: 36, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "schema_ovid", limit: 36, null: false
    t.string "schema_name", limit: 256, null: false
  end

  create_table "dmrs_sensitive_types", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "sensitive_type_name", limit: 256, null: false
    t.index ["object_ovid", "sensitive_type_name"], name: "sensitive_type_name_idx"
  end

  create_table "dmrs_slice_dim_hier_level", id: false, force: :cascade do |t|
    t.string "slice_id", limit: 70, null: false
    t.string "slice_name", limit: 256, null: false
    t.string "slice_ovid", limit: 36, null: false
    t.string "dimension_id", limit: 70
    t.string "dimension_name", limit: 256
    t.string "dimension_ovid", limit: 36
    t.string "hierarchy_id", limit: 70
    t.string "hierarchy_name", limit: 256
    t.string "hierarchy_ovid", limit: 36
    t.string "level_id", limit: 70
    t.string "level_name", limit: 256
    t.string "level_ovid", limit: 36
    t.string "design_ovid", limit: 36, null: false
    t.index ["slice_ovid"], name: "slice_dim_hier_level_fk_idx"
  end

  create_table "dmrs_slice_measures", id: false, force: :cascade do |t|
    t.string "slice_id", limit: 70, null: false
    t.string "slice_name", limit: 256, null: false
    t.string "slice_ovid", limit: 36, null: false
    t.string "measure_id", limit: 70, null: false
    t.string "measure_name", limit: 256, null: false
    t.string "measure_ovid", limit: 36, null: false
    t.string "aggregate_function_id", limit: 70, null: false
    t.string "aggregate_function_name", limit: 256, null: false
    t.string "aggregate_function_ovid", limit: 36, null: false
    t.string "measure_alias", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["slice_ovid"], name: "slice_measures_fk_idx"
  end

  create_table "dmrs_slices", id: false, force: :cascade do |t|
    t.string "slice_id", limit: 70, null: false
    t.string "slice_name", limit: 256, null: false
    t.string "slice_ovid", limit: 36, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "cube_id", limit: 70
    t.string "cube_name", limit: 256
    t.string "cube_ovid", limit: 36
    t.string "entity_id", limit: 70
    t.string "entity_name", limit: 256
    t.string "entity_ovid", limit: 36
    t.string "oracle_long_name", limit: 2000
    t.string "oracle_plural_name", limit: 2000
    t.string "oracle_short_name", limit: 2000
    t.string "is_fully_realized", limit: 1
    t.string "is_read_only", limit: 1
    t.string "description", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "slices_fk_idx"
    t.index ["slice_ovid"], name: "slices_pk_idx"
  end

  create_table "dmrs_source_info", id: false, force: :cascade do |t|
    t.string "source_info_ovid", limit: 36, null: false
    t.string "source_info_type", limit: 1, null: false
    t.string "ddl_file_name", limit: 256
    t.string "ddl_path_name", limit: 2000
    t.string "ddl_db_type", limit: 30
    t.string "datadict_connection_name", limit: 256
    t.string "datadict_connection_url", limit: 2000
    t.string "datadict_db_type", limit: 30
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["source_info_ovid"], name: "source_info_pk_idx"
  end

  create_table "dmrs_spatial_column_definition", id: false, force: :cascade do |t|
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "definition_id", limit: 70, null: false
    t.string "definition_ovid", limit: 36, null: false
    t.string "definition_name", limit: 256, null: false
    t.string "table_name", limit: 256, null: false
    t.string "column_id", limit: 70
    t.string "column_ovid", limit: 36
    t.string "column_name", limit: 256
    t.string "use_function", limit: 1, null: false
    t.string "function_expression", limit: 4000
    t.string "coordinate_system_id", limit: 70
    t.string "has_spatial_index", limit: 1, null: false
    t.string "spatial_index_id", limit: 70
    t.string "spatial_index_ovid", limit: 36
    t.string "spatial_index_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["definition_ovid"], name: "spatial_col_definition_pk_idx"
    t.index ["table_ovid"], name: "spatial_col_definition_fk_idx"
  end

  create_table "dmrs_spatial_dimensions", id: false, force: :cascade do |t|
    t.string "definition_id", limit: 70, null: false
    t.string "definition_ovid", limit: 36, null: false
    t.string "definition_name", limit: 256, null: false
    t.string "dimension_name", limit: 256, null: false
    t.decimal "low_boundary", null: false
    t.decimal "upper_boundary", null: false
    t.decimal "tolerance"
    t.string "design_ovid", limit: 36, null: false
    t.index ["definition_ovid"], name: "spatial_dimensions_fk_idx"
  end

  create_table "dmrs_struct_type_attrs", id: false, force: :cascade do |t|
    t.string "attribute_id", limit: 70, null: false
    t.string "attribute_ovid", limit: 36, null: false
    t.string "attribute_name", limit: 256, null: false
    t.string "structured_type_id", limit: 70, null: false
    t.string "structured_type_ovid", limit: 36, null: false
    t.string "structured_type_name", limit: 256, null: false
    t.string "mandatory", limit: 1, null: false
    t.string "reference", limit: 1, null: false
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.string "type_id", limit: 70
    t.string "type_ovid", limit: 36
    t.string "type_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.string "datatype_kind", limit: 20
    t.string "domain_name", limit: 256
    t.string "char_units", limit: 4
    t.index ["structured_type_ovid"], name: "struct_type_attrs_fk_idx"
  end

  create_table "dmrs_struct_type_method_pars", id: false, force: :cascade do |t|
    t.string "parameter_id", limit: 70, null: false
    t.string "parameter_ovid", limit: 36, null: false
    t.string "parameter_name", limit: 256, null: false
    t.string "method_id", limit: 70, null: false
    t.string "method_ovid", limit: 36, null: false
    t.string "method_name", limit: 256, null: false
    t.string "return_value", limit: 1, null: false
    t.string "reference", limit: 1, null: false
    t.decimal "seq"
    t.string "t_size", limit: 20
    t.decimal "t_precision"
    t.decimal "t_scale"
    t.string "type_id", limit: 70
    t.string "type_ovid", limit: 36
    t.string "type_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.index ["method_ovid"], name: "struct_type_method_pars_fk_idx"
  end

  create_table "dmrs_struct_type_methods", id: false, force: :cascade do |t|
    t.string "method_id", limit: 70, null: false
    t.string "method_ovid", limit: 36, null: false
    t.string "method_name", limit: 256, null: false
    t.string "structured_type_id", limit: 70, null: false
    t.string "structured_type_ovid", limit: 36, null: false
    t.string "structured_type_name", limit: 256, null: false
    t.string "constructor", limit: 1
    t.string "overridden_method_id", limit: 70
    t.string "overridden_method_ovid", limit: 36
    t.string "overridden_method_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.string "overriding", limit: 1
    t.index ["structured_type_ovid"], name: "struct_type_methods_fk_idx"
  end

  create_table "dmrs_structured_types", id: false, force: :cascade do |t|
    t.string "design_id", limit: 70, null: false
    t.string "design_ovid", limit: 36, null: false
    t.string "design_name", limit: 256, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "structured_type_id", limit: 70, null: false
    t.string "structured_type_ovid", limit: 36, null: false
    t.string "structured_type_name", limit: 256, null: false
    t.string "super_type_id", limit: 70
    t.string "super_type_ovid", limit: 36
    t.string "super_type_name", limit: 256
    t.string "predefined", limit: 1
    t.string "st_final", limit: 1
    t.string "st_instantiable", limit: 1
    t.index ["structured_type_ovid"], name: "structured_types_pk_idx"
  end

  create_table "dmrs_table_arcs", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "arc_name", limit: 256, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "table_id", limit: 36, null: false
    t.string "mandatory", limit: 1, null: false
    t.string "discriminator_column_id", limit: 36
    t.string "model_name", limit: 256
    t.string "model_ovid", limit: 36, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["object_ovid", "arc_name"], name: "table_arc_name_idx"
  end

  create_table "dmrs_table_constraints", id: false, force: :cascade do |t|
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.decimal "sequence", null: false
    t.string "constraint_id", limit: 70, null: false
    t.string "constraint_ovid", limit: 36, null: false
    t.string "constraint_name", limit: 256, null: false
    t.string "text", limit: 4000, null: false
    t.string "table_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["table_ovid"], name: "table_constraints_fk_idx"
  end

  create_table "dmrs_table_include_scripts", id: false, force: :cascade do |t|
    t.string "table_id", limit: 70, null: false
    t.string "table_ovid", limit: 36, null: false
    t.string "table_name", limit: 256
    t.string "type", limit: 15
    t.decimal "sequence", null: false
    t.string "text", limit: 4000, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["table_ovid"], name: "table_include_scripts_fk_idx"
  end

  create_table "dmrs_tables", id: false, force: :cascade do |t|
    t.string "table_name", limit: 256, null: false
    t.string "abbreviation", limit: 30
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "structured_type_name", limit: 256
    t.decimal "number_data_elements"
    t.string "classification_type_id", limit: 70
    t.string "classification_type_ovid", limit: 36
    t.string "classification_type_name", limit: 256
    t.string "allow_type_substitution", limit: 1
    t.string "engineer_as_relationship", limit: 1
    t.string "allow_col_reorder", limit: 1
    t.decimal "min_volume"
    t.decimal "expected_volume"
    t.decimal "max_volume"
    t.decimal "growth_rate_percents"
    t.string "growth_rate_interval", limit: 5
    t.string "normal_form", limit: 6
    t.string "temporary_object_scope", limit: 30
    t.string "adequately_normalized", limit: 1
    t.string "substitution_parent", limit: 70
    t.string "substitution_parent_ovid", limit: 36
    t.string "engineer", limit: 1
    t.string "spatial_table", limit: 1
    t.string "oid_is_pk", limit: 1
    t.string "oid_is_user_defined", limit: 1
    t.string "include_scripts_into_ddl", limit: 1
    t.string "model_name", limit: 256
    t.string "substitution_parent_name", limit: 256
    t.string "schema_ovid", limit: 36
    t.string "schema_name", limit: 256
    t.string "source_info_ovid", limit: 36
    t.string "source_datadict_schema_name", limit: 256
    t.string "source_datadict_object_name", limit: 256
    t.string "redaction_policy_name", limit: 50
    t.string "redaction_policy_enabled", limit: 1
    t.string "redaction_policy_expression", limit: 50
    t.string "design_ovid", limit: 36, null: false
    t.string "remotedesign_id", limit: 256
    t.string "remotemodel_id", limit: 256
    t.string "remoteobject_id", limit: 256
    t.string "remoteobjectrltvstoragename", limit: 256
    t.string "usedasremoteobject", limit: 1
    t.index ["classification_type_ovid"], name: "tables_fk_idx"
    t.index ["model_ovid"], name: "tables_fk_idxv1"
    t.index ["ovid", "table_name"], name: "tables_name_idx"
    t.index ["ovid"], name: "tables_pk_idx"
  end

  create_table "dmrs_tableviews", id: false, force: :cascade do |t|
    t.string "tableview_name", limit: 256, null: false
    t.string "object_id", limit: 70, null: false
    t.string "ovid", limit: 36, null: false
    t.string "import_id", limit: 70
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "structured_type_id", limit: 70
    t.string "structured_type_ovid", limit: 36
    t.string "structured_type_name", limit: 256
    t.string "where_clause", limit: 4000
    t.string "having_clause", limit: 4000
    t.string "user_defined", limit: 1, null: false
    t.string "engineer", limit: 1
    t.string "allow_type_substitution", limit: 1
    t.string "oid_columns", limit: 256
    t.string "model_name", limit: 256
    t.string "schema_ovid", limit: 36
    t.string "schema_name", limit: 256
    t.string "design_ovid", limit: 36, null: false
    t.string "remotedesign_id", limit: 256
    t.string "remotemodel_id", limit: 256
    t.string "remoteobject_id", limit: 256
    t.string "remoteobjectrltvstoragename", limit: 256
    t.string "usedasremoteobject", limit: 1
    t.index ["model_ovid"], name: "tableviews_fk_idx"
    t.index ["ovid"], name: "tableviews_pk_idx"
  end

  create_table "dmrs_task_params", id: false, force: :cascade do |t|
    t.string "task_params_id", limit: 70, null: false
    t.string "task_params_ovid", limit: 36, null: false
    t.string "task_params_name", limit: 256, null: false
    t.string "transformation_task_id", limit: 70, null: false
    t.string "transformation_task_ovid", limit: 36, null: false
    t.string "transformation_task_name", limit: 256, null: false
    t.string "task_params_type", limit: 30
    t.string "multiplicity", limit: 30
    t.string "system_objective", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["task_params_ovid"], name: "task_params_pk_idx"
    t.index ["transformation_task_ovid"], name: "task_params_fk_task_idx"
  end

  create_table "dmrs_task_params_items", id: false, force: :cascade do |t|
    t.string "task_params_item_id", limit: 70, null: false
    t.string "task_params_item_ovid", limit: 36, null: false
    t.string "task_params_item_name", limit: 256, null: false
    t.string "task_params_id", limit: 70, null: false
    t.string "task_params_ovid", limit: 36, null: false
    t.string "task_params_name", limit: 256, null: false
    t.string "logical_type_id", limit: 70
    t.string "logical_type_ovid", limit: 36
    t.string "logical_type_name", limit: 256
    t.string "task_params_item_type", limit: 30
    t.string "design_ovid", limit: 36, null: false
    t.index ["task_params_item_ovid"], name: "task_params_items_pk_idx"
    t.index ["task_params_ovid"], name: "task_params_items_fk_pars_idx"
  end

  create_table "dmrs_telephones", id: false, force: :cascade do |t|
    t.string "telephone_id", limit: 70, null: false
    t.string "telephone_ovid", limit: 36, null: false
    t.string "telephone_name", limit: 256, null: false
    t.string "business_info_id", limit: 70, null: false
    t.string "business_info_ovid", limit: 36, null: false
    t.string "business_info_name", limit: 256, null: false
    t.string "phone_number", limit: 1000
    t.string "phone_type", limit: 1000
    t.string "design_ovid", limit: 36, null: false
    t.index ["telephone_ovid"], name: "telephones_pk_idx"
  end

  create_table "dmrs_transformation_flows", id: false, force: :cascade do |t|
    t.string "transformation_flow_id", limit: 70, null: false
    t.string "transformation_flow_ovid", limit: 36, null: false
    t.string "transformation_flow_name", limit: 256, null: false
    t.string "transformation_task_id", limit: 70, null: false
    t.string "transformation_task_ovid", limit: 36, null: false
    t.string "transformation_task_name", limit: 256, null: false
    t.string "source_id", limit: 70
    t.string "source_ovid", limit: 36
    t.string "source_name", limit: 256
    t.string "destination_id", limit: 70
    t.string "destination_ovid", limit: 36
    t.string "destination_name", limit: 256
    t.string "source_type", limit: 30
    t.string "destination_type", limit: 30
    t.string "system_objective", limit: 4000
    t.string "logging", limit: 1
    t.string "op_create", limit: 1
    t.string "op_read", limit: 1
    t.string "op_update", limit: 1
    t.string "op_delete", limit: 1
    t.string "crud_code", limit: 4
    t.string "design_ovid", limit: 36, null: false
    t.index ["transformation_flow_ovid"], name: "transform_flows_pk_idx"
    t.index ["transformation_task_ovid"], name: "transform_flows_fk_task_idx"
  end

  create_table "dmrs_transformation_packages", id: false, force: :cascade do |t|
    t.string "transformation_package_id", limit: 70, null: false
    t.string "transformation_package_ovid", limit: 36, null: false
    t.string "transformation_package_name", limit: 256, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "system_objective", limit: 4000
    t.string "design_ovid", limit: 36, null: false
    t.index ["model_ovid"], name: "transform_packs_fk_model_idx"
    t.index ["transformation_package_ovid"], name: "transform_packs_pk_idx"
  end

  create_table "dmrs_transformation_task_infos", id: false, force: :cascade do |t|
    t.string "transformation_task_id", limit: 70, null: false
    t.string "transformation_task_ovid", limit: 36, null: false
    t.string "transformation_task_name", limit: 256, null: false
    t.string "info_store_id", limit: 70, null: false
    t.string "info_store_ovid", limit: 36, null: false
    t.string "info_store_name", limit: 256, null: false
    t.string "source_target_flag", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["info_store_ovid"], name: "transform_task_infos_fk2_idx"
    t.index ["transformation_task_ovid"], name: "transform_task_infos_fk1_idx"
  end

  create_table "dmrs_transformation_tasks", id: false, force: :cascade do |t|
    t.string "transformation_task_id", limit: 70, null: false
    t.string "transformation_task_ovid", limit: 36, null: false
    t.string "transformation_task_name", limit: 256, null: false
    t.string "transformation_package_id", limit: 70, null: false
    t.string "transformation_package_ovid", limit: 36, null: false
    t.string "transformation_package_name", limit: 256, null: false
    t.string "process_id", limit: 70
    t.string "process_ovid", limit: 36
    t.string "process_name", limit: 256
    t.string "top_level", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["transformation_package_ovid"], name: "transform_tasks_fk_pack_idx"
    t.index ["transformation_task_ovid"], name: "transform_tasks_pk_idx"
  end

  create_table "dmrs_transformations", id: false, force: :cascade do |t|
    t.string "transformation_id", limit: 70, null: false
    t.string "transformation_ovid", limit: 36, null: false
    t.string "transformation_name", limit: 256, null: false
    t.string "transformation_task_id", limit: 70, null: false
    t.string "transformation_task_ovid", limit: 36, null: false
    t.string "transformation_task_name", limit: 256, null: false
    t.string "filter_condition", limit: 4000
    t.string "join_condition", limit: 4000
    t.string "primary", limit: 1
    t.string "design_ovid", limit: 36, null: false
    t.index ["transformation_ovid"], name: "transforms_pk_idx"
    t.index ["transformation_task_ovid"], name: "transforms_fk_task_idx"
  end

  create_table "dmrs_tsdp_policies", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "tsdp_policy_name", limit: 256, null: false
    t.index ["object_ovid", "tsdp_policy_name"], name: "tsdp_policy_name_idx"
  end

  create_table "dmrs_tsdp_sub_policies", id: false, force: :cascade do |t|
    t.string "object_ovid", limit: 36, null: false
    t.string "object_id", limit: 70, null: false
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 50, null: false
    t.string "tsdp_subpolicy_name", limit: 256, null: false
    t.string "expression", limit: 256
    t.string "mask_type", limit: 10
    t.string "mask_template", limit: 50
    t.string "datatype", limit: 50
    t.string "length", limit: 10
    t.string "parent_schema", limit: 50
    t.string "parent_table", limit: 50
    t.index ["object_ovid", "tsdp_subpolicy_name"], name: "tsdp_sp_policy_name_idx"
  end

  create_table "dmrs_value_ranges", id: false, force: :cascade do |t|
    t.string "dataelement_id", limit: 70, null: false
    t.string "dataelement_ovid", limit: 36, null: false
    t.string "type", limit: 10
    t.decimal "sequence", null: false
    t.string "begin_value", limit: 256, null: false
    t.string "end_value", limit: 256
    t.string "short_description", limit: 256
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "dataelement_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["dataelement_ovid"], name: "vl_dataelement_ovid_idx"
  end

  create_table "dmrs_view_columns", id: false, force: :cascade do |t|
    t.string "view_ovid", limit: 36, null: false
    t.string "view_id", limit: 70, null: false
    t.string "view_name", limit: 256, null: false
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "container_alias", limit: 256
    t.string "is_expression", limit: 1
    t.string "column_id", limit: 70, null: false
    t.string "column_ovid", limit: 36, null: false
    t.string "column_name", limit: 256, null: false
    t.string "column_alias", limit: 256
    t.string "native_type", limit: 60
    t.string "type", limit: 1
    t.string "expression", limit: 2000
    t.integer "sequence", limit: 3, precision: 3, null: false
    t.string "personally_id_information", limit: 1
    t.string "sensitive_information", limit: 1
    t.string "mask_for_none_production", limit: 12
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["view_ovid"], name: "view_columns_fk_idx"
  end

  create_table "dmrs_view_containers", id: false, force: :cascade do |t|
    t.string "view_ovid", limit: 36, null: false
    t.string "view_id", limit: 70, null: false
    t.string "view_name", limit: 256, null: false
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "type", limit: 1, null: false
    t.string "alias", limit: 256
    t.integer "sequence", limit: 3, precision: 3, null: false
    t.string "model_id", limit: 70, null: false
    t.string "model_ovid", limit: 36, null: false
    t.string "model_name", limit: 256, null: false
    t.string "design_ovid", limit: 36, null: false
    t.index ["view_ovid"], name: "view_containers_fk_idx"
  end

  create_table "dmrs_view_order_groupby", id: false, force: :cascade do |t|
    t.string "view_ovid", limit: 36, null: false
    t.string "view_id", limit: 70, null: false
    t.string "view_name", limit: 256, null: false
    t.string "container_id", limit: 70, null: false
    t.string "container_ovid", limit: 36, null: false
    t.string "container_name", limit: 256, null: false
    t.string "container_alias", limit: 256
    t.string "is_expression", limit: 1
    t.string "usage", limit: 1
    t.integer "sequence", limit: 3, precision: 3, null: false
    t.string "column_id", limit: 70
    t.string "column_ovid", limit: 36
    t.string "column_name", limit: 256
    t.string "column_alias", limit: 256
    t.string "sort_order", limit: 4
    t.string "expression", limit: 2000
    t.string "design_ovid", limit: 36, null: false
    t.index ["view_ovid"], name: "view_order_groupby_fk_idx"
  end

  create_table "employees", force: :cascade do |t|
    t.string "dni"
    t.string "ape_pat"
    t.string "ape_mat"
    t.string "nombres"
    t.string "direccion"
    t.string "telefono"
    t.string "correo"
    t.date "fec_nacimiento"
    t.integer "estado", precision: 38
    t.integer "tip_tra", precision: 38
    t.integer "esta_civil", precision: 38
    t.integer "afp", precision: 38
    t.integer "admin_user_id", limit: 19, precision: 19
    t.string "foto"
    t.string "ape_nom"
    t.string "correo_corp"
    t.date "fec_inicon"
    t.date "fec_tercon"
    t.string "grado"
    t.string "cargo"
    t.integer "area", precision: 38
    t.integer "sele", precision: 38
    t.float "remuneracion"
    t.integer "sele2", precision: 38
    t.string "distrito"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_user_id"], name: "i_employees_admin_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", precision: 38, default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_users_reset_password_token", unique: true
  end

  add_foreign_key "employees", "admin_users"
end
