using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using CookBlock.Models;
using Newtonsoft.Json;

namespace CookBlock.Services
{
    public class UserProfileService
    {
        const string Url = "http://192.168.0.104:5000/api/UserProfile/";

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

        public async Task<UserProfile> GetById(int id)
        {
            HttpClient client = GetClient();
            string result = await client.GetStringAsync(Url + "UserId?id=" + id).ConfigureAwait(false);
            return JsonConvert.DeserializeObject<UserProfile>(result);
        }
    }
}
