for(CronTrigger each : [select id from CronTrigger] )
{
   System.abortJob(each.id);
}