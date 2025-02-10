<?php
$price = 120_000;
$minDiscountPrice = 100_000;
$discount = 0.8;

echo "Price: $price <br>";

if ($price >= $minDiscountPrice) {
    $discountedPrice = $price * (1 - $discount);
    $price *= $discount;
}

echo "Discount: $discountedPrice <br>";
echo "Total: $price <br>";
?>