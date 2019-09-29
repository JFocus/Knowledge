import numpy as np
import matplotlib.pyplot as plt

if __name__=="__main__":
    Data = np.loadtxt('CACode.txt')
    print(Data.shape)
   # Corr = np.zeros(1023)
   # for i in range(0,1023):
   #     for j in range(0,1023):
   #         Corr[i] = Data[i] * Data[i+j];
   #     Corr[i] = Corr[i]/1023
    plt.suptitle('CA code')
    plt.xlabel('n')
    plt.ylabel('magnitude')
    plt.axis([0,1024,-2,2])
    plt.plot(Data)
    plt.show()
    
