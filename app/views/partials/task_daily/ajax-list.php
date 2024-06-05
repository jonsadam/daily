<?php
$current_page = $this->set_current_page_link();
$csrf_token = Csrf::$token;
$field_name = $this->route->field_name;
$field_value = $this->route->field_value;
$view_data = $this->view_data;
$records = $view_data->records;
$record_count = $view_data->record_count;
$total_records = $view_data->total_records;
if (!empty($records)) {
?>
<!--record-->
<?php
$counter = 0;
foreach($records as $data){
$rec_id = (!empty($data['id']) ? urlencode($data['id']) : null);
$counter++;
?>
<tr>
    <th class=" td-checkbox">
        <label class="custom-control custom-checkbox custom-control-inline">
            <input class="optioncheck custom-control-input" name="optioncheck[]" value="<?php echo $data['id'] ?>" type="checkbox" />
                <span class="custom-control-label"></span>
            </label>
        </th>
        <th class="td-sno"><?php echo $counter; ?></th>
        <td class="td-id"><a href="<?php print_link("task_daily/view/$data[id]") ?>"><?php echo $data['id']; ?></a></td>
        <td class="td-Tanggal">
            <span  data-flatpickr="{ enableTime: false, minDate: '<?php echo format_date('Y-m-d H:i:s'); ?>', maxDate: '<?php echo datetime_now(); ?>'}" 
                data-value="<?php echo $data['Tanggal']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="Tanggal" 
                data-title="Enter Tanggal" 
                data-placement="left" 
                data-toggle="click" 
                data-type="flatdatetimepicker" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['Tanggal']; ?> 
            </span>
        </td>
        <td class="td-Dept">
            <span  data-value="<?php echo $data['Dept']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="Dept" 
                data-title="Enter Dept" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['Dept']; ?> 
            </span>
        </td>
        <td class="td-User">
            <span  data-value="<?php echo $data['User']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="User" 
                data-title="Enter User" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['User']; ?> 
            </span>
        </td>
        <td class="td-Trouble">
            <span  data-value="<?php echo $data['Trouble']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="Trouble" 
                data-title="Enter Trouble" 
                data-placement="left" 
                data-toggle="click" 
                data-type="text" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['Trouble']; ?> 
            </span>
        </td>
        <td class="td-Status">
            <span  data-source='<?php echo json_encode_quote(Menu :: $Status); ?>' 
                data-value="<?php echo $data['Status']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="Status" 
                data-title="Enter Done" 
                data-placement="left" 
                data-toggle="click" 
                data-type="checklist" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['Status']; ?> 
            </span>
        </td>
        <td class="td-Gambar"><?php Html :: page_img($data['Gambar'],50,50,1); ?></td>
        <td class="td-PIC">
            <span  data-source='<?php print_link('api/json/task_daily_PIC_option_list'); ?>' 
                data-value="<?php echo $data['PIC']; ?>" 
                data-pk="<?php echo $data['id'] ?>" 
                data-url="<?php print_link("task_daily/editfield/" . urlencode($data['id'])); ?>" 
                data-name="PIC" 
                data-title="Select a value ..." 
                data-placement="left" 
                data-toggle="click" 
                data-type="select" 
                data-mode="popover" 
                data-showbuttons="left" 
                class="is-editable" >
                <?php echo $data['PIC']; ?> 
            </span>
        </td>
        <th class="td-btn">
            <a class="btn btn-sm btn-success has-tooltip page-modal" title="View Record" href="<?php print_link("task_daily/view/$rec_id"); ?>">
                <i class="material-icons">visibility</i> View
            </a>
            <a class="btn btn-sm btn-info has-tooltip page-modal" title="Edit This Record" href="<?php print_link("task_daily/edit/$rec_id"); ?>">
                <i class="material-icons">edit</i> Edit
            </a>
            <a class="btn btn-sm btn-danger has-tooltip record-delete-btn" title="Delete this record" href="<?php print_link("task_daily/delete/$rec_id/?csrf_token=$csrf_token&redirect=$current_page"); ?>" data-prompt-msg="Are you sure you want to delete this record?" data-display-style="modal">
                <i class="material-icons">clear</i>
                Delete
            </a>
        </th>
    </tr>
    <?php 
    }
    ?>
    <?php
    } else {
    ?>
    <td class="no-record-found col-12" colspan="100">
        <h4 class="text-muted text-center ">
            No Record Found
        </h4>
    </td>
    <?php
    }
    ?>
    