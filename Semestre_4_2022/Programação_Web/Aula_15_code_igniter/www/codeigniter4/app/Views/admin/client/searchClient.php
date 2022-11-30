<h1>Searching Clients</h1>
<form class="form" action="<?=base_url('admin/searchClientAction')?>" method="post">
    <div class="mb-3 mt-3">
        <label class="form-label">Search Field</label>
        <input name="search" class="form-control" type="text">
    </div>

    <input class="btn btn-primary" type="submit" value="Search">
</form>
