using System;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;

namespace local_af_queue_keda
{
    public class QueueFunction
    {
        private readonly ILogger _logger;

        public QueueFunction(ILoggerFactory loggerFactory)
        {
            _logger = loggerFactory.CreateLogger<QueueFunction>();
        }

        [Function("QueueFunction")]
        public void Run([QueueTrigger("functions-queue", Connection = "StorageConnectionAppSetting")] string myQueueItem)
        {
            _logger.LogInformation($"Hello Geeks start ! ");
            _logger.LogInformation($"C# Queue trigger function processed: {myQueueItem}");         
            _logger.LogInformation($"Hello Geeks end ! ");
        }
    }
}
