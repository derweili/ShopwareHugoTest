{extends file="parent:frontend/index/index.tpl"}

{* Shop header *}
{block name='frontend_index_navigation'}

    {* Maincategories navigation top *}
    {block name='frontend_index_navigation_categories_top'}
      <nav class="navigation-main">
        <div class="wahd-header-logo">
          {* Logo container *}
          {block name='frontend_index_logo_container'}
              {include file="frontend/index/logo-container.tpl"}
          {/block}
        </div>
        <div class="wahd-header-categories">
            <div class="container" data-menu-scroller="true" data-listSelector=".navigation--list.container" data-viewPortSelector=".navigation--list-wrapper">
                {block name="frontend_index_navigation_categories_top_include"}
                    {include file='frontend/index/main-navigation.tpl'}
                {/block}
            </div>
          </div>
        <div class="wahd-header-icons">
          <ul>
            {* Cart entry *}
            {block name='frontend_index_checkout_actions'}
                {* Include of the cart *}
                {block name='frontend_index_checkout_actions_include'}
                    {action module=widgets controller=checkout action=info}
                {/block}
            {/block}
          </ul>
        </div>
      </nav>
    {/block}

{/block}
