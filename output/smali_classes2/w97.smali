.class public Lw97;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw97$a;
    }
.end annotation


# instance fields
.field public final a:Lp97;

.field public final b:Lma7;

.field public c:I

.field public final d:Lw97$a;


# direct methods
.method public constructor <init>(Lp97;Lma7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transport"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw97;->a:Lp97;

    const-string p1, "frameWriter"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lw97;->b:Lma7;

    const p1, 0xffff

    .line 4
    iput p1, p0, Lw97;->c:I

    .line 5
    new-instance p2, Lw97$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lw97$a;-><init>(Lw97;II)V

    iput-object p2, p0, Lw97;->d:Lw97$a;

    return-void
.end method


# virtual methods
.method public a(ZILxs7;Z)V
    .locals 7

    const-string v0, "source"

    .line 1
    invoke-static {p3, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lw97;->a:Lp97;

    invoke-virtual {v0, p2}, Lp97;->p(I)Lo97;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lw97;->d(Lo97;)Lw97$a;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lw97$a;->c()I

    move-result v0

    .line 5
    iget-object v1, p2, Lw97$a;->a:Lxs7;

    .line 6
    iget-wide v1, v1, Lxs7;->f:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-wide v2, p3, Lxs7;->f:J

    long-to-int v3, v2

    if-nez v1, :cond_2

    if-lt v0, v3, :cond_2

    .line 8
    invoke-virtual {p2, p3, v3, p1}, Lw97$a;->d(Lxs7;IZ)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p2, p3, v0, v5}, Lw97$a;->d(Lxs7;IZ)V

    .line 10
    :cond_3
    iget-wide v0, p3, Lxs7;->f:J

    long-to-int v1, v0

    .line 11
    iget-object v0, p2, Lw97$a;->a:Lxs7;

    int-to-long v1, v1

    invoke-virtual {v0, p3, v1, v2}, Lxs7;->write(Lxs7;J)V

    .line 12
    iget-boolean p3, p2, Lw97$a;->f:Z

    or-int/2addr p1, p3

    iput-boolean p1, p2, Lw97$a;->f:Z

    :goto_1
    if-eqz p4, :cond_4

    .line 13
    invoke-virtual {p0}, Lw97;->b()V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lw97;->b:Lma7;

    invoke-interface {v0}, Lma7;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c(I)Z
    .locals 7

    if-ltz p1, :cond_3

    .line 1
    iget v0, p0, Lw97;->c:I

    sub-int v0, p1, v0

    .line 2
    iput p1, p0, Lw97;->c:I

    .line 3
    iget-object p1, p0, Lw97;->a:Lp97;

    invoke-virtual {p1}, Lp97;->l()[Lo97;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    iget-object v5, v4, Lo97;->k:Ljava/lang/Object;

    .line 5
    check-cast v5, Lw97$a;

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Lw97$a;

    iget v6, p0, Lw97;->c:I

    invoke-direct {v5, p0, v4, v6}, Lw97$a;-><init>(Lw97;Lo97;I)V

    .line 7
    iput-object v5, v4, Lo97;->k:Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v5, v0}, Lw97$a;->a(I)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid initial window size: "

    invoke-static {v1, p1}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lo97;)Lw97$a;
    .locals 2

    .line 1
    iget-object v0, p1, Lo97;->k:Ljava/lang/Object;

    .line 2
    check-cast v0, Lw97$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lw97$a;

    iget v1, p0, Lw97;->c:I

    invoke-direct {v0, p0, p1, v1}, Lw97$a;-><init>(Lw97;Lo97;I)V

    .line 4
    iput-object v0, p1, Lo97;->k:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public e(Lo97;I)I
    .locals 12

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lw97;->d:Lw97$a;

    invoke-virtual {p1, p2}, Lw97$a;->a(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lw97;->f()V

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lw97;->d(Lo97;)Lw97$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lw97$a;->a(I)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lw97$a;->c()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lw97$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    iget-object v5, p1, Lw97$a;->a:Lxs7;

    .line 8
    iget-wide v6, v5, Lxs7;->f:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    if-lez v11, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_3

    if-lez v1, :cond_3

    int-to-long v8, v1

    cmp-long v10, v8, v6

    if-ltz v10, :cond_2

    long-to-int v1, v6

    add-int/2addr v4, v1

    .line 9
    iget-boolean v6, p1, Lw97$a;->f:Z

    invoke-virtual {p1, v5, v1, v6}, Lw97$a;->d(Lxs7;IZ)V

    goto :goto_2

    :cond_2
    add-int/2addr v4, v1

    .line 10
    invoke-virtual {p1, v5, v1, v2}, Lw97$a;->d(Lxs7;IZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    sub-int v1, v0, v4

    .line 11
    invoke-virtual {p1}, Lw97$a;->c()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {p0}, Lw97;->b()V

    :cond_5
    move p1, p2

    :goto_3
    return p1
.end method

.method public f()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lw97;->a:Lp97;

    invoke-virtual {v1}, Lp97;->l()[Lo97;

    move-result-object v1

    .line 2
    iget-object v2, v0, Lw97;->d:Lw97$a;

    .line 3
    iget v2, v2, Lw97$a;->c:I

    .line 4
    array-length v3, v1

    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-lez v2, :cond_3

    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    if-lez v2, :cond_2

    .line 6
    aget-object v7, v1, v6

    .line 7
    invoke-virtual {v0, v7}, Lw97;->d(Lo97;)Lw97$a;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Lw97$a;->b()I

    move-result v9

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lez v9, :cond_0

    .line 9
    iget v10, v8, Lw97$a;->d:I

    add-int/2addr v10, v9

    iput v10, v8, Lw97$a;->d:I

    sub-int/2addr v2, v9

    .line 10
    :cond_0
    invoke-virtual {v8}, Lw97$a;->b()I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v8, v4, 0x1

    .line 11
    aput-object v7, v1, v4

    move v4, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, v0, Lw97;->a:Lp97;

    invoke-virtual {v1}, Lp97;->l()[Lo97;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-ge v3, v2, :cond_7

    aget-object v7, v1, v3

    .line 13
    invoke-virtual {v0, v7}, Lw97;->d(Lo97;)Lw97$a;

    move-result-object v7

    .line 14
    iget v8, v7, Lw97$a;->d:I

    .line 15
    invoke-virtual {v7}, Lw97$a;->c()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    .line 16
    :goto_3
    iget-object v11, v7, Lw97$a;->a:Lxs7;

    .line 17
    iget-wide v12, v11, Lxs7;->f:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_6

    if-lez v9, :cond_6

    int-to-long v14, v9

    cmp-long v16, v14, v12

    if-ltz v16, :cond_5

    long-to-int v9, v12

    add-int/2addr v10, v9

    .line 18
    iget-boolean v12, v7, Lw97$a;->f:Z

    invoke-virtual {v7, v11, v9, v12}, Lw97$a;->d(Lxs7;IZ)V

    goto :goto_5

    :cond_5
    add-int/2addr v10, v9

    .line 19
    invoke-virtual {v7, v11, v9, v4}, Lw97$a;->d(Lxs7;IZ)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    sub-int v9, v8, v10

    .line 20
    invoke-virtual {v7}, Lw97$a;->c()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_3

    .line 21
    :cond_6
    iput v4, v7, Lw97$a;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-lez v5, :cond_8

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_9

    .line 22
    invoke-virtual/range {p0 .. p0}, Lw97;->b()V

    :cond_9
    return-void
.end method
