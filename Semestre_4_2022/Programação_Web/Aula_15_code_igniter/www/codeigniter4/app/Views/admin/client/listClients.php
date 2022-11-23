<h1> Client List</h1>
<table class="table table-striped">

    <tr>
        <th>Client ID</th>
        <th>Name</th>
        <th>Actions</th>
    </tr>
    
    <?php
        foreach($arrayClients as $client){
    ?>

    <tr>
        <th>
            <?php echo $client['idClient']?>
        </th>
        <th>
            <?=$client['name']?>
        </th>
        <th>
            <a href="<?=base_url("admin/updateClient/{$client['idClient']}")?>">Update</a>
        </th>
        <th>
            <a href="<?=base_url("admin/deleteClient/{$client['idClient']}")?>">Delete</a>
            // <a href='?controller=client&method=delete&id=<?php echo $client['idClient']?>'>Delete</a>
        </th>
    </tr>

    <?php
        } 
    ?>

</table>
