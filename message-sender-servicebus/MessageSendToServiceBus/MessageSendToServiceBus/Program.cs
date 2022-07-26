// See https://aka.ms/new-console-template for more information
// See https://aka.ms/new-console-template for more information

using System; // Namespace for Console output
using System.Threading;
using System.Configuration; // Namespace for ConfigurationManager
using System.Threading.Tasks; // Namespace for Task
using Azure.Messaging.ServiceBus;

    Console.WriteLine("Greetings !");

    // Get the connection string from app settings
    string connectionString = ConfigurationManager.AppSettings["ServiceBusConnectionString"];

    // name of your Service Bus queue
    string queueName = "melonqueue";

    // Create a ServiceBusClient object using the connection string to the namespace.
    await using var client = new ServiceBusClient(connectionString);

    // Create a ServiceBusSender object by invoking the CreateSender method on the ServiceBusClient object, and specifying the queue name. 
    ServiceBusSender sender = client.CreateSender(queueName);

    using ServiceBusMessageBatch messageBatch = await sender.CreateMessageBatchAsync();

        for (int i = 1; i <= 2000; i++)
        {
            // try adding a message to the batch
            if (!messageBatch.TryAddMessage(new ServiceBusMessage($"Message {i}")))
            {
                // if it is too large for the batch
                throw new Exception($"The message {i} is too large to fit in the batch.");
            }
        }

        try
        {
            // Use the producer client to send the batch of messages to the Service Bus queue
            await sender.SendMessagesAsync(messageBatch);
            Console.WriteLine($"A batch of {2000} messages has been published to the queue.");
        }
        finally
        {
            // Calling DisposeAsync on client types is required to ensure that network
            // resources and other unmanaged objects are properly cleaned up.
            await sender.DisposeAsync();
            await client.DisposeAsync();
        }


Console.WriteLine("Peace !");
Console.ReadKey();