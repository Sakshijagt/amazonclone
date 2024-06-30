

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <%@include file="components/common_css_js.jsp"%>
    </head>
    <body>
                <%@include file="components/navbar.jsp"%>
                <div class="container admin">
    <div class="row mt-3">
        <!-- first column -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <div class="container">
                        <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/user icon.png" alt="user_icon">         
                    </div>
                    <h1>2342</h1>
                    <h1 class="text-uppercase text-muted">Users</h1>
                </div>
            </div>
        </div>
        
        <!-- second column -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <div class="container">
                        <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/menu.png" alt="menu_icon">         
                    </div>
                    <h1>23432</h1>
                    <h1 class="text-uppercase text-muted">Categories</h1>
                </div>
            </div>
        </div>
        
        <!-- third column -->
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <div class="container">
                        <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/box.png" alt="box_icon">         
                    </div>
                    <h1>234</h1>
                    <h1 class="text-uppercase text-muted">Products</h1>
                </div>
            </div>
        </div>
    </div>
    
    <!-- second row -->
    <div class="row mt-3">
        <!-- second row: first column -->
        <div class="col-md-6">
            <div class="card" data-toggle="modal" data-target="#add-category-modal">
                <div class="card-body text-center">
                    <div class="container">
                        <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/key.png" alt="key_icon">         
                    </div>
                    <p class="mt-2">Click here to add new categories</p>
                    <h1 class="text-uppercase text-muted">Add Category</h1>
                </div>
            </div>
        </div>
        
        <!-- second row: second column -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <div class="container">
                        <img style="max-width: 125px" class="img-fluid rounded-circle" src="img/plus.png" alt="plus_icon">         
                    </div>
                    <p class="mt-2">Click here to add new product</p>
                    <h1 class="text-uppercase text-muted">Add Product</h1>
                </div>
            </div>
        </div>
    </div>
</div>
                
           
            <!add category modal>   
               
                <!-- Modal -->
                <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header custom-bg text-white">
                                <h5 class="modal-title" id="exampleModalLabel">Fill category detials</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="ProductOpertionServlet" method="post">
                                    
                                    <input type="hidden" name="operation" value="addcategory">
                                           
                                           
                                          
                                        
                                    
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required/>
                                        
                                    </div>
                                    
                                    <div class="form-group">
                                        <textarea style="height: 300px" class="form-control" placeholder="Enter category descriptoion" name="catDescription" required></textarea>
                                    </div>
                                    
                                    <div class="container text-center">
                                        
                                        <button class="btn-outline-success">Add Category</button>
                                        
                                    </div>
                                    
                                </form>
                                
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                
                            </div>
                        </div>
                    </div>
                </div>

                


    <!<!-- End category modal -->
    </body>
</html>
