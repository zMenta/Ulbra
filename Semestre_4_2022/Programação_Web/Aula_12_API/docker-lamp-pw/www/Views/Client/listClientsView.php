<h1> Client List</h1>
<table class="table table-striped">

    <tr>
        <th>Client ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Telephone</th>
        <th>Address</th>
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
            <?=$client['email']?>
        </th>
        <th>
            <?=$client['phone']?>
        </th>
        <th>
            <?=$client['address']?>    
        </th>
    </tr>

    <?php
        } 
    ?>

</table>