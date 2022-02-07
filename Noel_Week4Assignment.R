#The following data was collected by the local hospital.

#This data set contains 5 variables based on the observation of 8 patients. 

#In addition to the measurements of the patients checking in to the hospital that night, 
#this data provides the patients' histories regarding the frequency of their visits to the hospital in the last 12 months.

#This data displays the measurement of blood pressure, first assessment by a general doctor
#(bad=1, good =0) titled "first," the second assessment by an external doctor (called "second"),
#and the last row provides the head of the emergency unit's decision regarding immediate care
#for the patient based on the values 0 or 1 (low = 0, high =1).



Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bloodp <- c(103,87,32,42,59,109,78,205,135,176)
first_assessment <- c(1,1,1,1,0,0,0,0,NA,1)
second_assessment <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)


hostpitalData <- data.frame(Freq,bloodp,first_assessment,second_assessment,finaldecision)
hostpitalData

bp1 <- boxplot(bloodp ~ first_assessment, hostpitalData, #Hospital boxplot data
        main = "First Assement by Gen Doctors",
        xlab = "First Assesment",
        ylab = "Blood Pressure",
        col = c("blue","red")
        )

bp2 <- boxplot(bloodp ~ second_assessment, hostpitalData,
               main = "Second Assement by External Doctors",
               xlab = "Second Assesment",
               ylab = "Blood Pressure",
               col = c("blue","red")
)


bp3 <- boxplot(bloodp ~ finaldecision, hostpitalData,
               main = "Final Assement by Head Emergency Unit",
               xlab = "Final Assesment",
               ylab = "Blood Pressure",
               col = c("blue","red")
)


HospitalHisto <- hist(hostpitalData$bloodp, #Hostpital Histogram Bloodpressure
                      main = "Hospital bloodpresure",
                      xlab = "Blood presure",
                      ylab = "Hospital Frequency of visits",
                      col = c("blue","blue","red","red","red")
                      )
