
	function incruit(){
		$.ajax({
			method : 'GET',
			url : 'incruit_status',
			data : {pageNo : pageno},
			dataType : 'XML',
			success : function(data){
				console.log($(data).find('ITEM'));
// 				var item = '';
// 				$(data).find('ITEM').each(function(){
// 					item += '<a href="'+$('linkUrl',this).text()+'">'
// 					item += '<div>';
// 					item += '채용공고<br>'+$('rctntcSj',this).text()+'<br>';
// 					item += '신청자격<br><div style="overflow:hidden; white-space: nowrap; text-overflow:ellipsis;">'+$('rctntcSprtQualfCn',this).text()+'</div>';
// 					item += '국가 : '+$('dsptcNationScd',this).text()+'<br>';
// 					item += '분야 : '+$('dsptcKsco',this).text()+'<br>';
// 					item += '경력 : '+$('joDemandCareerStleScd',this).text()+'<br>';
// 					item += '학력 : '+$('joDemandAcdmcrScd',this).text();
// 					item += '마감일 : '+$('rctntcEndDay',this).text();
// 					item += '</div>';
// 					item += '</a>'
// 				})
			},
			error : function(e){
				console.log(e);
			}
		})
	}
	
	function statistics(){
		$.ajax({
			method : 'GET',
			url : 'statistics',
			dataType : 'XML',
			success : function(data){
				console.log($(data).find('ITEM'));
			},
			error : function(e){
				console.log(e);
			}
		})
	}
	
	function corona(){
		$.ajax({
			method : 'GET',
			url : 'corona_abroad',
			dataType : 'json',
			success : function(data){
				console.log(data.response.body.items);
			},
			error : function(e){
				console.log(e);
			}
		})
	}
	
	function page(){
		$('.body > div').on('scroll', function(e){
	        var scrollTop = e.target.scrollTop;
	        var clientHeight = e.target.clientHeight;
	        var scrollHeight = e.target.scrollHeight;
	        
	        if (scrollTop + clientHeight >= scrollHeight) {
	        	pageno += 1;
// 	        	incruit();
	        }
		});
	}