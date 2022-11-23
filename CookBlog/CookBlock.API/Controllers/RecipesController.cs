using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CookBlock.API.Models;

namespace CookBlock.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RecipesController : ControllerBase
    {
        ApplicationContext db;

        public RecipesController(ApplicationContext context)
        {
            db = context;
        }

        [HttpGet]
        public async Task<IEnumerable<Recipe>> GetAllRecipes()
        {
            return await db.Recipes.ToListAsync();
        }

        // GET api/Recipes/byFoodType?id=5
        [HttpGet("byFoodType")]
        public async Task<IEnumerable<Recipe>> GetRecipesByFoodType(int foodTypeId)
        {
            List<Recipe> recipes = await db.Recipes.Where(x => x.Food_Type_Id == foodTypeId).ToListAsync();
            return recipes;
        }

        [HttpGet("{recipeId}/Ingredients")]
        public async Task<IEnumerable<Recipe_Ingredient>> GetIngredientsFromRecipe(int recipeId)
        {
            List<Recipe_Ingredient> ingredients = await db.Recipe_Ingredients.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            return ingredients;
        }

        [HttpGet("{recipeId}/Instructions")]
        public async Task<IEnumerable<Recipe_Instruction>> GetInstructionsFromRecipe(int recipeId)
        {
            List<Recipe_Instruction> instructions = await db.Recipe_Instructions.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            return instructions;
        }

        [HttpGet("{recipeId}/Full")]
        public async Task<ActionResult<FullRecipe>> GetFullRecipe(int recipeId)
        {
            Recipe recipe = await db.Recipes.FirstOrDefaultAsync(x => x.Id == recipeId);
            if (recipe == null)
            {
                return NotFound();
            }
            List<Recipe_Instruction> instructions = await db.Recipe_Instructions.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            List<Recipe_Ingredient> ingredients = await db.Recipe_Ingredients.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            List<Comment> comments = await db.Comments.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            List<Recipe_Rating> ratings = await db.Ratings.Where(x => x.Recipe_Id == recipeId).ToListAsync();
            Food_Type food_type = await db.Food_Types.FirstOrDefaultAsync(x => x.Id == recipe.Food_Type_Id);
            FullRecipe fullRecipe = new FullRecipe(recipe, ingredients, instructions, comments, ratings, food_type);
            return new ObjectResult(fullRecipe);
        }

        [HttpPost("Add/Recipe/Main")]
        public async Task<ActionResult<Recipe>> PostRecipe(Recipe recipe)
        {
            if (recipe == null)
            {
                return BadRequest();
            }
            db.Recipes.Add(recipe);
            await db.SaveChangesAsync();
            return Ok(recipe);
        }


        [HttpPost("Add/Recipe/Ingredient")]
        public async Task<ActionResult<Recipe_Ingredient>> PostIngredient(Recipe_Ingredient ingredient)
        {
            if (ingredient == null)
            {
                return BadRequest();
            }
            db.Recipe_Ingredients.Add(ingredient);
            await db.SaveChangesAsync();
            return Ok(ingredient);
        }

        [HttpPost("Add/Recipe/Instruction")]
        public async Task<ActionResult<Recipe_Instruction>> PostInstruction(Recipe_Instruction instruction)
        {
            if (instruction == null)
            {
                return BadRequest();
            }
            db.Recipe_Instructions.Add(instruction);
            await db.SaveChangesAsync();
            return Ok(instruction);
        }

        [HttpPost("Add/Recipe/Full")]
        public async Task<ActionResult<FullRecipe>> PostRecipe(FullRecipe fullRecipe)
        {
            if (fullRecipe == null)
            {
                return BadRequest();
            }
            db.Recipes.Add(fullRecipe.recipe);
            foreach (var ingredient in fullRecipe.ingredients)
            {
                db.Recipe_Ingredients.Add(ingredient);
            }
            foreach (var instruction in fullRecipe.instructions)
            {
                db.Recipe_Instructions.Add(instruction);
            }
            await db.SaveChangesAsync();
            return Ok(fullRecipe);
        }
    }
}
