<?php

	function sp_scripts() {
		wp_enqueue_style('styles', get_stylesheet_uri());
		wp_enqueue_script('jquery');
		//wp_enqueue_script( "main_scripts", get_template_directory_uri() . "/js/main.js");
	}

	add_action( "wp_enqueue_scripts", "sp_scripts" );

	function woocommerce_support() {
		add_theme_support( 'woocommerce' );
	}
	
	add_action( 'after_setup_theme', 'woocommerce_support' );
	
	// add post type 
	
	function register_cpts() {
		$labels = array(
			"name" => __( "Movies", "" ),
			"singular_name" => __( "Movie", "" ),
		);

		$args = array(
			"label" => __( "Movies", "" ),
			"labels" => $labels,			
			"public" => true,
			"exclude_from_search" => false,
			"map_meta_cap" => true,
			"rewrite" => array( "slug" => "movies", "with_front" => true ),
			"query_var" => true,
			"supports" => array( "title", "editor", "thumbnail" ),
			"taxonomies" => array( "product_cat" ),
		);

		register_post_type( "movies", $args );
	}

	add_action( 'init', 'register_cpts' );
	
	// add fields to post 
	function add_content_before_editor($post) {
		
		if (!isset($post) || $post->post_type != 'movies') return;
		
		//print_r($post);
		
		echo '<div class="subtitle" style="padding: 0;"><input type="text" value="'.get_post_meta($post->ID, 'sub_title', true).'" placeholder="Enter subtitle" name="sub_title" style="width:100%;margin: 0;"></div>';
		echo '<br><div class="subtitle" style="padding: 0;">Price: <input type="number" value="'.get_post_meta($post->ID, '_price', true).'" placeholder="" name="_price"></div>';
	}

	add_action( 'edit_form_after_title', 'add_content_before_editor' );
	
	
	// save fields 
	function save_additional_movie_data ( $post_id ) {
		
		if ( defined('DOING_AUTOSAVE') && DOING_AUTOSAVE ) 
			return $post_id;
		
		if ( !current_user_can( 'edit_post', $post_id ) )
			return $post_id;
		
		$post = get_post($post_id);
		if ($post->post_type == 'movies') { 
			update_post_meta($post_id, 'sub_title', esc_attr($_POST['sub_title']));
			update_post_meta($post_id, 'product-type', 'simple');
			update_post_meta($post_id, '_price', esc_attr($_POST['_price']));
		}
		return $post_id;
	}
	 
	add_action('save_post', 'save_additional_movie_data');
	
	class Movie_Data_Store_CPT extends WC_Product_Data_Store_CPT implements WC_Object_Data_Store_Interface, WC_Product_Data_Store_Interface {

		/**
		 * Method to read a product from the database.
		 * @param WC_Product
		 */
		public function read( &$product ) {
			$product->set_defaults();

			if ( ! $product->get_id() || ! ( $post_object = get_post( $product->get_id() ) ) || 'product' !== $post_object->post_type ) {
				//throw new Exception( __( 'Invalid product.', 'woocommerce' ) );
			}

			$id = $product->get_id();

			$product->set_props( array(
				'name'              => $post_object->post_title,
				'slug'              => $post_object->post_name,
				'date_created'      => 0 < $post_object->post_date_gmt ? wc_string_to_timestamp( $post_object->post_date_gmt ) : null,
				'date_modified'     => 0 < $post_object->post_modified_gmt ? wc_string_to_timestamp( $post_object->post_modified_gmt ) : null,
				'status'            => $post_object->post_status,
				'description'       => $post_object->post_content,
				'short_description' => $post_object->post_excerpt,
				'parent_id'         => $post_object->post_parent,
				'menu_order'        => $post_object->menu_order,
				'reviews_allowed'   => 'open' === $post_object->comment_status,
			) );

			$this->read_attributes( $product );
			$this->read_downloads( $product );
			$this->read_visibility( $product );
			$this->read_product_data( $product );
			$this->read_extra_data( $product );
			$product->set_object_read( true );
		}


	}
	
	// add class to woocommerce store
	add_filter( 'woocommerce_data_stores', 'my_woocommerce_data_stores' );

	function my_woocommerce_data_stores( $stores ) {
		$stores['product'] = 'Movie_Data_Store_CPT';
		return $stores;
	}
	
	
	function validate_skype_register_fields( $username, $email, $validation_errors ) {	
		if ( isset( $_POST['skype'] ) && empty( $_POST['skype'] ) ) {
            $validation_errors->add( 'skype_error', __( 'Skype name is required!', 'woocommerce' ) );
		} 
     
		return $validation_errors;
	}
 
	add_action( 'woocommerce_register_post', 'validate_skype_register_fields', 10, 3 );
	
	function save_skype_register_fields( $customer_id ) {		
		if ( isset( $_POST['skype'] ) ) update_user_meta( $customer_id, 'skype', sanitize_text_field( $_POST['skype'] ) );
	}
	
	add_action( 'woocommerce_created_customer', 'save_skype_register_fields' );
	
	function extra_user_profile_fields( $user ) { ?>
    <h3><?php _e("Messengers"); ?></h3>

    <table class="form-table">
    <tr>
        <th><label for="skype"><?php _e("Skype"); ?></label></th>
        <td>
            <input type="text" name="skype" id="skype" value="<?php echo esc_attr( get_the_author_meta( 'skype', $user->ID ) ); ?>" class="regular-text" /><br />
            <span class="description"><?php _e("Please enter your skype name."); ?></span>
        </td>
    </tr>
    <tr>
    </table>
<?php }

	add_action( 'edit_user_profile', 'extra_user_profile_fields' );
	add_action( 'show_user_profile', 'extra_user_profile_fields' );
	
	function save_extra_user_profile_fields( $user_id ) {

		if ( !current_user_can( 'edit_user', $user_id ) ) { return false; }
		update_user_meta( $user_id, 'skype', $_POST['skype'] );
	
	}

	add_action( 'personal_options_update', 'save_extra_user_profile_fields' );
	add_action( 'edit_user_profile_update', 'save_extra_user_profile_fields' );
	
	add_filter( 'woocommerce_add_to_cart_redirect', 'filter_function_name_3660' );
	function filter_function_name_3660( $url ){
		$url = wc_get_checkout_url();

		return $url;
	}