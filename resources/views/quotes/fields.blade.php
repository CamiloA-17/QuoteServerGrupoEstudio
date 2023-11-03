<div class="form-group">
    <label for="exampleInputPassword1">Mensaje</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="message" value="{{ old('message') ??(isset($quote) ? $quote->message : '' )}}">
</div>
<div class="form-group">
    <label for="exampleInputPassword1">Autor</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="author" value="{{ old('author') ?? (isset($quote) ? $quote->author : '' )}}">
</div>
<div class="form-group">
    <label for="exampleInputPassword1">Año de publicacion</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="published_year" value="{{ old('published_year') ?? (isset($quote) ? $quote->published_year : '' )}}">
</div>