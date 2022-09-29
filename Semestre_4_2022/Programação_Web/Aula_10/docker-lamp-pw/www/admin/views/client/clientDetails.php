<h1> clientArray Detail</h1>
<table class="table table-striped">

    <tr>
        <th>client ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Telephone</th>
        <th>Address</th>
    </tr>

    <tr>
        <th>
            <?php echo $clientArray['idClient']?>
        </th>
        <th>
            <?=$clientArray['name']?>
        </th>
        <th>
            <?=$clientArray['email']?>
        </th>
        <th>
            <?=$clientArray['phone']?>
        </th>
        <th>
            <?=$clientArray['address']?>    
        </th>
</table>