require "depreciationCalculator/version"
module DepreciationCalculator
	def self.calculateDepreciatedValue(age,mileage,tyre,owner,price)
		age_dep = [100,75,65,60,50,45,35,28,22,20,18,15,12,10,8,8,7,7,6,6,5]
		kms_dep = [100,80,75,70,67,65,60,55,53,50,48,44,40,36,34,30,28,26,24,22,20,19,18,17,16,15,14,13,12,11,10]
		tyre_cond = [100,60,30]
		owners = [100,80,75,70,65]
		@estimated_value = ((age_dep[age].to_i * 0.5) + (kms_dep[mileage].to_i * 0.3) + (tyre_cond[tyre].to_i * 0.05) + (owners[owner].to_i * 0.15)) * price.to_i * 0.01
		return @estimated_value
	end
end