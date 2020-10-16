
	function incruit(pageNo, code){
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
	
	function statistics(type, code, year){
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
	
	function corona(pageNo){
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
	
		function news(pageNo, country){
			$.ajax({
				method : 'GET',
				url : 'news_abroad',
				dataType : 'json',
				success : function(data){
					console.log(data.response.body.items);
				},
				error : function(e){
					console.log(e);
				}
			})
		}
	
		function nations(){
			$.ajax({
				method : 'GET',
				url : 'about_nation',
				dataType : 'json',
				success : function(data){
					var output = '';
					var items = data.response.body.items.item;
					console.log(items);
					$(items).each(function(){
						output += '<a href="#">';
						output += '<div class="nation">';
						output += '<img src="'+this.imgUrl+'" title="'+this.countryName+'"></div></a>';
					})
					$('.body').append(output);
				},
				error : function(e){
					console.log(e);
				}
			})
		}
	
		function contacts(pageNo, country){
			$.ajax({
				method : 'GET',
				url : 'contact_abroad',
				dataType : 'json',
				success : function(data){
					console.log(data.response.body.items);
				},
				error : function(e){
					console.log(e);
				}
			})
		}
		
		function airport(){
			$.ajax({
				method : 'GET',
				url : 'status_airport',
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