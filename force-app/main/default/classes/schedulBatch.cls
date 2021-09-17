global class schedulBatch implements schedulable
{
    global void execute(SchedulableContext sc)
    {
    batchExample  b = new batchExample(); //ur batch class
      database.executebatch(b);
    }
}