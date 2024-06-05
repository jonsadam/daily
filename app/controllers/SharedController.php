<?php 

/**
 * SharedController Controller
 * @category  Controller / Model
 */
class SharedController extends BaseController{
	
	/**
     * user_login_user_role_id_option_list Model Action
     * @return array
     */
	function user_login_user_role_id_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT role_id AS value, role_name AS label FROM roles";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

	/**
     * user_login_username_value_exist Model Action
     * @return array
     */
	function user_login_username_value_exist($val){
		$db = $this->GetModel();
		$db->where("username", $val);
		$exist = $db->has("user_login");
		return $exist;
	}

	/**
     * user_login_email_value_exist Model Action
     * @return array
     */
	function user_login_email_value_exist($val){
		$db = $this->GetModel();
		$db->where("email", $val);
		$exist = $db->has("user_login");
		return $exist;
	}

	/**
     * task_daily_PIC_option_list Model Action
     * @return array
     */
	function task_daily_PIC_option_list(){
		$db = $this->GetModel();
		$sqltext = "SELECT  DISTINCT username AS value,username AS label FROM user_login ORDER BY username ASC";
		$queryparams = null;
		$arr = $db->rawQuery($sqltext, $queryparams);
		return $arr;
	}

}
