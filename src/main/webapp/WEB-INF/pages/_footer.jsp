<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- //modal-video -->
<!-- banner-bottom1 -->
<div class="banner-bottom1">
    <div class="agileinfo_banner_bottom1_grids">
        <div class="col-md-7 agileinfo_banner_bottom1_grid_left">
            <h3>Grand Opening Event With flat<span>20% <i>Discount</i></span></h3>
            <a href="${pageContext.request.contextPath}/productList">Shop Now</a>
        </div>
        <div class="col-md-5 agileinfo_banner_bottom1_grid_right">
            <h4>hot deal</h4>
            <a href="${pageContext.request.contextPath}/productList">Shop Now</a>
            <script src="${pageContext.request.contextPath}/js/jquery.countdown.js"></script>
            <script src="${pageContext.request.contextPath}/js/script.js"></script>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //banner-bottom1 --> 
<!-- special-deals -->
<div class="special-deals">
    <div class="container">
        <center><h2>Special Deals</h2></center>
        <div class="w3agile_special_deals_grids">
            <div class="col-md-7 w3agile_special_deals_grid_left">
                <div class="w3agile_special_deals_grid_left_grid">
                    <img src="${pageContext.request.contextPath}/images/21.jpg" alt=" " class="img-responsive" />
                    <div class="w3agile_special_deals_grid_left_grid_pos1">
                        <h5>30%<span>Off/-</span></h5>
                    </div>
                    <div class="w3agile_special_deals_grid_left_grid_pos">
                        <h4>We Offer <span>Best Products</span></h4>
                    </div>
                </div>
                <div class="wmuSlider example1">
                    <div class="wmuSliderWrapper">
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="${pageContext.request.contextPath}/images/t1.png" alt=" " class="img-responsive" />
                                    <p>Great deals on various items. 
                                    </p>
                                    <h4>Susmita</h4>
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="${pageContext.request.contextPath}/images/t2.png" alt=" " class="img-responsive" />
                                    <p>My only shopping hub.
                                    </p>
                                    <h4>Madan</h4>
                                </div>
                            </div>
                        </article>
                        <article style="position: absolute; width: 100%; opacity: 0;">
                            <div class="banner-wrap">
                                <div class="w3agile_special_deals_grid_left_grid1">
                                    <img src="${pageContext.request.contextPath}/images/t3.png" alt=" " class="img-responsive" />
                                    <p>This one is for sure our store and our place.
                                    </p>
                                    <h4>Rasmita</h4>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <script src="${pageContext.request.contextPath}/js/jquery.wmuSlider.js"></script> 
                <script>
                    $('.example1').wmuSlider();

                </script> 
            </div>
            <div class="col-md-5 w3agile_special_deals_grid_right">
                <img src="${pageContext.request.contextPath}/images/20.jpg" alt=" " class="img-responsive" />
                <div class="w3agile_special_deals_grid_right_pos">
                    <h4>Women's <span>Special</span></h4>
                    <h5>save up <span>to</span> 30%</h5>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    </div>
<!-- //special-deals -->
<!-- new-products -->
<div class="new-products">
    <div class="container">
        <h3>New Products</h3>
        <div class="agileinfo_new_products_grids">
            <c:forEach var="product" items="${newestProducts}" >
                <div class="col-md-3 agileinfo_new_products_grid">
                    <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                        <div class="hs-wrapper hs-wrapper1">

                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                            <img src="${pageContext.request.contextPath}/productImage?code=${product.code}" 
                                 alt=" " class="img-responsive" />
                        </div>
                        <h5><a href="single.html">${product.name}</a></h5>
                        <div class="simpleCart_shelfItem">
                            <p> 
                                &#8360.<i class="item_price">${product.price}</i>
                            </p>
                            <form action="#" method="post">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1"> 
                                <input type="hidden" name="w3ls_item" value="${product.name}"> 
                                <input type="hidden" name="amount" value="${product.price}">   
                                <li><a href="${pageContext.request.contextPath}/buyProduct?code=${product.code}" class="btn btn-primary">
                                        <span class="glyphicon glyphicon-shopping-cart">Add To Cart</a></li>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- //new-products -->
<!-- top-brands -->
<div class="top-brands">
    <div class="container">
        <h3>Top Brands</h3>
        <div class="sliderfig">
            <ul id="flexiselDemo1">
                <li>
                    <img src="${pageContext.request.contextPath}/images/tb1.jpg" alt=" " class="img-responsive" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/images/tb2.jpg" alt=" " class="img-responsive" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/images/tb3.jpg" alt=" " class="img-responsive" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/images/tb4.jpg" alt=" " class="img-responsive" />
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/images/tb5.jpg" alt=" " class="img-responsive" />
                </li>
            </ul>
        </div>
        <script type="text/javascript">
            $(window).load(function () {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: {
                        portrait: {
                            changePoint: 480,
                            visibleItems: 1
                        },
                        landscape: {
                            changePoint: 640,
                            visibleItems: 2
                        },
                        tablet: {
                            changePoint: 768,
                            visibleItems: 3
                        }
                    }
                });

            });
        </script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
    </div>
</div>
<!-- //top-brands --> 
<!-- newsletter -->
<div class="newsletter">
    <div class="container">
        <div class="col-md-6 w3agile_newsletter_left">
            <h3></h3>
        </div>
        
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Contacts</h3>
                <p></p>
                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Maharajgunj,Kathmandu</li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">nickkhnl@gmail.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>9860924277</li>
                </ul>
            </div>
            <h4></h4>
            <div class="agileits_social_button">
                <ul>
                    <li><a href="https://www.facebook.com/Pasaley" target="_blank"> <i class="facebook"> </i></a></li>
                    <li><a href="https://www.twitter.com/nickhnl7" target="_blank" <i class="twitter"></i> </a></li>
                    <li><a href="https://www.gmail.com/nickkhnl" target="_blank" <i class="google"></i> </a></li>
                </ul>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<div class="footer-copy">
    <div class="footer-copy1">
        <div class="footer-copy-pos">
            <a href="#home1" class="scroll"><img src="${pageContext.request.contextPath}/images/arrow.png" alt=" " class="img-responsive" /></a>
        </div>
    </div>
    <center>
        <div class="container">
            <p>&copy; 2017 hamropasal.com | All rights reserved | Developed & designed by <a href="${pageContext.request.contextPath}/about"> Team HamroPasal</p>
        </div>
    </center>
</div>
</div>
<!-- //footer --> 
<!-- OK now show product here -->
<!-- cart-js -->
<script src="${pageContext.request.contextPath}/images/minicart.js"></script>
<script>
            w3ls.render();

            w3ls.cart.on('w3sb_checkout', function (evt) {
                var items, len, i;

                if (this.subtotal() > 0) {
                    items = this.items();

                    for (i = 0, len = items.length; i < len; i++) {
                    }
                }
            });
</script>