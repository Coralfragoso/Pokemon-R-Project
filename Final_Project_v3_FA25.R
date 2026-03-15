##### Final Project
##### Name: Coral Fragoso Herrera
##### Version Number: 3



## ***************************************************************************
## Task 1: Load workspace.  No code needed.  Follow directions on the PDF.

## ***************************************************************************
## Task 2: Summary Statistics for BaseDefense
	# a) Summary Stats Code and Results
  summary_Defense <- summary(BaseDefense)
  print(summary_Defense)
  
  # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  # 5.0    48.0    65.0    67.8    83.0   230.0
	
	# b) Variance Code and Results
  var_defense <- var(BaseDefense)
  print(var_defense)
  
  # 914.096

	# c) Standard Deviation Code and Results
  sd_defense <- sd(BaseDefense)
  print(sd_defense)
  
  # 30.23402

	# d) IQR Code and Results
  iqr_defense <-IQR(BaseDefense)
  print(iqr_defense)
  
  # 35

	# e) Mean / Median Comparison: 
  print(mean(BaseDefense))
  # 67.80412
  
  print(median(BaseDefense))
  # 65
  
  # The mean is greater than the median


	# f) SD / IQR comparison: 
  
  # The standard devation is less than the IQR
	
## ***************************************************************************
## Task 3: Summary Statistics for BaseAttack
	# a) Summary Stats Code and Results
  print(summary(BaseAttack))
  # Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  # 5.00   50.00   67.00   67.44   84.00  135.00 
	
	# b) Variance Code and Results
  print(var(BaseAttack))
  
  # 557.0614

	# c) Standard Deviation Code and Results
  print(sd(BaseAttack))
  
  # 23.60215

	# d) IQR Code and Results
  print(IQR(BaseAttack))
  
  # 34

	# e) Mean / Median Comparison: 
  
      # The mean is slightly greater than the median but approx. equal

	# f) SD / IQR comparison: 
  
      # The standard deviation is less than the IQR

## ***************************************************************************
## Task 4: Histogram for BaseDefense
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:
  hist(BaseDefense, breaks = seq(0,240, by = 20), include.lowest = TRUE, right = FALSE, xlim = c(0, 250), main = "Histogram of BaseDefense", xlab = "BaseDefense Values", ylab = "Frequency", col = "lightblue")

	# c) Describe histogram: relatively symmetric, skewed, or neither?
  
      # The histogram is relatively skewed to the right

	# c) Describe histogram: unimodal or bimodal or multimodal?
  
       # The histogram is unimodal

## ***************************************************************************
## Task 5: Boxplot for BaseDefense
	## Remember to save your plot and also submit it to Gradescope.

	# a) Code:
  boxplot(BaseDefense, main = "Boxplot of Base Defense", ylab = "BaseDefense Values", ylim= c(0,250), col = "lightgreen", border = "darkgreen", horizontal = TRUE)
	
	# c) Are there outliers present?
  Q1 <- quantile(BaseDefense, 0.25) 
  Q3 <- quantile(BaseDefense, 0.75)
  IQR_defense <- IQR(BaseDefense)
  
  lower <- Q1 - 1.5 * IQR_defense
  upper <- Q3 + 1.5 * IQR_defense
  outliers <- BaseDefense[BaseDefense < lower | BaseDefense > upper]
  # There are 6 outliers present
  print(sort(outliers))
  # 140 140 140 150 160 180 200 230
  
## ***************************************************************************
## Task 6: Shapiro-Wilk Test for BaseDefense using 0.022 as the cutoff
	# a) Code:
  shapiro_test_defense <- shapiro.test(BaseDefense)
  print(shapiro_test_defense)

	# b) Copy and paste results here
  
      # Shapiro-Wilk normality test
      
      # data:  BaseDefense
      # W = 0.92726, p-value = 1.004e-10

	# c) Do you think that your population is normally distributed?
  
  # The population is not normally distributed.

	# c) Reason: Since the pvalue is less than 0.022, there is enough evidence against normality (we reject the H0).

		
	# d) Does your decision here match what you are seeing with your histogram from Task 4? Why or why not?
  
  # Yes, my decision matches what I see in the histogram. In the histogram the population appears to be not normal with a skewed distribution to the right
  # and is confirmed with the small pvalue

## ***************************************************************************
## Task 7: Shapiro-Wilk Test for BaseAttack using 0.022 as the cutoff
	# a) Code:
  shapiro_test_attack <- shapiro.test(BaseAttack)
  print(shapiro_test_attack)
  
	# b) Copy and paste results here
  
      # Shapiro-Wilk normality test
      
      # data:  BaseAttack
      # W = 0.99619, p-value = 0.709

	# c) Do you think that your population is normally distributed? 
  
      # This population looks to be normally distributed

	# c) Reason: Since the pvalue (0.709) is greater than 0.022, the data appears to be normally distributed (fail to reject H0)
		
