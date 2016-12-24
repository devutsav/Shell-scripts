#include<unistd.h>
#include<sys/types.h>
#include<stdio.h>

void main()
{
        pid_t pid1,pid3,pidd,pide;
         printf("process A (%d) \n",getpid());
        pid1 = fork();

	if(pid1==0)
           {
             
                printf("process B (%d) = %d\n",getpid(),getppid());
            
                pid3=fork();
                if(pid3==0) 
                {
                        //pid3=getpid();
                        printf("process D (%d) = %d\n",getpid(),getppid());
                     
                }
                else{
                        
               
                        printf("process B (%d) = %d\n",getpid(),getppid());
			pide=fork();			
			
			if(pide==0)
			{
				 printf("process E (%d) = %d\n",getpid(),getppid());
			}
			else
			{
				 printf("process B (%d) = %d\n",getpid(),getppid());
                        }
                }       
                
        }
        else
        {
        
                pidd=fork();
		
		printf("process A (%d) \n",getpid());
		if(pidd==0)
		{
                	printf("process C (%d) = %d\n",getpid(),getppid());
		}
                else
		{
                	printf("process A (%d) = %d\n",getpid(),getppid());
                }
                
        }
        
}
