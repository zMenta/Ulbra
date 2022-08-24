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
        <label><input type="radio" name="gender" value="female" checked> Female</label>
        <br>
        <label><input type="radio" name="gender" value="male" checked> Male</label>
    </div>
    
    <button class='btn btn-primary' type='submit'>Send</button>
</form>