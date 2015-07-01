<?php
App::uses('AppModel', 'Model');
/**
 * Picture Model
 *
 * @property Album $Album
 */
class Picture extends AppModel {
	
		public $actsAs = array('Sluggable' => array(
													    	'label'=>'name',
														    'slug'=>'slug',
														    'separator'=>'-',
														    'overwrite'=>false  
							));

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'album_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Invalid Album ID',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Please enter your caption here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'picture' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Please upload a picture',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Album' => array(
			'className' => 'Album',
			'foreignKey' => 'album_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
