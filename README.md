# AWS Data Lake Infrastructure with Terraform

This repository contains the **Infrastructure as Code (IaC)** to deploy a foundational Data Lake structure on AWS using Terraform. This project was developed as part of my Data Engineering studies, focusing on cloud best practices and automated provisioning.

## 🚀 Overview

The project automates the creation of a secure and organized S3 Bucket, simulating a professional Data Lake environment with the following features:

* **S3 Bucket Creation:** A globally unique bucket to store data.
* **Data Lake Layering:** Pre-defined folders for `raw/` (Bronze) and `refined/` (Silver) data layers.
* **Versioning:** Enabled to protect against accidental data loss or overwrites.
* **Public Access Block:** Strict security settings to prevent unauthorized public access (Security Best Practice).
* **Tags:** Organized by Environment and Project for FinOps and resource tracking.

## 🛠️ Tech Stack

* **Cloud Provider:** AWS (Amazon Web Services)
* **IaC Tool:** Terraform
* **Service:** Amazon S3

## 📋 Prerequisites

Before running this project, ensure you have:
1.  An **AWS Account**.
2.  **Terraform CLI** installed.
3.  **AWS CLI** configured with valid credentials (`aws configure`).

## 💻 How to Run

1.  **https://github.com/caio2313/AWS_BUCKET**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/AWS_BUCKET.git](https://github.com/YOUR_USERNAME/AWS_BUCKET.git)
    cd AWS_BUCKET
    ```

2.  **Initialize Terraform:**
    ```bash
    terraform init
    ```

3.  **Review the execution plan:**
    ```bash
    terraform plan
    ```

4.  **Deploy the infrastructure:**
    ```bash
    terraform apply
    ```

5.  **Clean up resources (Optional):**
    To avoid unnecessary costs, destroy the resources after testing:
    ```bash
    terraform destroy
    ```

## 🌍 Why this matters?

In a modern Data Engineering role, manual infrastructure setup is prone to errors. Using **Terraform** ensures that our Data Lake is:
* **Reproducible:** Can be recreated in seconds.
* **Versioned:** Infrastructure changes are tracked via Git.
* **Standardized:** Follows naming and security conventions required in European and Global tech companies.
