$(function(){
	$.get('dashboard/xhrGetListings', function(o){
		console.log(o[0].text);
		for(var i = 0; i < o.length; i++){
			//alert(1);
			$('#listInsert').append('<div>' + o[i].text + '<a class="del" rel="'+ o[i].id+'" href="#">X</a></div>');
		}

		$('.del').live('click', function() {
			delItem = $(this);
			var id = $(this).attr('rel');

			$.post('dashboard/xhrDeleteListing', {'id': id}, function(o){
				//$('#listInsert').append('<div>'+ o.text +'<a class="del" rel="'+o.id+'" href="#">X</a></div>');	
				delItem.parent().remove();  
			}, 'json');
		
			return false;
		});
	}, 'json');


	$('#randomInsert').submit(function(){
		
		var url = $(this).attr('action');
		var data = $(this).serialize();
		
		$.post(url, data, function(o){
			  
			console.log(o);
			$('#listInsert').append('<div>'+ o.text +'<a class="del" rel="'+ o.id +'" href="#">X</a></div>');		
			//alert(1);

		}, 'json' );		

		return false;
		
		
	});

});
