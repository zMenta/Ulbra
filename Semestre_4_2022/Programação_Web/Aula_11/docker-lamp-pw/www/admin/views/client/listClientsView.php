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
            <a href='?controller=client&method=clientDetails&id=<?php echo $client['idClient']?>'>Details</a>
        </th>
        <th>
            <a href='?controller=client&method=update&id=<?php echo $client['idClient']?>'>Alter</a>
        </th>
        <th>
            <a href='?controller=client&method=delete&id=<?php echo $client['idClient']?>'>Delete</a>
        </th>
    </tr>

    <?php
        } 
    ?>

</table>