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

* ## 📸 Evidence

Here is the provisioned infrastructure in the AWS Console:

![AWS S3 Data lake Created](https://private-user-images.githubusercontent.com/118941717/567444349-591e8f9c-f840-46cd-9d47-b7de8ddc60b1.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzQyMDY4NDMsIm5iZiI6MTc3NDIwNjU0MywicGF0aCI6Ii8xMTg5NDE3MTcvNTY3NDQ0MzQ5LTU5MWU4ZjljLWY4NDAtNDZjZC05ZDQ3LWI3ZGU4ZGRjNjBiMS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzIyJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMyMlQxOTA5MDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT04NDVkMjM2ZDk1NzI3ODJhNjc1Y2UyMTdjY2UyM2Q1MTJkNmVhMzA2NWM1YmQxYjk2MTEyMDdiMmExMGI4Y2Y0JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.LpFZfrF2H8kXh7wGUrjDxsa0-C-jtj1ALxF2oz7NlNE)
![AWS S3 Data Lake Layers](https://private-user-images.githubusercontent.com/118941717/567444504-395d68c1-ead9-4a90-8767-b59234c33f2a.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzQyMDY5NTUsIm5iZiI6MTc3NDIwNjY1NSwicGF0aCI6Ii8xMTg5NDE3MTcvNTY3NDQ0NTA0LTM5NWQ2OGMxLWVhZDktNGE5MC04NzY3LWI1OTIzNGMzM2YyYS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzIyJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMyMlQxOTEwNTVaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lMTlkMDliNzdkZWQ0YThlMDhlZWI2OWUyMDAzMzMwNTNkNzk5ZDE3YTdiMzQzZTEwYzlkYzEwZDAyZDkzNjY4JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.tW2Ul9v8lbgF80VGAfCQ89uuuT6J8yY4hixXC5bxBVw)
*The image above shows the `raw/` and `refined/` folders created via Terraform.*
