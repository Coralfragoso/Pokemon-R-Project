# Pokemon-R-Project
Pokemon dataset analysis in R: summary statistics, histograms, boxplots, Shapiro-Wilk normality tests for BaseDefense/BaseAttack. Compare heavy vs light Pokemon BaseAttack with 92.6% CI. Create 95.2% CI for Kanto proportion. Conduct hypothesis test (α=6.4%) if mean BaseDefense > 65.


Dataset Variables

    Number: Identification number
    
    Name: English Pokemon name
    
    Region: Kanto, Johto, or Hoenn
    
    BaseAttack: Physical attack strength
    
    BaseDefense: Resistance to physical attacks
    
    TotalBaseStats: Sum of all base stats
    
    Weight_kg: Weight in kilograms

Tasks Performed

    Descriptive Statistics (Tasks 2-3)
      Summary statistics (min, Q1, median, mean, Q3, max)
      
      Variance and standard deviation
      
      Inter-quartile range (IQR)
      
      Comparison of mean vs median, SD vs IQR
      
    Visualizations (Tasks 4-5)
      Histogram: BaseDefense with breaks at 20-unit intervals (0-250 range)
      
      Boxplot: BaseDefense with title, outliers detection
      
    Normality Testing (Tasks 6-7)
      Shapiro-Wilk tests for BaseDefense and BaseAttack
      
      P-value comparison (threshold: 0.022)
      
      Consistency check with histogram visualizations
    
    Confidence Intervals (Tasks 8-9)
      Task 8: 92.6% CI for mean BaseAttack difference between heavy (≥50kg) and light (<50kg) Pokemon, assuming equal variances
      
      Task 9: 95.2% CI for proportion of Kanto region Pokemon using large-sample method
    
    Hypothesis Testing (Task 10)
      Test if population mean BaseDefense > 65 at 6.4% significance level
      
      Includes test statistic, p-value, decision, and conclusion
      
      Critical region calculation for verification

Requirements

    R workspace: PokemonSample381_Workspace_v3.RData
    
    Built-in R functions for all statistical tests
    
    Proper code documentation and result interpretation
    
    Graphs saved and submitted with analysis

Key Statistical Concepts

    Summary statistics and dispersion measures
    
    Normality assessment (visual and test-based)
    
    Two-sample t-confidence intervals
    
    Proportion confidence intervals
    
    One-tailed hypothesis testing
    
    Critical values vs p-value approaches
