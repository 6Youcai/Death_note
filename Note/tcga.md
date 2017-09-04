# Overview
![](http://cancergenome.nih.gov/PublishedContent/Images/images/tcga-infographic-article.png)

# 33 types of cancer.
- [CANCER TISSUES COLLECTED FOR STUDY](http://cancergenome.nih.gov/cancersselected)
1. Breast
2. Central Nervous System
3. Endocrine
4. Gastrointestinal
5. Gynecologic
6. Head and Neck
7. Hematologic
8. Skin
9. Soft Tissue
10. Thoracic
11. Urologic

# 数据多样
- 临床数据、图像数据
- MSI数据、芯片数据、甲基化数据、拷贝数数据
- DNA测序数据、Total RNA测序数据、mRNA测序数据、miRNA测序数据
- 蛋白表达数据

# [样品要求](http://cancergenome.nih.gov/cancersselected/biospeccriteria)
> High Quality Requirements Yield High Quality Data
- ‘no platform left behind’, Biopsies could have not provided enough material (tissue) 
- more heterogeneous samples, at least 80 percent tumor nucle
- Neoadjuvant treatment was not allowable
- Sample from primary tumor was necessary
- Tumor samples were paired with a source of germline DNA
- Biospecimens were frozen

# How It Works
[pdf](http://cancergenome.nih.gov/PublishedContent/Files/pdfs/tcga_hiw.pdf)
1. Tissue Processing
2. Research and Discovery
3. Data Sharing
4. Community Research and Discovery

# 数据存储格式多样
- fastq, bam, vcf, txt, xml, ...
- pdf, svs, dcm, ...

# 数据受控
- Open Access Data Tier
  + De-identified clinical and demographic data
  + Anonymized single amplicon DNA sequence data
- Controlled Access Data Tier
  + Primary sequence data (BAM and FASTQ files)
  + SNP6 array level 1 and level 2 data
  + Exon array level 1 and level 2 data
  + VCFs
  + Certain information in MAFs

# 权限分级
1. Level 1
  + 原始数据
2. Level 2
  + 处理过的的数据
3. Level 3
  + 分割和解释的数据
4. Important Metadata
  + 感兴趣的区域或概要
  
[Details](http://cancergenome.nih.gov/abouttcga/aboutdata/datalevelstypes)

## Clinical Data
- Clinical data
- Biospecimen data
- Pathology Reports
## Images
- Diagnostic image
- Tissue image
- Radiological image
## Microsatellite Instability (MSI)
- only for COAD, READ, UCEC
## DNA Sequencing
- WGS
- WES
- Sequence traces
- Mutations
## miRNA Sequencing
- miRNA sequence
- miRNA
- Isoform
## Protein Expression
## mRNA Sequencing
- mRNA sequence
- Exon
- Gene
- Splice Junction
- Isoform
## Total RNA Sequencing
- mRNA Sequencing sequence
- Exon
- Gene
- Splice Junction
- Isoform
## Array-based Expression
- Gene
- Exon
- miRNA
## DNA Methylation
- Bisulfite sequencing
- Array based
## Copy Number
- SNP
- Array
- Low-Pass DNA Sequencing

# 部门
- TSS 组织来源点
  + 收集样本（组织，细胞，血液）和临床元数据
- BCR TCGA的样本中心
  + 在这里样本及其参与者的临床信息被小心地分类，处理，质量检验和存储
- GCC 基因组鉴定中心
  + 在这里用高通量技术来分析癌症基因组的改变。
- GSC 基因组测序中心
  + 在这里利用高通量方法去识别各种癌症的基因组序列中的改变
- DCC 数据整理中心
 + 是提供TCGA数据的核心。DCC对数据格式进行标准化并且验证提交的数据
- GDAC 基因组数据分析中心
  + 这里给研究团体提供了新颖的信息学工具和TCGA数据的分析结果
- CGHub 癌症基因组中心
  + 一个安全的数据库
- Project Team 协调TCGA的项目团队

# 流程
![Pipeline](http://cancergenome.nih.gov/PublishedContent/Images/newsevents/multimedialibrary/images/Pipeline_300dpi_686x777.jpg)
1. 组织样本及其临床数据是由TSS组织来源点收集的，然后送交给BCRs
2. BCRs提交临床数据和元数据到DCC数据整理中心，并把分析物送交给GCCs、GSCs，在这里生成突变信号并把信号提交到DCC。
3. GSCs同样也提交跟踪文件、序列和比对图到CGHub癌症基因组中心。
4. 被提交到DCC和CGHub的数据可供研究团体和GDACs基因组数据分析中西使用。
5. 分析渠道和GDACs产出的数据结果通过DCC对研究团体提供服务

# TCGA barcode, ID
[wiki](https://wiki.nci.nih.gov/display/TCGA/TCGA+barcode)
    example：TCGA-02-0001-01C-01D-0182-01
    TCGA:Project
    02:Tissue source site,brain tumor
    0001:The first participant from MD Anderson for GBM study
    01C:01=Sample type; C=Order of sample in a sequence of samples
    01D:01=The first portion of the sample; D=The analyte is a DNA sample
    0182:Order of plate in a sequence of 96-well plates
    01:Center

# [GDC](https://gdc-portal.nci.nih.gov/)
The Genomic Data Commons (GDC)


# ICGC
[international cancer genome consortium](http://icgc.org/)
[Committees and Working Groups](http://icgc.org/icgc/committees-and-working-groups)
[data](https://dcc.icgc.org/)


Beacon
http://ga4gh.org/#/beacon
