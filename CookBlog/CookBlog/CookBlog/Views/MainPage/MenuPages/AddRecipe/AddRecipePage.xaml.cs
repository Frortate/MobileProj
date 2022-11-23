using System;
using System.IO;
using Xamarin.Essentials;
using Xamarin.Forms;
using CookBlock.Models;
using CookBlock.ViewModels;
using Xamarin.Forms.Xaml;
using System.Runtime.Serialization.Formatters.Binary;
using CookBlock.Tools;

using System.Threading.Tasks;


namespace CookBlock.Views.MainPage.MenuPages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddRecipePage : ContentPage
    {
        public int foodType;
        public Recipe Recipe { get; private set; }
        public RecipeViewModel viewModel { get; private set; }

        public ImageToBase64Formatter imageToBase64Formatter = new ImageToBase64Formatter();
        public AddRecipePage(User user)
        {
            InitializeComponent();
            
            viewModel = new RecipeViewModel(user)
            {
                Navigation = this.Navigation,
            };
            Recipe = new Recipe();
            BindingContext = viewModel;
        }

        async void GetPhotoAsync(object sender, EventArgs e)
        {
            try
            {
                // выбираем фото
                var photo = await MediaPicker.PickPhotoAsync();
                byte[] b = imageToBase64Formatter.ByteArrayFromImage(photo.FullPath);
                img.Source = ImageSource.FromFile(photo.FullPath);
                string base64Image = Convert.ToBase64String(b);
                Recipe.Picture_base64 = base64Image;
            }
            catch (Exception ex)
            {
            }
        }

        async void TakePhotoAsync(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(nameEntry.Text))
            {
                await DisplayAlert("Сообщение об ошибке", "Введите сначала название рецепта.", "OK");
            }
            else
            {
                try
                {
                    var photo = await MediaPicker.CapturePhotoAsync(new MediaPickerOptions
                    {
                        Title = $"{nameEntry.Text}_main.png"
                    });


                    byte[] b = imageToBase64Formatter.ByteArrayFromImage(photo.FullPath);

                    string base64Image = Convert.ToBase64String(b);
                    img.Source = ImageSource.FromFile(photo.FullPath);
                    Recipe.Picture_base64 = base64Image;
                }
                catch (Exception ex)
                {
                }
            }
        }

        void picker_SelectedIndexChanged(object sender, EventArgs e)
        {
            foodType = picker.SelectedIndex+1;
        }

        private void nextBtn_Clicked(object sender, EventArgs e)
        {
                Recipe.Name = nameEntry.Text;
                Recipe.Food_Type_Id = foodType;
                Recipe.User_Id = viewModel.logInUser.Id;
                Recipe.Date = DateTime.Now;
                viewModel.NextCommand.Execute(Recipe);
        }

        private void cancelBtn_Clicked(object sender, EventArgs e)
        {
            viewModel.BackCommand.Execute(null);
        }
    }
}