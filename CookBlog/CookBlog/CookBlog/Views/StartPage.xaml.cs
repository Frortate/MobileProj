using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using CookBlock.ViewModels;
using CookBlock.Models;
using Xamarin.Essentials;

namespace CookBlock.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class StartPage : ContentPage
    {
        UserLoginViewModel viewModel;
        public StartPage(User user)
        {
            InitializeComponent();
            Label_AppName.FadeTo(0, 0, Easing.Linear);
            Label_AppName.FadeTo(1, 2000, Easing.Linear);
            viewModel = new UserLoginViewModel()
            {
                Navigation = this.Navigation
            };
            BindingContext = viewModel;
        }

        protected override async void OnAppearing()
        {
            base.OnAppearing();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            if (!String.IsNullOrWhiteSpace(Login_Entry.Text) && !String.IsNullOrWhiteSpace(Password_Entry.Text))
            {
                User user = new User();
                user.Name = Login_Entry.Text;
                user.Password = Password_Entry.Text;
                viewModel.LogInCommand.Execute(user);
            }
            else
            {
                viewModel.MakeAlert("Неверный ввод имени пользователя или пароля.");
            }
        }
    }
}