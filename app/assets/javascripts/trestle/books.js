$(document).on("click", "div.ransack-pagination a", function (event) {
  const pageNum = $(this)
    .attr("href")
    .match(/page=([0-9]+)/)[1];
  $(".ransack-page").val(pageNum);
  $("form.ransack-form").submit();
  return event.preventDefault();
});
