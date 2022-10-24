using CookBlog.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.IO;
using Newtonsoft.Json;
using System;

namespace CookBlog.Services
{
    public class MockDataStore : IDataStore<Item>
    {
        private readonly List<Item> items = new List<Item>();
        const string _jsonFile = "Recipes.json";
        #region Строка JSON
        /*string text = @"[
    {
        'Id': 1,
        'Text': 'Сырная Пицца',
        'Description': 'Все',
        'Photo': 'Rec1.png',
        'Time1': '',
        'Time2': '',
        'Time3': ''
    },
    {
        'Id': 2,
        'Text': 'Конраку тама',
        'Description': 'Все',
        'Photo': 'Rec2.png',
        'Time1': '',
        'Time2': '',
        'Time3': ''
    },
    {
    'Id': 3,
        'Text': 'Pavlova',
        'Description': 'Все',
        'Photo': 'Rec3.png',
        'Time1': '',
        'Time2': '',
        'Time3': ''

    },
    {
    'Id': 4,
        'Text': 'Барэисе маруяки',
        'Description': 'Все',
        'Photo': 'Rec4.png',
        'Time1': '',
        'Time2': '',
        'Time3': ''
    },
    {
    'Id': 5,
        'Text': 'Блинный торт',
        'Description': 'Все',
        'Photo': 'Rec5.png',
        'Time1': '',
        'Time2': '',
        'Time3': ''
    }
]";*/
        #endregion
        string pathPersonal = Environment.GetFolderPath(Environment.SpecialFolder.Personal);

        public MockDataStore()
        {

            var path = Path.Combine(pathPersonal, _jsonFile);
            var jsonContent = File.ReadAllText(path);

            items.AddRange(JsonConvert.DeserializeObject<List<Item>>(jsonContent));
        }

        public async Task<bool> AddItemAsync(Item item)
        {
            items.Add(item);

            return await Task.FromResult(true);
        }

        public async Task<bool> UpdateItemAsync(Item item)
        {
            var oldItem = items.Where((Item arg) => arg.Id == item.Id).FirstOrDefault();
            items.Remove(oldItem);
            items.Add(item);

            return await Task.FromResult(true);
        }

        public async Task<bool> DeleteItemAsync(string id)
        {
            var oldItem = items.Where((Item arg) => arg.Id == id).FirstOrDefault();
            items.Remove(oldItem);

            return await Task.FromResult(true);
        }

        public async Task<Item> GetItemAsync(string id)
        {
            return await Task.FromResult(items.FirstOrDefault(s => s.Id == id));
        }

        public async Task<IEnumerable<Item>> GetItemsAsync(bool forceRefresh = false)
        {
            return await Task.FromResult(items);
        }
    }
}