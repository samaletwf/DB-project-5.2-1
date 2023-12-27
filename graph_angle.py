import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import trim_mean

# Загрузка данных из файла CSV
data = pd.read_csv('water-level_turbidity-medium1.csv')

# Отфильтровать данные и оставить только значения water_level = 50.0
filtered_data = data[(data['angle'] == 10.0) & (data['water_level'] == 350.0)]
print(filtered_data)
# Вычисление усредненного значения без учета выбросов в столбце ir_value
trimmed_mean_ir_value = trim_mean(filtered_data['ir_value'], proportiontocut=0.1)

# Вычисление усредненного значения без учета выбросов в столбце us_value
trimmed_mean_us_value = trim_mean(filtered_data['us_value'], proportiontocut=0.1)

# Создание первого графика рассеяния для ir_value и water_level
plt.subplot(121)
plt.scatter(filtered_data['ir_value'], filtered_data['angle'], s=2)
plt.title('IR Value vs Angle (Angle = 10.0, WL = 350)')
plt.xlabel('IR Value')
plt.ylabel('Angle')

# Добавление вертикальной линии, отображающей усредненное значение ir_value без учета выбросов
plt.subplot(121)
plt.axvline(trimmed_mean_ir_value, color='r', linestyle='--', label='Trimmed Mean IR Value')
plt.legend()

# Добавление метки с усредненным значением ir_value
plt.subplot(121)
plt.text(0.03, 0.95, f'Trimmed Mean IR Value: {trimmed_mean_ir_value:.2f}', transform=plt.gca().transAxes, fontsize=10, va='top')

# Создание второго графика рассеяния для us_value и water_level
plt.subplot(122)
plt.scatter(filtered_data['us_value'], filtered_data['angle'], s=2)
plt.title('US Value vs Angle (Angle = 10.0, WL = 350)')
plt.xlabel('US Value')
plt.ylabel('Angle')

# Добавление вертикальной линии, отображающей усредненное значение us_value без учета выбросов
plt.subplot(122)
plt.axvline(trimmed_mean_us_value, color='r', linestyle='--', label='Trimmed Mean US Value')
plt.legend()

# Добавление метки с усредненным значением us_value
plt.subplot(122)
plt.text(0.03, 0.95, f'Trimmed Mean US Value: {trimmed_mean_us_value:.2f}', transform=plt.gca().transAxes, fontsize=10, va='top')

plt.tight_layout()
plt.show()
