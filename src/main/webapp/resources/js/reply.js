/**
 * 댓글용 module 
 * jQuery의 $.ajax, $.getJSON 등을 이용해 비동기방식으로 data(json 포맷 등)를 주고 받는
 * 문법, 방법을 이해해야 한다. 
 */

console.log("Comment Module........");

var commentService = (function() {

	// 댓글 추가
	function add(content, callback, error) {
		console.log("add comment...............");

		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(content), // JavaScript 값이나 객체를 JSON 문자열로 변환
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) { // (Anything data(서버에서 받은 data), String textStatus, jqXHR jqXHR )
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, err) {
				if (error) {
					// error 발생 시 응답 메세지와 err code를 alert 시킨다. 
					error(xhr.responseText, xhr.status);
				}
			}
		});
	}
	
	// 댓글 목록
//	function getList(param, callback, error) {
//		console.log("getList comment..............");
//		
//		var content_id = param.content_id;
//		var page = param.page || 1; // param.page 가 null 이면 1로 설정 
//		
//		$.getJSON("/replies/pages/" + content_id + "/" + page + ".json", function(data) {
//			if (callback) {
//				callback(data);
//			}
//		}).fail(function(xhr, status, err) {
//			if (error) {
//				error(xhr.responseText, xhr.status);
//			}
//		});
		
		/*
		// getJSON을 ajax로 적용한것 1
		$.ajax({
			type : 'get',
			url : '/replies/pages/' + bno + '/' + page + '.json',
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, err) {
				if (error) {
					error(xhr.responseText, xhr.status);
				}
			}
		});
		*/
		
		/*
		// getJSON을 ajax로 적용한것 2
		// ajax, getJSON 등은 return jqXHR
		$.ajax({
			type : 'get',
			url : '/replies/pages/' + bno + '/' + page + '.json',
			contentType : "application/json; charset=utf-8",
		})
		.done(function(data, status, xhr) {
			if (callback) {
				callback(data);
			}
		})
		.fail(function(xhr, status, err) {
			if (error) {
				error(xhr.responseText, xhr.status);
			}
		});
		*/
//	}
	
	// 댓글 목록 (댓글 숫자와 목록을 가져오는 경우)
	function getList(param, callback, error) {

	    var content_id = param.content_id;
	    var page = param.page || 1;
	    
	    $.getJSON("/replies/pages/" + content_id + "/" + page + ".json",
	    	function(data) {
	    		if (callback) {
	    			//callback(data); // 댓글 목록만 가져오는 경우 
	    			callback(data.replyCnt, data.list); //댓글 숫자와 목록을 가져오는 경우 
	    		}
	    	}).fail(function(xhr, status, err) {
	    		if (error) {
	    			error();
	    		}
	    	});
	}

	// 댓글 삭제
	/*
	function remove(rno, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	*/
	
	// 댓글 삭제. security 적용 후
	function remove(comment_id, userid, callback, error) {
		  
		console.log("--------------------------------------");  
		console.log(JSON.stringify({comment_id:comment_id, userid:userid}));  
		    
		$.ajax({
			type : 'delete',
			url : '/replies/' + comment_id,
			data:  JSON.stringify({comment_id:comment_id, userid:userid}),
			contentType: "application/json; charset=utf-8",
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}

	// 댓글 수정
	function update(content, callback, error) {

		console.log("comment_id: " + content.comment_id);

		$.ajax({
			type : 'put',
			url : '/replies/' + content.comment_id,
			data : JSON.stringify(content), // JavaScript 값이나 객체를 JSON 문자열로 변환
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, err) {
				if (error) {
					error(err);
				}
			}
		});
	}
	
	// 댓글 조회
	function get(comment_id, callback, error) {

		$.get("/replies/" + comment_id + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	// 날짜 포맷 변환
	function displayTime(timeValue) {

		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {

			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();

			return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi,
					':', (ss > 9 ? '' : '0') + ss ].join('');

		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1; // getMonth() is zero-based
			var dd = dateObj.getDate();

			return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/',
					(dd > 9 ? '' : '0') + dd ].join('');
		}
	}

	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get, 
		displayTime : displayTime
	};
	
	//return {name:"aaaa"}
})();