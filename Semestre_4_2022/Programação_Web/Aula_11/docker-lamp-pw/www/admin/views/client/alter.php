<h1>Alter Client</h1>
<form class="form" action="?controller=client&method=alterMethod" method="post">
    <div class="mb-3 mt-3">
        <label class="form-label">Name</label>
        <input name="name" class="form-control" type="text" value="<?=$clientArray['name']?>">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Email</label>
        <input name="email" class="form-control" type="email" value="<?=$clientArray['email']?>">
    </divb class="mb-3 mt-3">
        <label class="form-label">Cellphone</label>
        <input name="phone" class="form-control" type="text"value="<?=$clientArray['phone']?>">
    </div>
    <div class="mb-3 mt-3">
        <label class="form-label">Address</label>
        <input name="address" class="form-control" type="text"value="<?=$clientArray['address']?>">
    </div>
    
    <input class="btn btn-primary" type="submit" value="Enviar">
</form>