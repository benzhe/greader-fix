.class public Lorg/apache/commons/text/similarity/SimilarityScoreFrom;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/CharSequence;

.field private final similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/similarity/SimilarityScore;Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
            "TR;>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The edit distance may not be null."

    .line 2
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/text/similarity/SimilarityScore;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLeft()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->left:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSimilarityScore()Lorg/apache/commons/text/similarity/SimilarityScore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/text/similarity/SimilarityScore<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/SimilarityScoreFrom;->similarityScore:Lorg/apache/commons/text/similarity/SimilarityScore;

    return-object v0
.end method
