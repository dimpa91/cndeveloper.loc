<form action="" method="post">	
	<p class="price">Price: <?php echo wc_price(get_post_meta($post->ID, '_price', true));?></p>
	<p>Subtitle: <?php echo get_post_meta($post->ID, 'sub_title', true); ?></p>
	<p>Terms: <?php echo get_the_term_list($post->ID, 'product_cat'); ?></p>
	<?php wc_print_notices(); ?>
    <input name="add-to-cart" type="hidden" value="<?php the_ID(); ?>" />
    <input name="quantity" type="number" value="1" min="1"  />
    <input name="submit" type="submit" value="Add to cart" />
 </form>