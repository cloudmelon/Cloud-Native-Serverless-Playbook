using System;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;

namespace local_af_inproc_queue_keda
{
    public class QueueFunction
    {
        [FunctionName("QueueFunction")]
        public static void Run([QueueTrigger("functions-queue", Connection = "AzureWebJobsStorage")] string myQueueItem, ILogger _logger)
        {
            _logger.LogInformation($"Hello Geeks start ! ");



            _logger.LogInformation($"C# function processed: {myQueueItem}");
            _logger.LogInformation($"Hello Geeks end ! ");

        }
    }
}
