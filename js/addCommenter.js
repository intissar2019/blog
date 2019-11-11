 $( "#submitc" ).click(function(e) {    
        e.preventDefault();

        var commentaire=$("#usercomment").val();
        var hideid=$('#hideid').val();

          if(commentaire.length <  10 || commentaire.length > 1000 ){
             console.log("rbkb kbk");
              $('#usercomment').addClass('is-invalid');
              $('#invalidcommenter').html('SVP postuler un commentaire entre  10 et 1000 caractéres !');
          }
   
   else{
         $.ajax({ 
              url : 'addComment.php', type : 'POST',dataType:'html',
              data:{
                comment:commentaire,
                hideId:hideid },
                success : function(result)
              {
                $('.post-comments').empty();
                $('.post-comments').html(result); 
                $('.commenting-form').trigger('reset');
              }
        });
         $('.commenting-form').trigger('reset');
     }
 });

  /*****button reset ******/

   $( "#resetc" ).click(function(e) {
        $('.commenting-form').trigger('reset'); 
    });
