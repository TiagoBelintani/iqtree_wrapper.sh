# iqtree_wrapper.sh

Script Description: IQ-TREE Wrapper Script

This Bash script acts as a wrapper for IQ-TREE, facilitating the batch processing of multiple protein sequence files for phylogenetic tree construction. The script takes as input a directory containing protein sequences in FASTA format and an output directory to save the IQ-TREE results.

Usage:

bash
Copy code
bash script_name.sh input_directory output_directory
Arguments:

input_directory: The directory containing input protein sequence files in FASTA format.
output_directory: The directory where IQ-TREE results will be saved.
How to Use:

Place the script (script_name.sh) in the directory where you want to run the IQ-TREE analysis.
Open a terminal in the directory containing the script.
Execute the script by providing the input and output directories as arguments.
Example:

bash
Copy code

bash iqtree_wrapper.sh /path/to/input_sequences /path/to/output_results

Script Functionality:

Checks if the correct number of arguments (input and output directories) is provided. If not, it displays a usage message and exits.
Creates the output directory if it doesn't already exist.
Sets the number of threads (num_threads) to be used by IQ-TREE.
Iterates over all .fa files in the input directory.
For each file, executes IQ-TREE with specified parameters, including the number of threads and bootstrap replicates.
Saves the resulting phylogenetic tree files with a prefix in the specified output directory.
This script streamlines the process of running IQ-TREE on multiple protein sequence files, allowing for efficient and organized tree construction for phylogenetic analysis.
