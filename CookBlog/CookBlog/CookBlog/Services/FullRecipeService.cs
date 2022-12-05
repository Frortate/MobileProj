using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using CookBlock.Models;
using Xamarin.Forms;
using Newtonsoft.Json;

namespace CookBlock.Services
{
    public class FullRecipeService
    {
        const string Url = "http://192.168.71.167:5000/api/Recipes/";

        JsonSerializerOptions options = new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true,
        };

        private HttpClient GetClient()
        {
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.Add("Accept", "application/json");
            return client;
        }

        public async Task<IEnumerable<Recipe>> GetAllRecipes()
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url).ConfigureAwait(false);
            return System.Text.Json.JsonSerializer.Deserialize<IEnumerable<Recipe>>(result, options);
        }

        public async Task<IEnumerable<Recipe>> GetRecipesByFoodType(int foodTypeId)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + "byFoodType?foodTypeId=" + foodTypeId);
            return System.Text.Json.JsonSerializer.Deserialize<IEnumerable<Recipe>>(result, options);
        }

        public async Task<FullRecipe> GetFullRecipe(int recipeId)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + recipeId + "/Full").ConfigureAwait(false);
            return JsonConvert.DeserializeObject<FullRecipe>(result);
        }

        public async Task<Recipe> AddRecipe(Recipe recipe)
        {
            HttpClient httpClient = GetClient();
            var response = await httpClient.PostAsync(Url + "Add/Recipe/Main",
                new StringContent(
                    System.Text.Json.JsonSerializer.Serialize(recipe),
                    Encoding.UTF8, "application/json"));

            if (response.StatusCode != HttpStatusCode.OK)
            {
                return null;
            }

            return System.Text.Json.JsonSerializer.Deserialize<Recipe>(
                await response.Content.ReadAsStringAsync(), options);
        }

        public async Task<Recipe_Ingredient> AddIngredient(Recipe_Ingredient ingredient)
        {
            HttpClient httpClient = GetClient();
            var response = await httpClient.PostAsync(Url + "Add/Recipe/Ingredient",
                new StringContent(
                    System.Text.Json.JsonSerializer.Serialize(ingredient),
                    Encoding.UTF8, "application/json"));

            if (response.StatusCode != HttpStatusCode.OK)
            {
                return null;
            }

            return System.Text.Json.JsonSerializer.Deserialize<Recipe_Ingredient>(
                await response.Content.ReadAsStringAsync(), options);
        }

        public async Task<Recipe_Instruction> AddInstruction(Recipe_Instruction instruction)
        {
            HttpClient httpClient = GetClient();
            var response = await httpClient.PostAsync(Url + "Add/Recipe/Instruction",
                new StringContent(
                    System.Text.Json.JsonSerializer.Serialize(instruction),
                    Encoding.UTF8, "application/json"));

            if (response.StatusCode != HttpStatusCode.OK)
            {
                return null;
            }

            return System.Text.Json.JsonSerializer.Deserialize<Recipe_Instruction>(
                await response.Content.ReadAsStringAsync(), options);
        }

        //---------------

        public async Task<IEnumerable<Recipe>> GetFavouriteRecipes(int userId)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + userId + "/Favourites");
            return System.Text.Json.JsonSerializer.Deserialize<IEnumerable<Recipe>>(result, options);
        }

        public async Task<IEnumerable<Favourite>> GetFavouritesByUser(int userId)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + "Favourites/byUserId?userId=" + userId).ConfigureAwait(false);
            return System.Text.Json.JsonSerializer.Deserialize<IEnumerable<Favourite>>(result, options);
        }

        public async Task<IEnumerable<Favourite>> GetAllFavouritesFromMyRecipes(int userId)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + "Favourites/all?userId=" + userId).ConfigureAwait(false);
            return System.Text.Json.JsonSerializer.Deserialize<IEnumerable<Favourite>>(result, options);
        }

        public async Task<Favourite> AddFavouriteRecipe(Favourite favourite)
        {
            HttpClient httpClient = GetClient();
            var response = await httpClient.PostAsync(Url + "Add/Favourite",
                new StringContent(
                    System.Text.Json.JsonSerializer.Serialize(favourite),
                    Encoding.UTF8, "application/json"));

            if (response.StatusCode != HttpStatusCode.OK)
            {
                return null;
            }

            return System.Text.Json.JsonSerializer.Deserialize<Favourite>(
                await response.Content.ReadAsStringAsync(), options);
        }

        public async Task<Favourite> DeleteFavourite(int userId, int recipeId)
        {
            HttpClient client = GetClient();
            var response = await client.DeleteAsync(Url + userId + "/Favourites/" + recipeId);
            if (response.StatusCode != HttpStatusCode.OK)
            {
                return null;
            }


            return System.Text.Json.JsonSerializer.Deserialize<Favourite>(
               await response.Content.ReadAsStringAsync(), options);
        }

    }
}
