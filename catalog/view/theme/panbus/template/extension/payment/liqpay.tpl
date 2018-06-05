<form action="<?php echo $action; ?>" method="post" id="checkout">
  <input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
	<input type="hidden" name="continue" value="<?php echo $continue; ?>">
  <div class="buttons">
    <div class="pull-right">
      <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />
    </div>
  </div>
</form>
<script type="text/javascript">
	$('#button-confirm').on('click', function() {
		$.ajax({
			type: 'post',
			url: 'index.php?route=checkout/confirm',
			data: $('#guest-data input[type=\'text\'], #passengers-data input[type=\'text\']'),
			beforeSend: function() {
				$('#button-confirm').button('loading');
				$('.spinner').show();
			},
			success: function(json) {
				$('.alert, .text-danger').remove();
				$('#button-confirm').button('reset');
				if(json['redirect']){
					$.ajax({
						type: 'get',
						url: 'index.php?route=extension/payment/liqpay/confirm',
						cache: false,
						beforeSend: function() {
							$('#button-confirm').button('loading');
						},
						complete: function() {
							$('#button-confirm').button('reset');
						},
						success: function(data) {
							if (data) {
								$("input[name = 'operation_xml']").val(data['xml']);
								$("input[name = 'signature']").val(data['signature']);
								document.forms['checkout'].submit();
							} else {
								location = $("input[name = 'continue']").val();
							}

						}
					});
				}
				if(json['error']){
					$('.spinner').hide();
					for (i in json['error']) {
						var element = $('#input-payment-' + i.replace('_', '-'));

						if ($(element).parent().hasClass('input-group')) {
							$(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
						} else {
							$(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
						}
					}
					$('#content')[0].scrollIntoView(top);
					// Highlight any found errors
					$('.text-danger').parent().addClass('has-error');

					if(json['error']['passengers']){
						var passErrors = $.map(json['error']['passengers'], function(value, index) {
							return [value];
						});
						var fieldFirstName = $("input[name = 'passenger_firstname[]']").toArray();
						var fieldLastName = $("input[name = 'passenger_lastname[]']").toArray();
						var fieldPhone = $("input[name = 'passenger_telephone[]']").toArray();
						$.each(passErrors,function (key, value) {
							if(value['first_name']['error']){
								$(fieldFirstName[key]).after('<div class="text-danger">' + value['first_name']['error'] + '</div>');
							}
							if(value['last_name']['error']){
								$(fieldLastName[key]).after('<div class="text-danger">' + value['last_name']['error'] + '</div>');
							}
							if(value['phone']['error']){
								$(fieldPhone[key]).after('<div class="text-danger">' + value['phone']['error'] + '</div>');
							}
						})
					}
				}
			},
			error: function (jqXHR, exception) {
				$('.spinner').hide();
				$('#button-confirm').button('reset');
				console.log(exception);
			}
		});
	});
</script>
