<?php
$comp_model = new SharedController;
$page_element_id = "add-page-" . random_str();
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$show_header = $this->show_header;
$view_title = $this->view_title;
$redirect_to = $this->redirect_to;
?>
<section class="page" id="<?php echo $page_element_id; ?>" data-page-type="add"  data-display-type="" data-page-url="<?php print_link($current_page); ?>">
    <?php
    if( $show_header == true ){
    ?>
    <div  class="bg-light p-3 mb-3">
        <div class="container">
            <div class="row ">
                <div class="col ">
                    <h4 class="record-title">Add New User Login</h4>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
    ?>
    <div  class="">
        <div class="container">
            <div class="row ">
                <div class="col-md-7 comp-grid">
                    <?php $this :: display_page_errors(); ?>
                    <div  class="bg-light p-3 animated fadeIn page-content">
                        <form id="user_login-add-form" role="form" novalidate enctype="multipart/form-data" class="form page-form form-horizontal needs-validation" action="<?php print_link("user_login/add?csrf_token=$csrf_token") ?>" method="post">
                            <div>
                                <div class="form-group ">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <label class="control-label" for="username">Username <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-sm-8">
                                            <div class="">
                                                <input id="ctrl-username"  value="<?php  echo $this->set_field_value('username',""); ?>" type="text" placeholder="Enter Username" list="username_list"  required="" name="username"  data-url="api/json/user_login_username_value_exist/" data-loading-msg="Checking availability ..." data-available-msg="Available" data-unavailable-msg="Not available" class="form-control  ctrl-check-duplicate" />
                                                    <datalist id="username_list">
                                                        <?php
                                                        $username_options = Menu :: $username;
                                                        if(!empty($username_options)){
                                                        foreach($username_options as $option){
                                                        $value = $option['value'];
                                                        $label = $option['label'];
                                                        $selected = $this->set_field_selected('username', $value, "");
                                                        ?>
                                                        <option><?php  echo $this->set_field_value('username',""); ?></option>
                                                        <?php
                                                        }
                                                        }
                                                        ?>
                                                    </datalist>
                                                    <div class="check-status"></div> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label class="control-label" for="Password">Password <span class="text-danger">*</span></label>
                                            </div>
                                            <div class="col-sm-8">
                                                <div class="input-group">
                                                    <input id="ctrl-Password"  value="<?php  echo $this->set_field_value('Password',""); ?>" type="password" placeholder="Enter Password" maxlength="255" list="Password_list"  required="" name="Password"  class="form-control  password password-strength" />
                                                        <div class="input-group-append cursor-pointer btn-toggle-password">
                                                            <span class="input-group-text"><i class="material-icons">visibility</i></span>
                                                        </div>
                                                        <datalist id="Password_list">
                                                            <?php
                                                            $Password_options = Menu :: $username;
                                                            if(!empty($Password_options)){
                                                            foreach($Password_options as $option){
                                                            $value = $option['value'];
                                                            $label = $option['label'];
                                                            $selected = $this->set_field_selected('Password', $value, "");
                                                            ?>
                                                            <option><?php  echo $this->set_field_value('Password',""); ?></option>
                                                            <?php
                                                            }
                                                            }
                                                            ?>
                                                        </datalist>
                                                    </div>
                                                    <div class="password-strength-msg">
                                                        <small class="font-weight-bold">Should contain</small>
                                                        <small class="length chip">6 Characters minimum</small>
                                                        <small class="caps chip">Capital Letter</small>
                                                        <small class="number chip">Number</small>
                                                        <small class="special chip">Symbol</small>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label class="control-label" for="confirm_password">Confirm Password <span class="text-danger">*</span></label>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div class="input-group">
                                                        <input id="ctrl-Password-confirm" data-match="#ctrl-Password"  class="form-control password-confirm " type="password" name="confirm_password" required placeholder="Confirm Password" />
                                                        <div class="input-group-append cursor-pointer btn-toggle-password">
                                                            <span class="input-group-text"><i class="material-icons">visibility</i></span>
                                                        </div>
                                                        <div class="invalid-feedback">
                                                            Password does not match
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group ">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <label class="control-label" for="email">Email <span class="text-danger">*</span></label>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div class="">
                                                        <input id="ctrl-email"  value="<?php  echo $this->set_field_value('email',""); ?>" type="email" placeholder="Enter Email" list="email_list"  required="" name="email"  data-url="api/json/user_login_email_value_exist/" data-loading-msg="Checking availability ..." data-available-msg="Available" data-unavailable-msg="Not available" class="form-control  ctrl-check-duplicate" />
                                                            <datalist id="email_list">
                                                                <?php
                                                                $email_options = Menu :: $username;
                                                                if(!empty($email_options)){
                                                                foreach($email_options as $option){
                                                                $value = $option['value'];
                                                                $label = $option['label'];
                                                                $selected = $this->set_field_selected('email', $value, "");
                                                                ?>
                                                                <option><?php  echo $this->set_field_value('email',""); ?></option>
                                                                <?php
                                                                }
                                                                }
                                                                ?>
                                                            </datalist>
                                                            <div class="check-status"></div> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <label class="control-label" for="photo">Photo <span class="text-danger">*</span></label>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <div class="">
                                                            <div class="dropzone required" input="#ctrl-photo" fieldname="photo"    data-multiple="false" dropmsg="Choose files or drag and drop files to upload"    btntext="Browse" extensions=".jpg,.png,.gif,.jpeg" filesize="3" maximum="1">
                                                                <input name="photo" id="ctrl-photo" required="" class="dropzone-input form-control" value="<?php  echo $this->set_field_value('photo',""); ?>" type="text"  />
                                                                    <!--<div class="invalid-feedback animated bounceIn text-center">Please a choose file</div>-->
                                                                    <div class="dz-file-limit animated bounceIn text-center text-danger"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <label class="control-label" for="id_user">Id User <span class="text-danger">*</span></label>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <div class="">
                                                                <input id="ctrl-id_user"  value="<?php  echo $this->set_field_value('id_user',""); ?>" type="text" placeholder="Enter Id User" list="id_user_list"  required="" name="id_user"  class="form-control " />
                                                                    <datalist id="id_user_list">
                                                                        <?php
                                                                        $id_user_options = Menu :: $username;
                                                                        if(!empty($id_user_options)){
                                                                        foreach($id_user_options as $option){
                                                                        $value = $option['value'];
                                                                        $label = $option['label'];
                                                                        $selected = $this->set_field_selected('id_user', $value, "");
                                                                        ?>
                                                                        <option><?php  echo $this->set_field_value('id_user',""); ?></option>
                                                                        <?php
                                                                        }
                                                                        }
                                                                        ?>
                                                                    </datalist>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <label class="control-label" for="user_role_id">User Role Id <span class="text-danger">*</span></label>
                                                            </div>
                                                            <div class="col-sm-8">
                                                                <div class="">
                                                                    <select required=""  id="ctrl-user_role_id" name="user_role_id"  placeholder="Select a value ..."    class="custom-select" >
                                                                        <option value="">Select a value ...</option>
                                                                        <?php 
                                                                        $user_role_id_options = $comp_model -> user_login_user_role_id_option_list();
                                                                        if(!empty($user_role_id_options)){
                                                                        foreach($user_role_id_options as $option){
                                                                        $value = (!empty($option['value']) ? $option['value'] : null);
                                                                        $label = (!empty($option['label']) ? $option['label'] : $value);
                                                                        $selected = $this->set_field_selected('user_role_id',$value, "");
                                                                        ?>
                                                                        <option <?php echo $selected; ?> value="<?php echo $value; ?>">
                                                                            <?php echo $label; ?>
                                                                        </option>
                                                                        <?php
                                                                        }
                                                                        }
                                                                        ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <label class="control-label" for="account_status">Account Status <span class="text-danger">*</span></label>
                                                            </div>
                                                            <div class="col-sm-8">
                                                                <div class="">
                                                                    <select required=""  id="ctrl-account_status" name="account_status"  placeholder="Select a value ..."    class="custom-select" >
                                                                        <option value="">Select a value ...</option>
                                                                        <?php
                                                                        $account_status_options = Menu :: $account_status;
                                                                        if(!empty($account_status_options)){
                                                                        foreach($account_status_options as $option){
                                                                        $value = $option['value'];
                                                                        $label = $option['label'];
                                                                        $selected = $this->set_field_selected('account_status', $value, "Active");
                                                                        ?>
                                                                        <option <?php echo $selected ?> value="<?php echo $value ?>">
                                                                            <?php echo $label ?>
                                                                        </option>                                   
                                                                        <?php
                                                                        }
                                                                        }
                                                                        ?>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group form-submit-btn-holder text-center mt-3">
                                                    <div class="form-ajax-status"></div>
                                                    <button class="btn btn-primary" type="submit">
                                                        Submit
                                                        <i class="material-icons">send</i>
                                                    </button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>