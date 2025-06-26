.class public Lorg/apache/commons/text/similarity/LevenshteinResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deleteCount:Ljava/lang/Integer;

.field private final distance:Ljava/lang/Integer;

.field private final insertCount:Ljava/lang/Integer;

.field private final substituteCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    .line 5
    iput-object p4, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/commons/text/similarity/LevenshteinResults;

    .line 3
    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iget-object v3, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDeleteCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInsertCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubstituteCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Distance: "

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Insert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Substitute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
