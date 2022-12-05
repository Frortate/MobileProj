using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using CookBlock.Models;
using CookBlock.ViewModels;
using System.IO;
using System.Collections.ObjectModel;
using CookBlock.Services;
using System.Globalization;
using CookBlock.Tools;

namespace CookBlock.Views.MainPage.MenuPages
{
    

    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SelectedRecipePage : ContentPage
    {
        public SelectedRecipeViewModel ViewModel { get; set; }
        public User logInUser { get; set; }
        public FullRecipe FullRecipe { get; set; }
        public Recipe Recipe { get; set; }
        public FullRecipeService fullRecipeService = new FullRecipeService();
        public Random random = new Random();

        public SelectedRecipePage(User user)
        {
            logInUser = user;
            List<Recipe> recipes = fullRecipeService.GetAllRecipes().Result.ToList();
            int index = random.Next(recipes.Count);
            Recipe recipe = recipes[index];
            FullRecipe fullRecipe = fullRecipeService.GetFullRecipe(recipe.Id).Result;
            Recipe = fullRecipe.recipe;

            ViewModel = new SelectedRecipeViewModel(user, fullRecipe)
            {
                Navigation = this.Navigation,
            };
            this.BindingContext = this;
            InitializeComponent();

            if (ViewModel.IsLiked == true)
            {
                likeImage.Source = "heart_white.png";
            }
            else
            {
                likeImage.Source = "heart_outline_white.png";
            }

            if (ViewModel.IsImageExist == true)
            {
                mainImage.Source = ImageSource.FromStream(() => new MemoryStream(Convert.FromBase64String(FullRecipe.recipe.Picture_base64)));
            }
            else
            {
                mainImage.Source = "no_image.jpg";
                mainImage.IsVisible = true;
            }
            
            
            creationDate.Text = FullRecipe.recipe.Date.ToString("dd MMMM, yyyy", CultureInfo.CreateSpecificCulture("ru-RU")) + " г.";
        }

        public void LikeRecipeTapped(object sender, EventArgs args)
        {
            ViewModel.LikeRecipeCommand.Execute(null);
            if (ViewModel.IsLiked == true)
            {
                likeImage.Source = "heart_white.png";
            }
            else
            {
                likeImage.Source = "heart_outline_white.png";
            }
        }

        public SelectedRecipePage(User user, FullRecipe fR)
        {
            
            logInUser = user;
            FullRecipe = fR;
            Recipe = fR.recipe;
            

            ViewModel = new SelectedRecipeViewModel(user, fR)
            {
                Navigation = this.Navigation,
            };
            this.BindingContext = this;
            InitializeComponent();

            if (ViewModel.IsLiked == true)
            {
                likeImage.Source = "heart_white.png";
            }
            else
            {
                likeImage.Source = "heart_outline_white.png";
            }

            if (ViewModel.IsImageExist == true)
            {
                mainImage.Source = ImageSource.FromStream(() => new MemoryStream(Convert.FromBase64String(FullRecipe.recipe.Picture_base64)));
            }
            else
            {
                mainImage.Source = "no_image.jpg";
                mainImage.IsVisible = true;
            }
            
            
            creationDate.Text = FullRecipe.recipe.Date.ToString("dd MMMM, yyyy", CultureInfo.CreateSpecificCulture("ru-RU")) + " г.";
        }



    }

    public class Instruction
    {
        public int Id { get; set; }
        public int Recipe_Id { get; set; }
        public int Position { get; set; }
        public string Text { get; set; }
        public ImageSource ImageSource { get; set; }

        public bool IsVisibleImage { get; set; }

        public Instruction(Recipe_Instruction instr)
        {
            this.Id = instr.Id;
            this.Recipe_Id = instr.Recipe_Id;
            this.Position = instr.Position;
            this.Text = instr.Text;
            if (instr.Picture_base64 != null)
            {
                IsVisibleImage = true;
                ImageSource = ImageSource.FromStream(() => new MemoryStream(Convert.FromBase64String(instr.Picture_base64)));
            }
            else
            {
                ImageSource = null;
                IsVisibleImage = false;
            }
            
        }
    }
}