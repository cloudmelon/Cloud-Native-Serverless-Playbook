// See https://aka.ms/new-console-template for more information

using System; // Namespace for Console output
using System.Configuration; // Namespace for ConfigurationManager
using System.Threading.Tasks; // Namespace for Task
using Azure.Identity;
using Azure.Storage.Queues; // Namespace for Queue storage types
using Azure.Storage.Queues.Models; // Namespace for PeekedMessage

Console.WriteLine("Greetings !");

// Get the connection string from app settings
string connectionString = ConfigurationManager.AppSettings["StorageConnectionString"];

// Instantiate a QueueClient which will be used to create and manipulate the queue
QueueClient queueClient = new QueueClient(connectionString, "functions-queue");

// Create the queue if it doesn't already exist
queueClient.CreateIfNotExists();

if (queueClient.Exists())
{
    // Create a message and add it to the queue.
    for (int i = 0; i < 5000; i++)
    {
  
        // Send a message to the queue
        queueClient.SendMessage("Hello geeks " + i);
        Console.WriteLine("Message No." + i + " added ");
    }

}

Console.WriteLine("Peace !");
Console.ReadKey();
