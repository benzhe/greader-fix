.class public final Lut5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldr5;

.field public final b:I

.field public final c:J

.field public final d:Lvs5;

.field public final e:Lju5;

.field public final f:Lju5;

.field public final g:Lqi6;


# direct methods
.method public constructor <init>(Ldr5;IJLvs5;)V
    .locals 9

    .line 12
    sget-object v7, Lju5;->f:Lju5;

    sget-object v8, Lzw5;->q:Lqi6;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, v7

    invoke-direct/range {v0 .. v8}, Lut5;-><init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V

    return-void
.end method

.method public constructor <init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lut5;->a:Ldr5;

    .line 4
    iput p2, p0, Lut5;->b:I

    .line 5
    iput-wide p3, p0, Lut5;->c:J

    .line 6
    iput-object p7, p0, Lut5;->f:Lju5;

    .line 7
    iput-object p5, p0, Lut5;->d:Lvs5;

    .line 8
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p6, p0, Lut5;->e:Lju5;

    .line 10
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object p8, p0, Lut5;->g:Lqi6;

    return-void
.end method


# virtual methods
.method public a(Lqi6;Lju5;)Lut5;
    .locals 10

    .line 1
    new-instance v9, Lut5;

    iget-object v1, p0, Lut5;->a:Ldr5;

    iget v2, p0, Lut5;->b:I

    iget-wide v3, p0, Lut5;->c:J

    iget-object v5, p0, Lut5;->d:Lvs5;

    iget-object v7, p0, Lut5;->f:Lju5;

    move-object v0, v9

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lut5;-><init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V

    return-object v9
.end method

.method public b(J)Lut5;
    .locals 10

    .line 1
    new-instance v9, Lut5;

    iget-object v1, p0, Lut5;->a:Ldr5;

    iget v2, p0, Lut5;->b:I

    iget-object v5, p0, Lut5;->d:Lvs5;

    iget-object v6, p0, Lut5;->e:Lju5;

    iget-object v7, p0, Lut5;->f:Lju5;

    iget-object v8, p0, Lut5;->g:Lqi6;

    move-object v0, v9

    move-wide v3, p1

    invoke-direct/range {v0 .. v8}, Lut5;-><init>(Ldr5;IJLvs5;Lju5;Lju5;Lqi6;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lut5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lut5;

    .line 3
    iget-object v2, p0, Lut5;->a:Ldr5;

    iget-object v3, p1, Lut5;->a:Ldr5;

    invoke-virtual {v2, v3}, Ldr5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lut5;->b:I

    iget v3, p1, Lut5;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lut5;->c:J

    iget-wide v4, p1, Lut5;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lut5;->d:Lvs5;

    iget-object v3, p1, Lut5;->d:Lvs5;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lut5;->e:Lju5;

    iget-object v3, p1, Lut5;->e:Lju5;

    .line 5
    invoke-virtual {v2, v3}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lut5;->f:Lju5;

    iget-object v3, p1, Lut5;->f:Lju5;

    .line 6
    invoke-virtual {v2, v3}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lut5;->g:Lqi6;

    iget-object p1, p1, Lut5;->g:Lqi6;

    .line 7
    invoke-virtual {v2, p1}, Lqi6;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lut5;->a:Ldr5;

    invoke-virtual {v0}, Ldr5;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lut5;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lut5;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lut5;->d:Lvs5;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lut5;->e:Lju5;

    invoke-virtual {v0}, Lju5;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lut5;->f:Lju5;

    invoke-virtual {v1}, Lju5;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lut5;->g:Lqi6;

    invoke-virtual {v0}, Lqi6;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TargetData{target="

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lut5;->a:Ldr5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lut5;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lut5;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lut5;->d:Lvs5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lut5;->e:Lju5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastLimboFreeSnapshotVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lut5;->f:Lju5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resumeToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lut5;->g:Lqi6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
