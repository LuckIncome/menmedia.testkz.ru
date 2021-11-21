<!-- Modal start -->
<div class="modal fade" id="appModal" tabindex="-1" aria-labelledby="appModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <h5 class="modal-title" id="exampleModalLabel">Оставьте заявку на проведение мероприятия</h5>

            </div>
            <div class="modal-body">
                <form>
                    <div class="modal-text">
                        <div class="mb-3">
                            <label for="event-type" class="col-form-label">Тип мероприятия</label>
                            <select class="form-select form-select-sm" aria-label=".form-select-sm example">
                                <option selected>Выберите мероприятие</option>
                                <option value="1">Мероприятие1</option>
                                <option value="2">Мероприятие2</option>
                                <option value="3">Другое</option>
                            </select>
                            <label for="description" class="col-form-label">Описание</label>
                            <input type="text" class="form-control" id="description" placeholder="Коротко о мероприятии">
                            <div class="contact-data">
                                <label  class="col-form-label">Контактные данные</label>
                                <input type="text" class="form-control"  placeholder="Ваше Имя*">
                                <input type="text" class="form-control"  placeholder="Номер телефона*">
                                <input type="text" class="form-control"  placeholder="E-mail*">
                            </div>
                        </div>
                        <div class="mb-2">
                            <label  class="col-form-label">Дата и время</label>
                            <div class="form-date">
                                <input type="date"  placeholder="01.01.2000">
                                <input type="time" placeholder="14:00">
                            </div>
                            <div class="contact-format">
                                <label  class="col-form-label">Форма проведения </label>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Online
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Offline
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Отправить заявку</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->
