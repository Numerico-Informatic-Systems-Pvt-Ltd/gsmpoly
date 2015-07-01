<style>
div.transbox
  {
  width:400px;
  height:400px;
  margin:30px 50px;
  background-color:#000;
  border:1px solid black;
  opacity:0.6;
  filter:alpha(opacity=60); /* For IE8 and earlier */
  display:inline-block;
  }
div.transbox p
  {
  margin:30px 40px;
  font-weight:bold;
  color:#000000;
  }
</style>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
  <script type="text/javascript" src="/js/tinymce_4.0.11/tinymce/js/tinymce/tinymce.min.js"></script>
  
  <script type="text/javascript">
  
  tinyMCE.init({
    mode : "exact", 
    elements : "ContentContent"
  });
  
  $(document).ready(function() {
  
  	$(function() {
  		// Here we have the auto_save() function run every 30 secs
  		// We also pass the argument 'editor_id' which is the ID for the textarea tag

  		setInterval("auto_save('ContentContent')",300);
  	});
  	
  	// When the YES link is clicked, it will run the auto_load() function
    // The argument it's using is the ID of the editor - make sure it matches yours
    $("#load_yes").click(function(){
    	auto_load('editor_id');
    })
  	
  });
  
  // Here is the auto_save() function that will be called every 30 secs
  function auto_save(editor_id) {
  	// First we check if any changes have been made to the editor window
  	
	if(tinyMCE.activeEditor.isDirty()) {
		//alert(tinyMCE.activeEditor.isDirty());
  		// If so, then we start the auto-save process
  		// First we get the content in the editor window and make it URL friendly
		
  		var content = tinyMCE.get(editor_id);
  		var notDirty = tinyMCE.get(editor_id);
  		content = escape(content.getContent());
  		content = content.replace("+", "%2B");
  		content = content.replace("/", "%2F");
  		// We then start our jQuery AJAX function
		//alert(editor_id);
  		$.ajax({
  			url: "/contents/edit/<?=$this->request->data['Content']['id'];?>", // the path/name that will process our request
  			type: "POST", 
  			data: "content=" + content, 
  			success: function(msg) {
  		//		alert(msg);				// Uncomment for DUBUGGING
		// Here we reset the editor's changed (dirty) status
		// This prevents the editor from performing another auto-save
		// until more changes are made
  			notDirty.isNotDirty = true;
  			}
  		});
  	// If nothing has changed, don't do anything
  	} else {
  		return false;
  	}
  }
  
  function auto_load(editor_id) {
  	// First we assign our editor window to a variable

  	var ed = tinyMCE.get(editor_id);
  	
  	// Then we start our AJAX jQuery function
  	$.ajax({
  		url: "load.php", // the path/name that will recover our content
  		beforeSend: function() {
  			ed.setProgressState(1);
  		},
  		success: function(msg) {
  			ed.setContent(msg);
  			ed.setProgressState(0);
  		}
  	});
  }
  
  $("#hide").click(function()
  {
  	$(".ContentEdit").hide();
  });
  </script>

<div class="contents index ContentEdit transbox">
<div id="success">
<?php 
	
	echo $this->Form->create('Content',array('default'=>false)); ?>
    <table cellpadding="0" cellspacing="0" >
        	<tr>
	            <th><?php 
						  echo $this->Form->input('id');
						  echo __('Edit Content'); 
					?>
					<a style="float:right;" id="hide" href="#">[X]</a>
                </th>
            </tr>
    		<tr>
            	<td><?php echo $this->Form->input('slug',array('label'=>'Page','readonly'=>'readonly')); ?></td>
            </tr>
    		<tr>
            	<td><?php echo $this->Form->input('content'); ?></td>
            </tr>        
	</table>

<?php /* echo $this->Js->submit('Submit',array('update'=>'#success',
											'url'=>array(
													'controller' => 'contents','action' => 'edit')
				)); */ ?>
                
<?php echo $this->Form->end(); ?>
</div>
</div>