# Override Rails handling of confirmation

$.rails.allowAction = (element) ->
  message = element.data('confirm')
  return true unless message
  $link = element.clone()
    .removeAttr('class')
    .removeAttr('data-confirm')
    .addClass('btn')
    .addClass('btn-raised')
    .addClass('btn-danger')
    .html("Eliminar")

  modal_html = """
                <div class="modal">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header alert-primary">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Eliminar</h4>
                      </div>
                      <div class="modal-body">
                        <p>Estas seguro de querer eliminar esta información?</p>
                      </div>
                      <div class="modal-footer bg-danger">
                        <a rel="nofollow" class="btn btn-raised btn-default" data-dismiss="modal">Cancelar</a>
                      </div>
                    </div>
                  </div>
                </div>
               """
  $modal_html = $(modal_html)
  $modal_html.find('.modal-footer').append($link)
  $modal_html.modal()
  return false
