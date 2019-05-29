<?php include "partials/header.tpl" ?>

<style>
.container {
    margin-top: 5em;
}

.grid-container {
    width: 100%;
    height: 400px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

img {
    height: 50px;
    width: 50px;
    margin: 0 auto;
}
</style>


<div id="stamp-book">

    <div class="grid-container">
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>

    </div>

    <div class="grid-container">
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>

    </div>
    <div class="grid-container">
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>

    </div>
    <div class="grid-container">
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>

    </div>
    <div class="grid-container">
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>
        <div class="col">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
            <img src="https://www.usps.com/ecp/asset/images/749704-L0.jpg" alt="stamp">
        </div>

    </div>
</div>

</div>



<?php include "partials/footer.tpl" ?>
<script>
$(function() {
    //single book
    $('#stamp-book').booklet({
        shadows: false
    });

});
</script>
<?php include "partials/footercloser.tpl" ?>