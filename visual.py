import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
data=pd.read_excel("dannye.xlsx")
high=pd.read_excel("high.xlsx")
low=pd.read_excel("low.xlsx")
medium=pd.read_excel("medium.xlsx")
sns.displot(high, x="ir_value", bins=19,)
sns.displot(medium, x="ir_value", bins=19)
sns.displot(low, x="ir_value", bins=19)

sns.displot(high, x="ir_strength", bins=19)
sns.displot(medium, x="ir_strength", bins=19)
sns.displot(low, x="ir_strength", bins=19)

sns.displot(high, x="us_value", bins=19)
sns.displot(medium, x="us_value", bins=19)
sns.displot(low, x="us_value", bins=19)

sns.displot(high, x="angle", bins=19)
sns.displot(medium, x="angle", bins=19)
sns.displot(low, x="angle", bins=19)

sns.displot(high, x="angle", bins=19)
plt.show()