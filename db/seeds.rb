condition_seeds = [
    {condition_name: 'Cancer', description: 'A disease in which abnormal cells divide uncontrollably and destroy body tissue.'},
    {condition_name: 'Flu', description: 'A common viral infection that can be deadly, especially in high-risk groups.'},
    {condition_name: 'Heart attack', description: 'A blockage of blood flow to the heart muscle.'},
    {condition_name: 'Anemia', description: 'A condition_name in which the blood doesn\'t have enough healthy red blood cells.'},
    {condition_name: 'Atherosclerosis', description: 'The build-up of fats, cholesterol, and other substances in and on the artery walls.'},
    {condition_name: 'Multiple Sclerosis', description: 'A disease in which the immune system eats away at the protective covering of nerves.'},
    {condition_name: 'Acne', description: 'A skin condition_name that occurs when hair follicles plug with oil and dead skin cells.'},
    {condition_name: 'Alzheimer\'s disease', description: 'A progressive disease that destroys memory and other important mental functions.'},
    {condition_name: 'Ulcers', description: 'A sore that develops on the lining of the esophagus, stomach, or small intestine.'},
    {condition_name: 'Diabetes', description: 'A group of diseases that result in too much sugar in the blood, or high blood glucose.'},
    {condition_name: 'Blood Pressure', description: 'A condition_name in which the force of the blood against the artery walls is too high.'}
]

ingredient_seeds = [
    {ingredient_name: 'Monosodium Glutamate', description: 'Monosodium glutamate is the sodium salt of glutamic acid'},
    {ingredient_name: 'High-Fructose Corn Syrup', description: 'High fructose corn syrup is made from corn starch that has been processed by glucose isomerase to convert some of its glucose into fructose'},
    {ingredient_name: 'Milk', description: 'A white liquid produced by the mammary glands of mammals'},
    {ingredient_name: 'Salt', description: 'Common salt is a mineral composed primarily of sodium chloride, a chemical compound belonging to the larger class of salts'},
    {ingredient_name: 'Cumin', description: 'Cumin is a flowering plant in the family Apiaceae, native from the east Mediterranean to India'},
    {ingredient_name: 'Coffee', description: 'Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant'},
    {ingredient_name: 'Sugar', description: 'Sugar is a carbohydrate that is present naturally in fruits and vegetables'},
    {ingredient_name: 'Hydrogenated Oil', description: 'Hydrogenated oil is oil in which the essential fatty acids have been converted to a different form chemically, which has several effects'},
    {ingredient_name: 'Black Pepper', description: 'Black pepper is a flowering vine in the family Piperaceae, cultivated for its fruit, which is usually dried and used as a spice and seasoning'},
    {ingredient_name: 'Paprika', description: 'Paprika is a spice made from air-dried fruits of the chili pepper family of the species Capsicum annuum.'}
]

code_seeds = [
    {code: 'Green', description: 'Can have it anytime'},
    {code: 'Red', description: 'Unsafe to have it anytime'},
    {code: 'Yellow', description: 'Can have these foods moderately'}
]

ActiveRecord::Base.connection.execute('TRUNCATE TABLE codes, conditions, ingredients RESTART IDENTITY')

Condition.delete_all
Ingredient.delete_all
Code.delete_all

condition_seeds.each { |cs| Condition.create(cs) }
ingredient_seeds.each { |is| Ingredient.create(is) }
code_seeds.each { |cs| Code.create(cs) }
