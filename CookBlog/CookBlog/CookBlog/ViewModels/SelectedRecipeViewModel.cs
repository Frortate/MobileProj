using CookBlock.Models;
using System;
using CookBlock.Services;
using System.ComponentModel;
using Xamarin.Forms;
using System.Windows.Input;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.IO;
using System.Linq;
using System.Collections.Generic;

namespace CookBlock.ViewModels
{
    public class SelectedRecipeViewModel
    {
        public User logInUser;

        public FullRecipe fullRecipe;

        public string authorName;
        public string AuthorName
        {
            get { return authorName; }
            set
            {
                authorName = value;
                OnPropertyChanged(nameof(AuthorName));
            }
        }

        public bool isImageExist;
        public bool IsImageExist
        {
            get { return isImageExist; }
            set 
            {
                isImageExist = value;
                OnPropertyChanged("IsImageExist");
            }
        }

        public bool isLoadedIngredients;
        public bool IsLoadedIngredients
        {
            get { return isLoadedIngredients; }
            set
            {
                isLoadedIngredients = value;
                OnPropertyChanged("IsLoadedIngredients");
                OnPropertyChanged("IsEmptyIngredients");
            }
        }

        public bool isMyRecipe;
        public bool IsMyRecipe
        {
            get { return isMyRecipe; }
            set
            {
                isMyRecipe = value;
                OnPropertyChanged("IsMyRecipe");
                OnPropertyChanged("NotMyRecipe");
            }
        }

        public bool NotMyRecipe
        {
            get { return !isMyRecipe; }
        }

        public bool isLiked;
        public bool IsLiked
        {
            get { return isLiked; }
            set
            {
                isLiked = value;
                OnPropertyChanged("IsLiked");
                OnPropertyChanged("NotLiked");
            }
        }

        public bool NotLiked
        {
            get { return !isLiked; }
        }
        public bool IsEmptyIngredients
        {
            get { return !isLoadedIngredients; }
        }

        public bool isLoadedInstructions;
        public bool IsLoadedInstructions
        {
            get { return isLoadedInstructions; }
            set 
            {
                isLoadedInstructions = value;
                OnPropertyChanged("IsLoadedInstructions");
                OnPropertyChanged("IsEmptyInstructions");
            }
        }

        public bool IsEmptyInstructions
        {
            get { return !isLoadedInstructions; }
        }

        private bool isBusy;
        public bool IsBusy
        {
            get { return isBusy; }
            set
            {
                isBusy = value;
                OnPropertyChanged("IsBusy");
            }
        }

        public ObservableCollection<Comment> Comments { get; set; }
        public ObservableCollection<Recipe_Ingredient> Ingredients { get; set; }
        public ObservableCollection<Instruction> Instructions { get; set; }

        public FullRecipeService recipeService = new FullRecipeService();
        public UserService userService = new UserService();
        public event PropertyChangedEventHandler PropertyChanged;
        public ICommand BackCommand { get; protected set; }


        public ICommand LikeRecipeCommand { get; protected set; }
        public INavigation Navigation { get; set; }

        public SelectedRecipeViewModel(User user, FullRecipe fullRecipe)
        {
            logInUser = user;
            this.fullRecipe = fullRecipe;
            Comments = new ObservableCollection<Comment>();
            Ingredients = new ObservableCollection<Recipe_Ingredient>();
            Instructions = new ObservableCollection<Instruction>();
            GetIngredients();
            GetInstructions();

            IsItMyRecipe();
            IsRecipeLiked();
            IsMainImageExist();
            GetAuthorName();
            IsIngredientListExist();
            IsInstructionListExist();
            LikeRecipeCommand = new Command(LikeRecipe);
            BackCommand = new Command(Back);
        }

        public async Task GetIngredients()
        {
            IsBusy = true;
            foreach (Recipe_Ingredient ingr in fullRecipe.ingredients)
            {
                Ingredients.Add(ingr);
            }
            IsBusy = false;
        }

        public async Task GetInstructions()
        {
            IsBusy = true;
            fullRecipe.instructions = fullRecipe.instructions.OrderBy(x => x.Position).ToList();
            foreach (Recipe_Instruction instr in fullRecipe.instructions)
            {
                Instructions.Add(new Instruction(instr));
            }
            IsBusy = false;
        }

        protected void OnPropertyChanged(string propName)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propName));
        }

        public async void GetAuthorName()
        {
            IsBusy = true;
            User user = userService.GetById(fullRecipe.recipe.User_Id).Result;
            authorName = user.Name;
            IsBusy = false;
        }

        public void IsItMyRecipe()
        {
            IsBusy = true;
            if (logInUser.Id == fullRecipe.recipe.User_Id)
            {
                IsMyRecipe = true;
            }
            else
            {
                IsMyRecipe = false;
            }
            IsBusy = false;
        }
        public async void IsIngredientListExist()
        {
            IsBusy = true;
            if (fullRecipe.ingredients.Count > 0)
            {
                IsLoadedIngredients = true;
            }
            else
            {
                IsLoadedIngredients = false;
            }
            IsBusy = false;
        }

        public async void IsInstructionListExist()
        {
            IsBusy = true;
            if (fullRecipe.instructions.Count > 0)
            {
                IsLoadedInstructions = true;
            }
            else
            {
                IsLoadedInstructions = false;
            }
            IsBusy = false;
        }

        public async void IsMainImageExist()
        {
            IsBusy = true;
            if (fullRecipe.recipe.Picture_base64 != null)
            {
                isImageExist = true;
            }
            else
            {
                isImageExist=false;
            }
            IsBusy = false;
        }

        public void IsRecipeLiked()
        {
            IsBusy = true;
            IsLiked = false;
            IEnumerable<Favourite> favourite = recipeService.GetFavouritesByUser(logInUser.Id).Result;
            foreach (Favourite fav in favourite)
            {
                if (fav.Recipe_Id == fullRecipe.recipe.Id)
                {
                    IsLiked = true;
                    break;
                }
            }
            IsBusy = false;
        }

        private async void LikeRecipe()
        {
            IsBusy = true;
            if (IsLiked == true)
            {
                IsLiked = false;
                Favourite deletedFavourite = await recipeService.DeleteFavourite(logInUser.Id, fullRecipe.recipe.Id);
            }
            else
            {
                Favourite favourite = new Favourite();
                favourite.Recipe_Id = fullRecipe.recipe.Id;
                favourite.User_Id = logInUser.Id;
                IsLiked = true;
                Favourite newFavourite = await recipeService.AddFavouriteRecipe(favourite);
            }
            IsBusy = false;
        }


        private void Back()
        {
            Navigation.PopAsync();
        }
    }

    public class Instruction
    {
        public int Id { get; set; }
        public int Recipe_Id { get; set; }
        public int Position { get; set; }
        public string Text { get; set; }
        public ImageSource ImageSource { get; set; }

        public Instruction(Recipe_Instruction instr)
        {
            this.Id = instr.Id;
            this.Recipe_Id = instr.Recipe_Id;
            this.Position = instr.Position;
            this.Text = instr.Text;
            ImageSource = ImageSource.FromStream(() => new MemoryStream(Convert.FromBase64String(instr.Picture_base64)));
        }
    }
}