## ***************************************************************************
## Task 8: Compare average Base Attack for Pokemon whose Weight is heavy versus light. Create a confidence interval, assuming equal variances. (See PDF for CI to create.)

	# a) Code:
  ci_result <- t.test(heavy, light, var.equal = TRUE, conf.level =  0.926)
  print(ci_result)

	# b) Copy and paste results here
  
      # [1] 16.07754 25.87868
      # attr(,"conf.level")
      # [1] 0.926
      
	# c) State the parameter the confidence interval is for.
  
  # The confidence interval is for µHeavy − µLight which is the difference in population mean of BaseAttack between Heavy Pokemon (>= 50kg) and Light Pokemon (< 50kg)

	# d) Write down the confidence interval.
  
      # [16.07754, 25.87868]

	# e) Write an interpretation of your confidence interval.
  
  # We are 92.6% confident that the true difference in average Base Attack between Heavy and Light Pokemon is between 16.08 and 25.88 points.

	# f) We are interested in whether there is evidence that there is specific value difference between the two groups. (See PDF for more specifics.)
		# Does this value seem plausible (like it could happen)?
 
   # The value 16 is not plausible

		# Reason why or why not.
      # The value falls outside to the left of the 92.6% confidence interval

## ***************************************************************************
## Task 9: Create a confidence interval for the proportion of Pokemon from a certain Region. Counts of Pokemon per region and the total number of observations are given in the project PDF.


	# a) Check the success / failure condition.
		# Code (if needed):
  
  p_hat <- 119 / 291
  print(p_hat)
  expected_successes <- 291 * p_hat
  expected_failures <- 291 * (1 - p_hat)
  print(expected_successes)
  print(expected_failures)

		# Expected Number of Successes = 119
		# Expected Number of Failures = 172
		# Can we use the Normal Distribution to approximate this confidence interval?
  
        # Yes, both expected successes (119) and expected failures (172) are both above 5

	# b) Code for Confidence Interval:
  
  ci_result2 <- prop.test(119, 291, conf.level = 0.952, correct = FALSE)
  print(ci_result2)

	# c) Copy and paste results here
  # [1] 0.3535199 0.4667642
  # attr(,"conf.level")
  # [1] 0.952
  # 0.3535199 0.4667642

	# d) State the parameter the confidence interval is for.
  
      # p is for the true proportion of Pokemon from the Kanto region

	# e) Write down the confidence interval.
  
      # [0.3535199, 0.4667642]

## ***************************************************************************
## Task 10: Hypothesis Test for BaseDefense
	# a) Do you know sigma^2 (the population variance) or not?
  
      # No, we do not know sigma^2

	# a) Name the distribution you should use when performing this test.
  
      # t-distribution

	# b) What condition(s) must you satisfy to perform this test?
  
        # Random sample
        # Independence
        # Large sample or normality for CLT
            # n >= 30

	# c) State the hypotheses:
  
    		#H0: mu <= 65
    		#H1: mu > 65
	
	# d) Code:
  
  t_test_result <- t.test(BaseDefense, mu = 65, alternative = "greater", conf.level = 0.936)
	print(t_test_result)
	
	# e) Copy and paste results here
	
      	# One Sample t-test
      	
      	# data:  BaseDefense
      	# t = 1.5822, df = 290, p-value = 0.05735
      	# alternative hypothesis: true mean is greater than 65
      	# 93.6 percent confidence interval:
      	  # 65.09881      Inf
      	# sample estimates:
      	  # mean of x 
      	# 67.80412 

	# f) State the Test Statistic Value: 1.5822
	
	# g) State the P-Value: 0.05735
	
	# h) Decision from P-Value (see PDF for significance level):
	
	# if pvalue < 0.064, reject null hypothesis
	# if pvalue >= 0.064 do not reject null hypothesis (fail to reject)
  # Since 0.05735 < 0.064  we reject H0
	
	# i) Conclusion from P-Value:
	
	# There is sufficient evidence at 6.4% significance level to conclude that
	# the population mean BaseDefense is greater than 65
	
	# j) State the critical value. Provide your code and results.
	
	critical_value <- qt(1 - 0.064, df = 290)
	print(critical_value)
	
	# 1.526401

	# j) State the critical region.
	
	# Reject null hypothesis if t > 1.526401
	
	# k) Decision from Critical Region:
	
	# Reject null hypothesis if test statistic is greater than critical value
	# Do not reject null hypothesis if test statistic is <= critical value
	
	# Since 1.5822 > 1.526401, we reject the null hypothesis

	# k) Did you make the same decision based on the critical region that you did with your p-value? 
	# Yes, in both methods we reject the null hypothesis.

