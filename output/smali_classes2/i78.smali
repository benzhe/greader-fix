.class public final Li78;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Li78;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final e:Lq48;

.field public final f:La58;

.field public final g:La58;


# direct methods
.method public constructor <init>(JLa58;La58;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, v0, p3}, Lq48;->Z(JILa58;)Lq48;

    move-result-object p1

    iput-object p1, p0, Li78;->e:Lq48;

    .line 7
    iput-object p3, p0, Li78;->f:La58;

    .line 8
    iput-object p4, p0, Li78;->g:La58;

    return-void
.end method

.method public constructor <init>(Lq48;La58;La58;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li78;->e:Lq48;

    .line 3
    iput-object p2, p0, Li78;->f:La58;

    .line 4
    iput-object p3, p0, Li78;->g:La58;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lf78;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lf78;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Li78;

    .line 2
    invoke-virtual {p0}, Li78;->k()Lo48;

    move-result-object v0

    invoke-virtual {p1}, Li78;->k()Lo48;

    move-result-object p1

    .line 3
    iget-wide v1, v0, Lo48;->e:J

    iget-wide v3, p1, Lo48;->e:J

    invoke-static {v1, v2, v3, v4}, Lkt7;->d(JJ)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Lo48;->f:I

    iget p1, p1, Lo48;->f:I

    sub-int v1, v0, p1

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li78;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Li78;

    .line 3
    iget-object v1, p0, Li78;->e:Lq48;

    iget-object v3, p1, Li78;->e:Lq48;

    invoke-virtual {v1, v3}, Lq48;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li78;->f:La58;

    iget-object v3, p1, Li78;->f:La58;

    .line 4
    invoke-virtual {v1, v3}, La58;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li78;->g:La58;

    iget-object p1, p1, Li78;->g:La58;

    invoke-virtual {v1, p1}, La58;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Li78;->e:Lq48;

    invoke-virtual {v0}, Lq48;->hashCode()I

    move-result v0

    iget-object v1, p0, Li78;->f:La58;

    .line 2
    iget v1, v1, La58;->f:I

    xor-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Li78;->g:La58;

    .line 4
    iget v1, v1, La58;->f:I

    const/16 v2, 0x10

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lq48;
    .locals 3

    .line 1
    iget-object v0, p0, Li78;->e:Lq48;

    .line 2
    iget-object v1, p0, Li78;->g:La58;

    .line 3
    iget v1, v1, La58;->f:I

    .line 4
    iget-object v2, p0, Li78;->f:La58;

    .line 5
    iget v2, v2, La58;->f:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2}, Lq48;->d0(J)Lq48;

    move-result-object v0

    return-object v0
.end method

.method public k()Lo48;
    .locals 5

    .line 1
    iget-object v0, p0, Li78;->e:Lq48;

    iget-object v1, p0, Li78;->f:La58;

    .line 2
    invoke-virtual {v0, v1}, Lf58;->P(La58;)J

    move-result-wide v1

    .line 3
    iget-object v0, v0, Lq48;->f:Lr48;

    .line 4
    iget v0, v0, Lr48;->h:I

    int-to-long v3, v0

    .line 5
    invoke-static {v1, v2, v3, v4}, Lo48;->O(JJ)Lo48;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li78;->g:La58;

    .line 2
    iget v0, v0, La58;->f:I

    .line 3
    iget-object v1, p0, Li78;->f:La58;

    .line 4
    iget v1, v1, La58;->f:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Transition["

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Li78;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li78;->e:Lq48;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li78;->f:La58;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li78;->g:La58;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
