<g:select id="subAccountHead" name="subAccountHead.id" from="${subAccList}" optionKey="id"
          required="" value="${openingBalanceInstance?.subAccountHead?.id}" class="many-to-one" optionValue="name"
          noSelection="${['null': 'Select One...']}"/>