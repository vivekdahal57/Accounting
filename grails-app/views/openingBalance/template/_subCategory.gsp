<g:select id="subCategory" name="subCategory.id" from="${subCatList}" optionKey="id" required=""
          value="${openingBalanceInstance?.subCategory?.id}" class="many-to-one" optionValue="name"
          noSelection="${['null': 'Select One...']}"/>