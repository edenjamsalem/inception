<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'eamsalem' );

/** Database password */
define( 'DB_PASSWORD', '42baby' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '?&,X8!UN<%)R-EMw[Vs7yOaKVXuRQds)GoGBoFK9r;d;V&.`fgn&E]gm]+)UPiH2' );
define( 'SECURE_AUTH_KEY',   'j>;Yr)y#p}f@rDvtn+sjVP|KnOC*Cg{G;wy9hH##Q+f~=^9$;z +d3;cD~fc%q]Q' );
define( 'LOGGED_IN_KEY',     'Iq)nb*5)_<b|~M;sdKU:L3B3CpVCO`y`c0sBdg27P;dZ!j|?E2SbB$Z%w<RJFkc!' );
define( 'NONCE_KEY',         'N7Buw?LVf (`*AFpT@v6O0kP8_:NsM,p@0vuw}m:i2n*a@{Mr#m;7UOtbC+n nWc' );
define( 'AUTH_SALT',         'b)4j.RD^uxX@.m&tjwgzqSwkIErJ}u?jk}<M){D+b.4E9Y$o1e{AiWpR-,xn#%9n' );
define( 'SECURE_AUTH_SALT',  '%^h#8<6@)}qBb5P$LZ.p_4_ J_Pq.WNI,Zu<:=yMPv`PoPq44.U_47qRv=X=Y+,P' );
define( 'LOGGED_IN_SALT',    '0u5nfar9&AfE5QKlaOr.-+ U.u11{;YZ/4o9`U&#~O~vv(iC<}&tUaW8jD+0,6XO' );
define( 'NONCE_SALT',        'g{fCtNMW=yB|#Kwc)E<{xvG,@G=~mdYehsB!F.C_%fx?{-Kkpxjjo|E!)TGqsmS7' );
define( 'WP_CACHE_KEY_SALT', ';I(39//Axlp)F,vz)}=2%dI]U+VD+V-:}`^!Y_ e<4fv2h.]1)v;zK[7UQ,CDi)|' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
