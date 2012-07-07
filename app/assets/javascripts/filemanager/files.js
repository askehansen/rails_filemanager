$(document).ready(function()
{
  $.ajaxSetup(
  {
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    headers: {
      "X-CSRF-Token": $("meta[name='csrf-token']").attr("content")
    },
    type: "POST"
  });

  $('#file_upload').uploadify(
  {
    swf: "/assets/filemanager/uploadify.swf",
    uploader: $("#file_upload").data("location"),
    buttonText: "Upload billeder",
    auto: true,
    multi: true,
    formData: SessionParams,
    onUploadSuccess: function(file, data, response)
    {
      $("#files").prepend(data);
    }
  });

  $("#files").on("click", "a.delete", function(e)
  {
    e.preventDefault();
    $this = $(this);

    var deleteImg = confirm("Slet " + $this.data("name") + "?");
    if (deleteImg)
    {
      var parent = $this.parent(".file");
      parent.fadeTo(0, .5);

      $.ajax(
      {
        url: $this.attr("href"),
        type: "delete",
        success: function(data)
        {
          parent.remove();
        }
      });
    }
  });

  $("#files").on("click", "a.select", function(e)
  {
      CKEditorFuncNum = getUrlParam("CKEditorFuncNum");
      if (CKEditorFuncNum > 0)
      {
        e.preventDefault();
        window.opener.CKEDITOR.tools.callFunction(CKEditorFuncNum, $(this).attr("href"));
        window.close();
      }

  });

  function getUrlParam(paramName)
  {
    var reParam = new RegExp('(?:[\?&]|&amp;)' + paramName + '=([^&]+)', 'i');
    var match = window.location.search.match(reParam);
    return (match && match.length > 1) ? match[1] : '';
  }
});