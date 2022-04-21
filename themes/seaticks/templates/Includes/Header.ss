<style>
     #Form_SearchForm_Description_Holder label{
        display: none;
    }

    #Form_SearchForm_Description{
        background-color: #c3c0d6;
    }

     #Form_SearchForm_Description ::placeholder{
            display: block;
     }
</style>

<header  >


			<% if $SearchForm %>


				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">

					$SearchForm
				</div>
			<% end_if %>


			<% include Navigation %>
</header>

