% rebase('base.tpl')

<h2>Veldu hlutina sem þú vilt í WoW</h2>
<div>
    % for i in range(len(products)):
       <p> <a href="/cart/add/{{ products[i]["pid"] }}"> {{ products[i]["name"] }} </a> </p>
    % end
</div>
