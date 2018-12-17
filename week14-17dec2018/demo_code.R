
library(Seurat)
sessionInfo()

# https://satijalab.org/seurat/install.html

f <- "https://s3-us-west-2.amazonaws.com/10x.files/samples/cell/pbmc3k/pbmc3k_filtered_gene_bc_matrices.tar.gz"
basename(f)

dir.create("data")

download.file(f, file.path("data", basename(f)))

untar( file.path("data", basename(f)), exdir = "data")

d <- Read10X("data/filtered_gene_bc_matrices/hg19/")

object.size(d)/1024/1024
object.size(as.matrix(d))/1024/1024

so <- CreateSeuratObject(counts=d, min.cells = 5, 
                         min.features = 100)
so

library(ggplot2)

ggplot(so@meta.data, aes(x=nCount_RNA, y=nFeature_RNA)) + 
  geom_point() + geom_density_2d(colour="white")

mitos <- grep("^MT-", rownames(so), value=TRUE)

cnts <- so@assays$RNA

colSums(cnts)
mito_sum <- Matrix::colSums(cnts[mitos,])
full_sum <- Matrix::colSums(cnts)

prop.mito <- mito_sum / full_sum
head(prop.mito)

so <- AddMetaData(so, metadata = prop.mito, 
                  col.name = "prop.mito")

head(so@meta.data)


ggplot(so@meta.data, aes(x=nCount_RNA, y=prop.mito)) + 
  geom_point() + geom_density_2d(colour="white")


so <- subset(so, prop.mito < .05  & nCount_RNA > 400 &
               nCount_RNA < 4500)

so <- NormalizeData(so)

so <- FindVariableFeatures(so, nfeatures = 1000)

VariableFeaturePlot(so) + geom_density2d()

so <- ScaleData(so, vars.to.regress = "nCount_RNA")

so <- RunPCA(so, npcs = 20)
ElbowPlot(so)

so <- RunTSNE(so)

DimPlot(so, reduction = 'tsne')

so <- FindNeighbors(so)
so <- FindClusters(so, resolution = 1)

DimPlot(so, reduction = 'tsne')

markers <- FindAllMarkers(so, min.pct = .3, 
                          logfc.threshold = .5, 
                          min.diff.pct = .3)

FeaturePlot(so, features=c("CD3D", "LDHB", "CCR7", "S100A9"))
head(markers)







