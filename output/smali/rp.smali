.class public final Lrp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Lrp;

.field public d:Lqp;

.field public e:Lrp;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lrp;Lqp;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrp;->c:Lrp;

    .line 3
    iput-object p2, p0, Lrp;->d:Lqp;

    .line 4
    iput p3, p0, Lrp;->a:I

    .line 5
    iput p4, p0, Lrp;->g:I

    .line 6
    iput p5, p0, Lrp;->h:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lrp;->b:I

    return-void
.end method


# virtual methods
.method public a(II)Lrp;
    .locals 7

    .line 1
    iget-object v0, p0, Lrp;->e:Lrp;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lrp;

    iget-object v1, p0, Lrp;->d:Lqp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lqp;

    iget-object v1, v1, Lqp;->a:Ljava/lang/Object;

    invoke-direct {v2, v1}, Lqp;-><init>(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lrp;-><init>(Lrp;Lqp;III)V

    iput-object v0, p0, Lrp;->e:Lrp;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lrp;->e(III)V

    :goto_1
    return-object v0
.end method

.method public b(II)Lrp;
    .locals 7

    .line 1
    iget-object v0, p0, Lrp;->e:Lrp;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lrp;

    iget-object v1, p0, Lrp;->d:Lqp;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Lqp;

    iget-object v1, v1, Lqp;->a:Ljava/lang/Object;

    invoke-direct {v2, v1}, Lqp;-><init>(Ljava/lang/Object;)V

    move-object v3, v2

    :goto_0
    const/4 v4, 0x2

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lrp;-><init>(Lrp;Lqp;III)V

    iput-object v0, p0, Lrp;->e:Lrp;

    return-object v0

    :cond_1
    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Lrp;->e(III)V

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lrp;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget v0, p0, Lrp;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(III)V
    .locals 0

    .line 1
    iput p1, p0, Lrp;->a:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lrp;->b:I

    .line 3
    iput p2, p0, Lrp;->g:I

    .line 4
    iput p3, p0, Lrp;->h:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lrp;->f:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lrp;->d:Lqp;

    if-eqz p2, :cond_0

    .line 7
    iput-object p1, p2, Lqp;->b:Ljava/lang/String;

    .line 8
    iput-object p1, p2, Lqp;->c:Ljava/lang/String;

    .line 9
    iput-object p1, p2, Lqp;->d:Ljava/util/HashSet;

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lrp;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "?"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    goto :goto_0

    :cond_1
    const-string v0, "Array"

    goto :goto_0

    :cond_2
    const-string v0, "root"

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget v1, p0, Lrp;->a:I

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lrp;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/16 v3, 0x22

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    sget-object v4, Lkp;->f:[I

    .line 7
    array-length v5, v4

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    if-ge v2, v6, :cond_3

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ge v7, v5, :cond_2

    .line 10
    aget v8, v4, v7

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/16 v8, 0x5c

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    aget v8, v4, v7

    if-gez v8, :cond_1

    const/16 v8, 0x75

    .line 13
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x30

    .line 14
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget-object v8, Lkp;->a:[C

    shr-int/lit8 v9, v7, 0x4

    aget-char v9, v8, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v7, 0xf

    .line 17
    aget-char v7, v8, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    int-to-char v7, v8

    .line 18
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/16 v1, 0x3f

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v1, 0x7d

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const/16 v1, 0x5b

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lrp;->b:I

    if-gez v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    .line 25
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    const-string v1, "/"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
