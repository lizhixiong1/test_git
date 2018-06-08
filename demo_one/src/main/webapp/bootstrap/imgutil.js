//fileId ： 文件域的ID
//showImgId ： img 标签的ID
//showDivId ： img所在的DIV的ID（IE下面才用得到）
function previewImg(fileId, showImgId, showDivId) {
	var docObj = document.getElementById(fileId);
	var imgObjPreview = document.getElementById(showImgId);
	if (docObj.files && docObj.files[0]) {
		imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
	} 
	else {
		// IE下，使用滤镜
		docObj.select();
		var imgSrc = document.selection.createRange().text;
		var localImagId = document.getElementById(showDivId); // 必须设置初始大小
		try {
			localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			localImagId.filters
					.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
		} catch (e) {
			alert("您上传的图片格式不正确，请重新选择!");
			return false;
		}
		imgObjPreview.style.display = 'none';
		document.selection.empty();
	}
	return true;
}