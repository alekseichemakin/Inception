# WordPress MySQL database backup
#
# Generated: Sunday 10. October 2021 13:57 UTC
# Hostname: mariadb:3306
# Database: `wordpress`
# --------------------------------------------------------
/*!40101 SET NAMES utf8 */;
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `wp_commentmeta`


#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_comments`


#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_comments`
#
 
INSERT INTO `wp_comments` VALUES (1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-10-10 13:13:34', '2021-10-10 13:13:34', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0); 
INSERT INTO `wp_comments` VALUES (2, 1, 'a b', 'ashalet@mail.com', '', '172.26.0.1', '2021-10-10 13:17:56', '2021-10-10 13:17:56', 'way', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0', 'comment', 0, 2);
#
# End of data contents of table `wp_comments`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_links`


#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_options`


#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_options`
#
 
INSERT INTO `wp_options` VALUES (1, 'siteurl', 'https://mqueen.42.fr', 'yes'); 
INSERT INTO `wp_options` VALUES (2, 'home', 'https://mqueen.42.fr', 'yes'); 
INSERT INTO `wp_options` VALUES (3, 'blogname', 'iiiyyy', 'yes'); 
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'Just another WordPress site', 'yes'); 
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (6, 'admin_email', 'iiiyyy@mail.com', 'yes'); 
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (8, 'use_balanceTags', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (9, 'use_smilies', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (10, 'require_name_email', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (11, 'comments_notify', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (12, 'posts_per_rss', '10', 'yes'); 
INSERT INTO `wp_options` VALUES (13, 'rss_use_excerpt', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes'); 
INSERT INTO `wp_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes'); 
INSERT INTO `wp_options` VALUES (16, 'mailserver_pass', 'password', 'yes'); 
INSERT INTO `wp_options` VALUES (17, 'mailserver_port', '110', 'yes'); 
INSERT INTO `wp_options` VALUES (18, 'default_category', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (19, 'default_comment_status', 'open', 'yes'); 
INSERT INTO `wp_options` VALUES (20, 'default_ping_status', 'open', 'yes'); 
INSERT INTO `wp_options` VALUES (21, 'default_pingback_flag', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (22, 'posts_per_page', '10', 'yes'); 
INSERT INTO `wp_options` VALUES (23, 'date_format', 'F j, Y', 'yes'); 
INSERT INTO `wp_options` VALUES (24, 'time_format', 'g:i a', 'yes'); 
INSERT INTO `wp_options` VALUES (25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'); 
INSERT INTO `wp_options` VALUES (26, 'comment_moderation', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (27, 'moderation_notify', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (28, 'permalink_structure', '', 'yes'); 
INSERT INTO `wp_options` VALUES (29, 'rewrite_rules', '', 'yes'); 
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes'); 
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no'); 
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:1:{i:0;s:45:"search-and-replace/inpsyde-search-replace.php";}', 'yes'); 
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes'); 
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'); 
INSERT INTO `wp_options` VALUES (36, 'comment_max_links', '2', 'yes'); 
INSERT INTO `wp_options` VALUES (37, 'gmt_offset', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (38, 'default_email_category', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (39, 'recently_edited', '', 'no'); 
INSERT INTO `wp_options` VALUES (40, 'template', 'twentytwentyone', 'yes'); 
INSERT INTO `wp_options` VALUES (41, 'stylesheet', 'twentytwentyone', 'yes'); 
INSERT INTO `wp_options` VALUES (42, 'comment_registration', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (43, 'html_type', 'text/html', 'yes'); 
INSERT INTO `wp_options` VALUES (44, 'use_trackback', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (45, 'default_role', 'subscriber', 'yes'); 
INSERT INTO `wp_options` VALUES (46, 'db_version', '49752', 'yes'); 
INSERT INTO `wp_options` VALUES (47, 'uploads_use_yearmonth_folders', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (48, 'upload_path', '', 'yes'); 
INSERT INTO `wp_options` VALUES (49, 'blog_public', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (50, 'default_link_category', '2', 'yes'); 
INSERT INTO `wp_options` VALUES (51, 'show_on_front', 'posts', 'yes'); 
INSERT INTO `wp_options` VALUES (52, 'tag_base', '', 'yes'); 
INSERT INTO `wp_options` VALUES (53, 'show_avatars', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (54, 'avatar_rating', 'G', 'yes'); 
INSERT INTO `wp_options` VALUES (55, 'upload_url_path', '', 'yes'); 
INSERT INTO `wp_options` VALUES (56, 'thumbnail_size_w', '150', 'yes'); 
INSERT INTO `wp_options` VALUES (57, 'thumbnail_size_h', '150', 'yes'); 
INSERT INTO `wp_options` VALUES (58, 'thumbnail_crop', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (59, 'medium_size_w', '300', 'yes'); 
INSERT INTO `wp_options` VALUES (60, 'medium_size_h', '300', 'yes'); 
INSERT INTO `wp_options` VALUES (61, 'avatar_default', 'mystery', 'yes'); 
INSERT INTO `wp_options` VALUES (62, 'large_size_w', '1024', 'yes'); 
INSERT INTO `wp_options` VALUES (63, 'large_size_h', '1024', 'yes'); 
INSERT INTO `wp_options` VALUES (64, 'image_default_link_type', 'none', 'yes'); 
INSERT INTO `wp_options` VALUES (65, 'image_default_size', '', 'yes'); 
INSERT INTO `wp_options` VALUES (66, 'image_default_align', '', 'yes'); 
INSERT INTO `wp_options` VALUES (67, 'close_comments_for_old_posts', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (68, 'close_comments_days_old', '14', 'yes'); 
INSERT INTO `wp_options` VALUES (69, 'thread_comments', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (70, 'thread_comments_depth', '5', 'yes'); 
INSERT INTO `wp_options` VALUES (71, 'page_comments', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (72, 'comments_per_page', '50', 'yes'); 
INSERT INTO `wp_options` VALUES (73, 'default_comments_page', 'newest', 'yes'); 
INSERT INTO `wp_options` VALUES (74, 'comment_order', 'asc', 'yes'); 
INSERT INTO `wp_options` VALUES (75, 'sticky_posts', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (76, 'widget_categories', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (77, 'widget_text', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (78, 'widget_rss', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (79, 'uninstall_plugins', 'a:0:{}', 'no'); 
INSERT INTO `wp_options` VALUES (80, 'timezone_string', '', 'yes'); 
INSERT INTO `wp_options` VALUES (81, 'page_for_posts', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (82, 'page_on_front', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (83, 'default_post_format', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (84, 'link_manager_enabled', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (85, 'finished_splitting_shared_terms', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (86, 'site_icon', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (87, 'medium_large_size_w', '768', 'yes'); 
INSERT INTO `wp_options` VALUES (88, 'medium_large_size_h', '0', 'yes'); 
INSERT INTO `wp_options` VALUES (89, 'wp_page_for_privacy_policy', '3', 'yes'); 
INSERT INTO `wp_options` VALUES (90, 'show_comments_cookies_opt_in', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (91, 'admin_email_lifespan', '1649423613', 'yes'); 
INSERT INTO `wp_options` VALUES (92, 'disallowed_keys', '', 'no'); 
INSERT INTO `wp_options` VALUES (93, 'comment_previously_approved', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'); 
INSERT INTO `wp_options` VALUES (95, 'auto_update_core_dev', 'enabled', 'yes'); 
INSERT INTO `wp_options` VALUES (96, 'auto_update_core_minor', 'enabled', 'yes'); 
INSERT INTO `wp_options` VALUES (97, 'auto_update_core_major', 'enabled', 'yes'); 
INSERT INTO `wp_options` VALUES (98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (99, 'initial_db_version', '49752', 'yes'); 
INSERT INTO `wp_options` VALUES (100, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'); 
INSERT INTO `wp_options` VALUES (101, 'fresh_site', '1', 'yes'); 
INSERT INTO `wp_options` VALUES (102, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (103, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'); 
INSERT INTO `wp_options` VALUES (104, 'cron', 'a:6:{i:1633871617;a:6:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1633871619;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1633871622;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1633871679;a:1:{s:28:"wp_update_comment_type_batch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1633958017;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'); 
INSERT INTO `wp_options` VALUES (105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (107, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (112, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (113, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (114, 'nonce_key', 'QjiwoSX^X](|Gk=Om|jl2tecoi-9Q!LLrp;Ql@74op)1hZQkkq~pJ1?y$ J=$ {0', 'no'); 
INSERT INTO `wp_options` VALUES (115, 'nonce_salt', 'e.[.k-]9CGnWp(0cj30/.OnyX`o=v8CYf/fe%s2)D?9?kqezuwsZ!aY|thnV;Nj{', 'no'); 
INSERT INTO `wp_options` VALUES (116, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (117, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (118, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (119, '_transient_doing_cron', '1633874254.1418340206146240234375', 'yes'); 
INSERT INTO `wp_options` VALUES (120, 'secure_auth_key', '3Y3<IC#(n?#*o`86]lWN|>C)E>5pF-z2uaSL/ucD.?^|Jkt941QLa&o=p,5s3kor', 'no'); 
INSERT INTO `wp_options` VALUES (121, 'secure_auth_salt', 'Fn6#S&vwlOfMJ>nzCo*,2)jv$khs?41m-,Z`d%._~.[GE51.8>fS&]k:SC1twSvY', 'no'); 
INSERT INTO `wp_options` VALUES (122, 'logged_in_key', 'Q:<=7XP3IC6@R5k}yN.^/{azKQ{O83C;u>H5C*j}K|ch=e_<W(@1;Ag#ZLC8,,Vr', 'no'); 
INSERT INTO `wp_options` VALUES (123, 'logged_in_salt', 'f1Q67{ztV0Y?^wFqt^c&L$t/xVf@2pzF4]2UGh4m{MIJ<%sChLEjkTlEa=-6#K/3', 'no'); 
INSERT INTO `wp_options` VALUES (124, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.8.1";s:7:"version";s:5:"5.8.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1633874051;s:15:"version_checked";s:5:"5.8.1";s:12:"translations";a:0:{}}', 'no'); 
INSERT INTO `wp_options` VALUES (128, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1633874052;s:7:"checked";a:3:{s:14:"twentynineteen";s:3:"2.1";s:12:"twentytwenty";s:3:"1.8";s:15:"twentytwentyone";s:3:"1.4";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.8";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'); 
INSERT INTO `wp_options` VALUES (129, '_site_transient_timeout_browser_95c10b49bfb30e9e6763dc85bcefcf97', '1634476421', 'no'); 
INSERT INTO `wp_options` VALUES (130, '_site_transient_browser_95c10b49bfb30e9e6763dc85bcefcf97', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"93.0";s:8:"platform";s:5:"Linux";s:10:"update_url";s:32:"https://www.mozilla.org/firefox/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'); 
INSERT INTO `wp_options` VALUES (131, '_site_transient_timeout_php_check_009c6eb5b40f6e5b9ba52ef6dc06f73a', '1634476422', 'no'); 
INSERT INTO `wp_options` VALUES (132, '_site_transient_php_check_009c6eb5b40f6e5b9ba52ef6dc06f73a', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'); 
INSERT INTO `wp_options` VALUES (133, 'can_compress_scripts', '1', 'no'); 
INSERT INTO `wp_options` VALUES (134, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1633914823', 'no'); 
INSERT INTO `wp_options` VALUES (135, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'); 
INSERT INTO `wp_options` VALUES (136, '_site_transient_timeout_community-events-343e65632639fd90f95a81dd0a994cde', '1633915014', 'no'); 
INSERT INTO `wp_options` VALUES (137, '_site_transient_community-events-343e65632639fd90f95a81dd0a994cde', 'a:4:{s:9:"sandboxed";b:0;s:5:"error";N;s:8:"location";a:1:{s:2:"ip";s:10:"172.26.0.0";}s:6:"events";a:2:{i:0;a:10:{s:4:"type";s:6:"meetup";s:5:"title";s:65:"Quiero contribuir al proyecto de WordPress, ¿Por dónde empiezo?";s:3:"url";s:68:"https://www.meetup.com/learn-wordpress-discussions/events/281200478/";s:6:"meetup";s:27:"Learn WordPress Discussions";s:10:"meetup_url";s:51:"https://www.meetup.com/learn-wordpress-discussions/";s:4:"date";s:19:"2021-10-11 06:00:00";s:8:"end_date";s:19:"2021-10-11 07:00:00";s:20:"start_unix_timestamp";i:1633957200;s:18:"end_unix_timestamp";i:1633960800;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"US";s:8:"latitude";d:37.779998779297;s:9:"longitude";d:-122.41999816895;}}i:1;a:10:{s:4:"type";s:8:"wordcamp";s:5:"title";s:27:"WordCamp Italia Online 2021";s:3:"url";s:33:"https://italia.wordcamp.org/2021/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2021-10-22 14:00:00";s:8:"end_date";s:19:"2021-10-23 00:00:00";s:20:"start_unix_timestamp";i:1634904000;s:18:"end_unix_timestamp";i:1634940000;s:8:"location";a:4:{s:8:"location";s:6:"Online";s:7:"country";s:2:"IT";s:8:"latitude";d:41.8725553;s:9:"longitude";d:12.516448;}}}}', 'no'); 
INSERT INTO `wp_options` VALUES (138, 'theme_mods_twentytwentyone', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'); 
INSERT INTO `wp_options` VALUES (139, 'auth_key', '&jIe852J.|[9!s*xr|n-G`MB:6Z1-1sqzDfd2:slJyusJE8T^~p6RCoFs]79O/x-', 'no'); 
INSERT INTO `wp_options` VALUES (140, 'auth_salt', 'G9EfYN,.R8 &R~]7LZzH)NgbZXD+sD*#DTN *Jt_l6,Vn$0:jEL}x5#4u#?TNh4k', 'no'); 
INSERT INTO `wp_options` VALUES (141, '_site_transient_timeout_popular_importers_67884d6cd44c7ad233559f66441363e3', '1634045837', 'no'); 
INSERT INTO `wp_options` VALUES (142, '_site_transient_popular_importers_67884d6cd44c7ad233559f66441363e3', 'a:2:{s:9:"importers";a:7:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:54:"Import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:71:"Convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:10:"wp-cat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:46:"Import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:62:"Import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:30:"Import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:53:"Import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:96:"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'no'); 
INSERT INTO `wp_options` VALUES (143, '_site_transient_timeout_available_translations', '1633883853', 'no'); 
INSERT INTO `wp_options` VALUES (144, '_site_transient_available_translations', 'a:127:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-05-13 15:59:22";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-02 15:48:22";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-08 17:57:56";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-10-29 07:54:22";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.9.18/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-30 20:41:33";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-10-31 08:48:37";s:12:"english_name";s:20:"Bengali (Bangladesh)";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.7/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2020-10-30 03:24:38";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-17 13:05:11";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-06 09:17:37";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-13 20:12:59";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-06 13:31:37";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-07 08:20:41";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-10 20:58:55";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.8.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-07-22 10:24:20";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-07-22 10:24:47";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/5.8.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_AT";a:8:{s:8:"language";s:5:"de_AT";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-07-10 12:19:50";s:12:"english_name";s:16:"German (Austria)";s:11:"native_name";s:21:"Deutsch (Österreich)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/de_AT.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-10 20:59:31";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:3:"dsb";a:8:{s:8:"language";s:3:"dsb";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 11:17:46";s:12:"english_name";s:13:"Lower Sorbian";s:11:"native_name";s:16:"Dolnoserbšćina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.8.1/dsb.zip";s:3:"iso";a:2:{i:2;s:3:"dsb";i:3;s:3:"dsb";}s:7:"strings";a:1:{s:8:"continue";s:5:"Dalej";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-26 10:54:05";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-25 03:09:33";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-09 10:29:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-04 18:08:37";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-25 03:05:46";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-03 10:52:30";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-30 20:54:06";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-04 20:53:18";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_EC";a:8:{s:8:"language";s:5:"es_EC";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 02:19:31";s:12:"english_name";s:17:"Spanish (Ecuador)";s:11:"native_name";s:19:"Español de Ecuador";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_EC.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-07-30 00:35:05";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 20:42:17";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 13:13:00";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_DO";a:8:{s:8:"language";s:5:"es_DO";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-08 14:32:50";s:12:"english_name";s:28:"Spanish (Dominican Republic)";s:11:"native_name";s:33:"Español de República Dominicana";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_DO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_UY";a:8:{s:8:"language";s:5:"es_UY";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-03-31 18:33:26";s:12:"english_name";s:17:"Spanish (Uruguay)";s:11:"native_name";s:19:"Español de Uruguay";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-06-14 16:02:22";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PR";a:8:{s:8:"language";s:5:"es_PR";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-04-29 15:36:59";s:12:"english_name";s:21:"Spanish (Puerto Rico)";s:11:"native_name";s:23:"Español de Puerto Rico";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.7/es_PR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-14 13:29:01";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:6:"5.2.12";s:7:"updated";s:19:"2019-03-02 06:35:01";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.2.12/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-14 11:45:58";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 02:19:00";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2020-08-12 08:38:59";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-25 08:50:13";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-02 05:28:18";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"fa_AF";a:8:{s:8:"language";s:5:"fa_AF";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-06-14 12:40:09";s:12:"english_name";s:21:"Persian (Afghanistan)";s:11:"native_name";s:31:"(فارسی (افغانستان";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/fa_AF.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-17 11:15:06";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-04 22:43:47";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-08 09:41:41";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-02-22 13:54:46";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-05 22:22:24";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:6:"4.4.25";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.4.25/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-20 10:01:27";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-11-06 12:34:38";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-28 10:05:42";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:3:"hsb";a:8:{s:8:"language";s:3:"hsb";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 11:18:08";s:12:"english_name";s:13:"Upper Sorbian";s:11:"native_name";s:17:"Hornjoserbšćina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.8.1/hsb.zip";s:3:"iso";a:2:{i:2;s:3:"hsb";i:3;s:3:"hsb";}s:7:"strings";a:1:{s:8:"continue";s:4:"Dale";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-04 06:55:18";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-04 18:12:54";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-12-11 10:40:02";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-09 17:15:10";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-10 15:04:23";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-02-16 23:58:56";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nutugne";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-21 06:43:12";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 18:03:03";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.8.1/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-07-10 11:35:44";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:6:"5.2.12";s:7:"updated";s:19:"2019-06-10 16:18:28";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.2.12/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:2:"kn";a:8:{s:8:"language";s:2:"kn";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-03 06:17:02";s:12:"english_name";s:7:"Kannada";s:11:"native_name";s:15:"ಕನ್ನಡ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/kn.zip";s:3:"iso";a:2:{i:1;s:2:"kn";i:2;s:3:"kan";}s:7:"strings";a:1:{s:8:"continue";s:30:"ಮುಂದುವರೆಸಿ";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-02 05:27:21";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-07 14:00:59";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.8.1/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:9:"ຕໍ່";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-03-23 12:35:40";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-17 20:04:07";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-07-01 09:16:57";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.4.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2019-11-22 15:32:08";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.18/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2018-08-31 11:57:07";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.2.30";s:7:"updated";s:19:"2017-12-26 11:57:10";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.2.30/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-08 01:47:26";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:6:"5.2.12";s:7:"updated";s:19:"2020-05-31 16:07:59";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.2.12/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:31:"जारीराख्नु ";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-01 22:20:58";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-07 19:26:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-07 12:56:06";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-03-18 10:59:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.8.17/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-08 10:35:11";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.3.26";s:7:"updated";s:19:"2015-12-02 21:41:29";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3.26/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-15 08:56:03";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-08 19:39:30";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_AO";a:8:{s:8:"language";s:5:"pt_AO";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-05-30 09:51:29";s:12:"english_name";s:19:"Portuguese (Angola)";s:11:"native_name";s:20:"Português de Angola";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/pt_AO.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-09 21:40:55";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/5.8.1/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-06 17:16:35";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-01 21:02:01";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:3:"snd";a:8:{s:8:"language";s:3:"snd";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-07-07 01:53:37";s:12:"english_name";s:6:"Sindhi";s:11:"native_name";s:8:"سنڌي";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.4.7/snd.zip";s:3:"iso";a:3:{i:1;s:2:"sd";i:2;s:3:"snd";i:3;s:3:"snd";}s:7:"strings";a:1:{s:8:"continue";s:15:"اڳتي هلو";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-07 12:49:21";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-10 12:52:53";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.8.1/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-08-31 06:12:58";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-03 10:59:56";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-08-01 21:21:06";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-06 20:34:52";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"sw";a:8:{s:8:"language";s:2:"sw";s:7:"version";s:5:"5.3.9";s:7:"updated";s:19:"2019-10-13 15:35:35";s:12:"english_name";s:7:"Swahili";s:11:"native_name";s:9:"Kiswahili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.3.9/sw.zip";s:3:"iso";a:2:{i:1;s:2:"sw";i:2;s:3:"swa";}s:7:"strings";a:1:{s:8:"continue";s:7:"Endelea";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:5:"ta_LK";a:8:{s:8:"language";s:5:"ta_LK";s:7:"version";s:6:"4.2.30";s:7:"updated";s:19:"2015-12-03 01:07:44";s:12:"english_name";s:17:"Tamil (Sri Lanka)";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.2.30/ta_LK.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:18:"தொடர்க";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-10 08:48:56";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:6:"4.8.17";s:7:"updated";s:19:"2017-09-30 09:04:29";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.17/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-04 12:16:39";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.9.18";s:7:"updated";s:19:"2021-07-03 18:41:33";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.18/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-10 12:13:57";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"5.4.7";s:7:"updated";s:19:"2020-04-09 11:17:33";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.4.7/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-02-28 12:02:22";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-22 14:07:50";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.8.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-09-19 06:35:00";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"5.8.1";s:7:"updated";s:19:"2021-10-08 23:17:35";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.8.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:8:"5.8-beta";s:7:"updated";s:19:"2021-06-27 10:46:14";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.8-beta/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'); 
INSERT INTO `wp_options` VALUES (145, 'recently_activated', 'a:0:{}', 'yes'); 
INSERT INTO `wp_options` VALUES (147, '_site_transient_timeout_theme_roots', '1633875851', 'no'); 
INSERT INTO `wp_options` VALUES (148, '_site_transient_theme_roots', 'a:3:{s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no'); 
INSERT INTO `wp_options` VALUES (149, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1633874066;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";s:6:"tested";s:5:"5.8.1";s:12:"requires_php";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":10:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}s:45:"search-and-replace/inpsyde-search-replace.php";O:8:"stdClass":10:{s:2:"id";s:32:"w.org/plugins/search-and-replace";s:4:"slug";s:18:"search-and-replace";s:6:"plugin";s:45:"search-and-replace/inpsyde-search-replace.php";s:11:"new_version";s:5:"3.2.1";s:3:"url";s:49:"https://wordpress.org/plugins/search-and-replace/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/search-and-replace.3.2.1.zip";s:5:"icons";a:2:{s:2:"2x";s:71:"https://ps.w.org/search-and-replace/assets/icon-256x256.png?rev=1776844";s:2:"1x";s:71:"https://ps.w.org/search-and-replace/assets/icon-128x128.png?rev=1776844";}s:7:"banners";a:2:{s:2:"2x";s:74:"https://ps.w.org/search-and-replace/assets/banner-1544x500.png?rev=1776844";s:2:"1x";s:73:"https://ps.w.org/search-and-replace/assets/banner-772x250.png?rev=1776844";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.0";}}s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:6:"4.1.12";s:9:"hello.php";s:5:"1.7.2";s:45:"search-and-replace/inpsyde-search-replace.php";s:5:"3.2.1";}}', 'no');
#
# End of data contents of table `wp_options`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_postmeta`


#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_postmeta`
#
 
INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default'); 
INSERT INTO `wp_postmeta` VALUES (2, 3, '_wp_page_template', 'default');
#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_posts`


#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_posts`
#
 
INSERT INTO `wp_posts` VALUES (1, 1, '2021-10-10 13:13:34', '2021-10-10 13:13:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-10-10 13:13:34', '2021-10-10 13:13:34', '', 0, 'https://mqueen.42.fr/?p=1', 0, 'post', '', 2); 
INSERT INTO `wp_posts` VALUES (2, 1, '2021-10-10 13:13:34', '2021-10-10 13:13:34', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="https://mqueen.42.fr/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-10-10 13:13:34', '2021-10-10 13:13:34', '', 0, 'https://mqueen.42.fr/?page_id=2', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (3, 1, '2021-10-10 13:13:34', '2021-10-10 13:13:34', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: https://mqueen.42.fr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-10-10 13:13:34', '2021-10-10 13:13:34', '', 0, 'https://mqueen.42.fr/?page_id=3', 0, 'page', '', 0); 
INSERT INTO `wp_posts` VALUES (4, 1, '2021-10-10 13:13:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-10-10 13:13:42', '0000-00-00 00:00:00', '', 0, 'https://mqueen.42.fr/?p=4', 0, 'post', '', 0);
#
# End of data contents of table `wp_posts`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_term_relationships`


#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_term_relationships`
#
 
INSERT INTO `wp_term_relationships` VALUES (1, 1, 0);
#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_term_taxonomy`


#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_term_taxonomy`
#
 
INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 1);
#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_termmeta`


#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_terms`


#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_terms`
#
 
INSERT INTO `wp_terms` VALUES (1, 'Uncategorized', 'uncategorized', 0);
#
# End of data contents of table `wp_terms`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_usermeta`


#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_usermeta`
#
 
INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'iiiuuu'); 
INSERT INTO `wp_usermeta` VALUES (2, 1, 'first_name', ''); 
INSERT INTO `wp_usermeta` VALUES (3, 1, 'last_name', ''); 
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', ''); 
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true'); 
INSERT INTO `wp_usermeta` VALUES (6, 1, 'syntax_highlighting', 'true'); 
INSERT INTO `wp_usermeta` VALUES (7, 1, 'comment_shortcuts', 'false'); 
INSERT INTO `wp_usermeta` VALUES (8, 1, 'admin_color', 'fresh'); 
INSERT INTO `wp_usermeta` VALUES (9, 1, 'use_ssl', '0'); 
INSERT INTO `wp_usermeta` VALUES (10, 1, 'show_admin_bar_front', 'true'); 
INSERT INTO `wp_usermeta` VALUES (11, 1, 'locale', ''); 
INSERT INTO `wp_usermeta` VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'); 
INSERT INTO `wp_usermeta` VALUES (13, 1, 'wp_user_level', '10'); 
INSERT INTO `wp_usermeta` VALUES (14, 1, 'dismissed_wp_pointers', ''); 
INSERT INTO `wp_usermeta` VALUES (15, 1, 'show_welcome_panel', '1'); 
INSERT INTO `wp_usermeta` VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '4'); 
INSERT INTO `wp_usermeta` VALUES (18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.26.0.0";}'); 
INSERT INTO `wp_usermeta` VALUES (19, 2, 'nickname', 'ashalet'); 
INSERT INTO `wp_usermeta` VALUES (20, 2, 'first_name', 'a'); 
INSERT INTO `wp_usermeta` VALUES (21, 2, 'last_name', 'b'); 
INSERT INTO `wp_usermeta` VALUES (22, 2, 'description', ''); 
INSERT INTO `wp_usermeta` VALUES (23, 2, 'rich_editing', 'true'); 
INSERT INTO `wp_usermeta` VALUES (24, 2, 'syntax_highlighting', 'true'); 
INSERT INTO `wp_usermeta` VALUES (25, 2, 'comment_shortcuts', 'false'); 
INSERT INTO `wp_usermeta` VALUES (26, 2, 'admin_color', 'fresh'); 
INSERT INTO `wp_usermeta` VALUES (27, 2, 'use_ssl', '0'); 
INSERT INTO `wp_usermeta` VALUES (28, 2, 'show_admin_bar_front', 'true'); 
INSERT INTO `wp_usermeta` VALUES (29, 2, 'locale', ''); 
INSERT INTO `wp_usermeta` VALUES (30, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'); 
INSERT INTO `wp_usermeta` VALUES (31, 2, 'wp_user_level', '0'); 
INSERT INTO `wp_usermeta` VALUES (32, 2, 'dismissed_wp_pointers', ''); 
INSERT INTO `wp_usermeta` VALUES (34, 2, 'community-events-location', 'a:1:{s:2:"ip";s:10:"172.26.0.0";}'); 
INSERT INTO `wp_usermeta` VALUES (35, 2, 'wp_user-settings', 'unfold=1&ampampampmfold=o'); 
INSERT INTO `wp_usermeta` VALUES (36, 2, 'wp_user-settings-time', '1633871879'); 
INSERT INTO `wp_usermeta` VALUES (37, 1, 'session_tokens', 'a:1:{s:64:"3e028318e101e0391981f9f1555baf5dbd8037766dfc3ad59ef91e745afc368b";a:4:{s:10:"expiration";i:1634044691;s:2:"ip";s:10:"172.26.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:93.0) Gecko/20100101 Firefox/93.0";s:5:"login";i:1633871891;}}');
#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------

# --------------------------------------------------------
# Table: `wp_users`


#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ;

#
# Data contents of table `wp_users`
#
 
INSERT INTO `wp_users` VALUES (1, 'iiiuuu', '$P$Bb/TrIyhvhaOc07ykbryM5RmNjY2p9/', 'iiiuuu', 'iiiyyy@mail.com', 'https://mqueen.42.fr', '2021-10-10 13:13:34', '', 0, 'iiiuuu'); 
INSERT INTO `wp_users` VALUES (2, 'ashalet', '$P$BuC/dwFCYZbKMv2A4vuocXpLh1VpfO.', 'ashalet', 'ashalet@mail.com', '', '2021-10-10 13:16:20', '1633871780:$P$BmMbYltJTr4OApaOXkj5E6DDyYAZ2m.', 0, 'a b');
#
# End of data contents of table `wp_users`
# --------------------------------------------------------
