<?php include("topbit.php");


    $find_sql = "SELECT country.Country AS Opponent, location.Location AS `Match location`, allblack_matches.Date, 
    allblack_matches.Result, allblack_matches.OppDebutants, allblack_matches.Debutants, allblack_matches.OppTries,     allblack_matches.AbTries, allblack_matches.LastLoss, allblack_matches.OppRating, allblack_matches.AbRating
    FROM `allblack_matches` 
    INNER JOIN `country` ON OppositionID = country.CountryID
    INNER JOIN `location` ON allblack_matches.LocationID= location.LocationID
    
    ";

    $find_query = mysqli_query($dbconnect, $find_sql);
    $find_rs = mysqli_fetch_assoc($find_query);
    $count = mysqli_num_rows($find_query);
    

?>

<div class="box main">

    <h2>All Results</h2>

    <?php 
            
            if($count < 1) {
                
                ?>

    <div class="error">

        Sorry! There are no results that match your search. Please use the search box in the side bar to try again.

    </div>
    <!---end error --->

    <?php
            } // end no results if
            
            else {
                do
                {
                    
                    ?>

    <!-- Results go here -->
    <div class="results">
        <span class="sub_heading">
            Date: <?php echo  $find_rs['Date']; ?>
            <br />
        </span>

        <b>Opponent:</b> <?php echo  $find_rs['Opponent']; ?>
        <br />
        <b>Result:</b> <?php echo $find_rs['Result']; ?>
        <hr />

        <b>Match location</b>: <?php echo  $find_rs['Match location']; ?>
        <br />
        <b>Games since last loss:</b> <?php echo $find_rs['LastLoss']; ?>
        <br />
        <b>Opposition Debutants:</b> <?php echo $find_rs['OppDebutants']; ?>
        <br />
        <b>Debutants:</b> <?php echo $find_rs['Debutants']; ?>
        <br />
        <b>Opposition tries in last 5 games:</b> <?php echo $find_rs['OppTries']; ?>
        <br />
        <b>Tries in last 5 games:</b> <?php echo $find_rs['AbTries']; ?>
        <br />
        <hr />

        <b>Opposition Rating:</b> <?php echo $find_rs['OppRating']; ?>
        <br />
        <b>All Black Rating:</b> <?php echo $find_rs['AbRating']; ?>
        <br />
    </div> <!-- / results -->

    <br />

    <?php
                    
                } // end results 'do'
                
                while
                    ($find_rs=mysqli_fetch_assoc($find_query));
                
            } // end else
            
            ?>



</div> <!-- / main -->

<?php include("bottombit.php") ?>
