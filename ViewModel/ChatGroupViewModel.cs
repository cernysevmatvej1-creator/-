using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Group.InterfaceServies;
using System;
using System.Collections.Generic;
using System.Text;
using TRAIN;
using System.Collections.ObjectModel;
using Group.Models;
using Microsoft.Maui.Animations;
using System.Linq;

namespace Group.ViewModel
{
    public partial class ChatGroupViewModel : ObservableObject, IQueryAttributable
    {
        private readonly IChatServise _chatservise;

        [ObservableProperty]
        private ObservableCollection<Message> _messages;

        [ObservableProperty]
        private string _messags;

        [ObservableProperty]
        private string _groupId;

        public ChatGroupViewModel(IChatServise chatservise)
        {
            _chatservise = chatservise;
            _messages = new ObservableCollection<Message>();
        }

        public void StartListening()
        {
            _chatservise.Subscribe(Messages, GroupId);
        }


        public void StopListening()
        {
            _chatservise.Unsubscribe();
        }

        public async Task LoadedMesages()
        {
            var lismessages = await _chatservise.LoadedMessage(GroupId);
            Messages.Clear();
            if (lismessages?.Data != null)
            {
              
                foreach (var message in lismessages.Data)
                {
                    Messages.Add(message);
                }
            }
        }


        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("groupId"))
            {
                GroupId = query["groupId"].ToString();
            }
        }

        [RelayCommand]
        private async Task AddMessage()
        {
            if (string.IsNullOrWhiteSpace(Messags))
                return;
            var messagesave = Messags;
            Messags = string.Empty;
            var messageText = Messags;
            var result = await _chatservise.AddMessage(messagesave, GroupId);
          if(!result.Success)
                await DialogHelper.ShowAlert("Ошибка", result.Message ?? "Не удалось отправить сообщение");
            
        }

        [RelayCommand]
        private async Task CopyMessage(Message message)
        {
            if (message != null && !string.IsNullOrWhiteSpace(message.Messag))
            {
                await Clipboard.Default.SetTextAsync(message.Messag);
                await DialogHelper.ShowAlert("Успех", "Сообщение скопировано");
            }
        }

    }
}