<h1> Client Registration </h1>
<form action="?controller=client&method=registerView" method="post">
    <div class='mb-3 mt-3'>
        <label class='form-label' for="">Name</label>
        <input class='form-control' type="text" name="name">
    </div>
    <div class='mb-3 mt-3'>
        <label class='form-label' for="">Email</label>
        <input class='form-control' type="email" name="email">
    </div>
    <div class='mb-3 mt-3'>
        <h4>Gender</h4>
        <input type="radio" name="fav_language" value="HTML">
        <label class="form-label">Female</label><br>
        <input type="radio" name="fav_language" value="CSS">
        <label class="form-label">Male</label>
    </div>
    
    <button class='btn btn-primary' type='submit'>Send</button>
</form>