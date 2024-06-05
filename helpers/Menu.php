<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => '<i class="material-icons ">home</i>'
		),
		
		array(
			'path' => 'task_daily', 
			'label' => 'Task Daily', 
			'icon' => '<i class="material-icons ">work</i>'
		),
		
		array(
			'path' => 'list_email', 
			'label' => 'List Email', 
			'icon' => '<i class="material-icons ">contact_mail</i>'
		),
		
		array(
			'path' => 'ip_user', 
			'label' => 'Ip User', 
			'icon' => '<i class="material-icons mi-sm">group_work</i>'
		),
		
		array(
			'path' => 'fotocopy', 
			'label' => 'Fotocopy', 
			'icon' => '<i class="material-icons ">print</i>'
		),
		
		array(
			'path' => 'user_login', 
			'label' => 'User Login', 
			'icon' => '<i class="material-icons ">person_pin_circle</i>'
		),
		
		array(
			'path' => 'role_permissions', 
			'label' => 'Role Permissions', 
			'icon' => ''
		),
		
		array(
			'path' => 'roles', 
			'label' => 'Roles', 
			'icon' => ''
		)
	);
		
	
	
			public static $username = array(
		array(
			"value" => "Administrator", 
			"label" => "Administrator", 
		),
		array(
			"value" => "User", 
			"label" => "User", 
		),);
		
			public static $account_status = array(
		array(
			"value" => "Active", 
			"label" => "Active", 
		),
		array(
			"value" => "Pending", 
			"label" => "Pending", 
		),
		array(
			"value" => "Blocked", 
			"label" => "Blocked", 
		),);
		
}