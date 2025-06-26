.class public Ld87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lg67;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld87$c;,
        Ld87$d;,
        Ld87$e;,
        Ld87$b;
    }
.end annotation


# instance fields
.field public e:Ld87$b;

.field public f:I

.field public final g:La97;

.field public final h:Lg97;

.field public i:Ln37;

.field public j:Lv67;

.field public k:[B

.field public l:I

.field public m:Ld87$e;

.field public n:I

.field public o:Z

.field public p:Lc67;

.field public q:Lc67;

.field public r:J

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public volatile w:Z


# direct methods
.method public constructor <init>(Ld87$b;Ln37;ILa97;Lg97;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ld87$e;->e:Ld87$e;

    iput-object v0, p0, Ld87;->m:Ld87$e;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Ld87;->n:I

    .line 4
    new-instance v0, Lc67;

    invoke-direct {v0}, Lc67;-><init>()V

    iput-object v0, p0, Ld87;->q:Lc67;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ld87;->s:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Ld87;->t:I

    .line 7
    iput-boolean v0, p0, Ld87;->v:Z

    .line 8
    iput-boolean v0, p0, Ld87;->w:Z

    const-string v0, "sink"

    .line 9
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld87;->e:Ld87$b;

    const-string p1, "decompressor"

    .line 10
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ld87;->i:Ln37;

    .line 11
    iput p3, p0, Ld87;->f:I

    const-string p1, "statsTraceCtx"

    .line 12
    invoke-static {p4, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Ld87;->g:La97;

    const-string p1, "transportTracer"

    .line 13
    invoke-static {p5, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Ld87;->h:Lg97;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Ld87;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld87;->s:Z

    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-boolean v2, p0, Ld87;->w:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Ld87;->r:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-virtual {p0}, Ld87;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Ld87;->m:Ld87$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ld87;->m()V

    .line 6
    iget-wide v2, p0, Ld87;->r:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld87;->r:J

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld87;->m:Ld87$e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ld87;->n()V

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean v0, p0, Ld87;->w:Z

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Ld87;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v1, p0, Ld87;->s:Z

    return-void

    .line 12
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Ld87;->v:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ld87;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Ld87;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_5
    iput-boolean v1, p0, Ld87;->s:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Ld87;->s:Z

    throw v0
.end method

.method public b(I)V
    .locals 4

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numMessages must be > 0"

    .line 1
    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ld87;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v0, p0, Ld87;->r:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld87;->r:J

    .line 4
    invoke-virtual {p0}, Ld87;->a()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Ld87;->f:I

    return-void
.end method

.method public close()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ld87;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ld87;->p:Lc67;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, v0, Lc67;->e:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 4
    :try_start_0
    iget-object v4, p0, Ld87;->j:Lv67;

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    .line 5
    iget-boolean v0, v4, Lv67;->m:Z

    xor-int/2addr v0, v1

    const-string v5, "GzipInflatingBuffer is closed"

    invoke-static {v0, v5}, Lc50;->G(ZLjava/lang/Object;)V

    .line 6
    iget-object v0, v4, Lv67;->g:Lv67$b;

    invoke-static {v0}, Lv67$b;->c(Lv67$b;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v4, Lv67;->l:Lv67$c;

    sget-object v4, Lv67$c;->e:Lv67$c;

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 7
    :cond_5
    :goto_3
    iget-object v0, p0, Ld87;->j:Lv67;

    invoke-virtual {v0}, Lv67;->close()V

    move v0, v1

    .line 8
    :cond_6
    iget-object v1, p0, Ld87;->q:Lc67;

    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {v1}, Lc67;->close()V

    .line 10
    :cond_7
    iget-object v1, p0, Ld87;->p:Lc67;

    if-eqz v1, :cond_8

    .line 11
    invoke-virtual {v1}, Lc67;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_8
    iput-object v3, p0, Ld87;->j:Lv67;

    .line 13
    iput-object v3, p0, Ld87;->q:Lc67;

    .line 14
    iput-object v3, p0, Ld87;->p:Lc67;

    .line 15
    iget-object v1, p0, Ld87;->e:Ld87$b;

    invoke-interface {v1, v0}, Ld87$b;->d(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 16
    iput-object v3, p0, Ld87;->j:Lv67;

    .line 17
    iput-object v3, p0, Ld87;->q:Lc67;

    .line 18
    iput-object v3, p0, Ld87;->p:Lc67;

    throw v0
.end method

.method public e(Lv67;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld87;->i:Ln37;

    sget-object v1, Lf37$b;->a:Lf37;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "per-message decompressor already set"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ld87;->j:Lv67;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "full stream decompressor already set"

    invoke-static {v2, v0}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v0, "Can\'t pass a null full stream decompressor"

    .line 3
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lv67;

    iput-object p1, p0, Ld87;->j:Lv67;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ld87;->q:Lc67;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld87;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ld87;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ld87;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ld87;->v:Z

    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ld87;->j:Lv67;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v2, v0, Lv67;->m:Z

    xor-int/2addr v1, v2

    const-string v2, "GzipInflatingBuffer is closed"

    invoke-static {v1, v2}, Lc50;->G(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v0, v0, Lv67;->s:Z

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Ld87;->q:Lc67;

    .line 5
    iget v0, v0, Lc67;->e:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i(Ln37;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld87;->j:Lv67;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already set full stream decompressor"

    invoke-static {v0, v1}, Lc50;->G(ZLjava/lang/Object;)V

    const-string v0, "Can\'t pass an empty decompressor"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ln37;

    iput-object p1, p0, Ld87;->i:Ln37;

    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld87;->q:Lc67;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld87;->j:Lv67;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ln87;)V
    .locals 5

    const-string v0, "data"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ld87;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Ld87;->v:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 3
    iget-object v2, p0, Ld87;->j:Lv67;

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v3, v2, Lv67;->m:Z

    xor-int/2addr v3, v1

    const-string v4, "GzipInflatingBuffer is closed"

    invoke-static {v3, v4}, Lc50;->G(ZLjava/lang/Object;)V

    .line 5
    iget-object v3, v2, Lv67;->e:Lc67;

    invoke-virtual {v3, p1}, Lc67;->b(Ln87;)V

    .line 6
    iput-boolean v0, v2, Lv67;->s:Z

    goto :goto_2

    .line 7
    :cond_2
    iget-object v2, p0, Ld87;->q:Lc67;

    invoke-virtual {v2, p1}, Lc67;->b(Ln87;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ld87;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    .line 9
    invoke-interface {p1}, Ln87;->close()V

    :cond_4
    return-void

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {p1}, Ln87;->close()V

    :cond_5
    throw v0
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld87;->g:La97;

    .line 2
    iget-object v0, v0, La97;->a:[La57;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, Ld87;->u:I

    .line 5
    iget-boolean v0, p0, Ld87;->o:Z

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Ld87;->i:Ln37;

    sget-object v1, Lf37$b;->a:Lf37;

    if-eq v0, v1, :cond_1

    .line 7
    :try_start_0
    iget-object v1, p0, Ld87;->p:Lc67;

    .line 8
    sget v2, Lo87;->a:I

    .line 9
    new-instance v2, Lo87$a;

    invoke-direct {v2, v1}, Lo87$a;-><init>(Ln87;)V

    .line 10
    invoke-interface {v0, v2}, Ln37;->b(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    new-instance v1, Ld87$d;

    iget v2, p0, Ld87;->f:I

    iget-object v3, p0, Ld87;->g:La97;

    invoke-direct {v1, v0, v2, v3}, Ld87$d;-><init>(Ljava/io/InputStream;ILa97;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 13
    :cond_1
    sget-object v0, Lx47;->m:Lx47;

    const-string v1, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lx47;->a()Lz47;

    move-result-object v0

    throw v0

    .line 15
    :cond_2
    iget-object v0, p0, Ld87;->g:La97;

    iget-object v1, p0, Ld87;->p:Lc67;

    .line 16
    iget v1, v1, Lc67;->e:I

    .line 17
    iget-object v0, v0, La97;->a:[La57;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Ld87;->p:Lc67;

    .line 20
    sget v1, Lo87;->a:I

    .line 21
    new-instance v1, Lo87$a;

    invoke-direct {v1, v0}, Lo87$a;-><init>(Ln87;)V

    :goto_2
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Ld87;->p:Lc67;

    .line 23
    iget-object v2, p0, Ld87;->e:Ld87$b;

    new-instance v3, Ld87$c;

    invoke-direct {v3, v1, v0}, Ld87$c;-><init>(Ljava/io/InputStream;Ld87$a;)V

    invoke-interface {v2, v3}, Ld87$b;->a(Lc97$a;)V

    .line 24
    sget-object v0, Ld87$e;->e:Ld87$e;

    iput-object v0, p0, Ld87;->m:Ld87$e;

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Ld87;->n:I

    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld87;->p:Lc67;

    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_3

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Ld87;->o:Z

    .line 3
    iget-object v0, p0, Ld87;->p:Lc67;

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v0, v3}, Lg57;->a(I)V

    .line 5
    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v4

    .line 7
    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v5

    .line 8
    invoke-virtual {v0}, Lc67;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 9
    iput v0, p0, Ld87;->n:I

    if-ltz v0, :cond_2

    .line 10
    iget v3, p0, Ld87;->f:I

    if-gt v0, v3, :cond_2

    .line 11
    iget v0, p0, Ld87;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Ld87;->t:I

    .line 12
    iget-object v0, p0, Ld87;->g:La97;

    .line 13
    iget-object v0, v0, La97;->a:[La57;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Ld87;->h:Lg97;

    .line 16
    iget-object v1, v0, Lg97;->g:Lp77;

    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lp77;->a(J)V

    .line 17
    iget-object v0, v0, Lg97;->a:Ld97;

    invoke-interface {v0}, Ld97;->a()J

    .line 18
    sget-object v0, Ld87$e;->f:Ld87$e;

    iput-object v0, p0, Ld87;->m:Ld87$e;

    return-void

    .line 19
    :cond_2
    sget-object v0, Lx47;->l:Lx47;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Ld87;->f:I

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Ld87;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "gRPC message exceeds maximum size %d: %d"

    .line 21
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lx47;->a()Lz47;

    move-result-object v0

    throw v0

    .line 24
    :cond_3
    sget-object v0, Lx47;->m:Lx47;

    const-string v1, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lx47;->a()Lz47;

    move-result-object v0

    throw v0
.end method

.method public final q()Z
    .locals 10

    .line 1
    sget-object v0, Ld87$e;->f:Ld87$e;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Ld87;->p:Lc67;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lc67;

    invoke-direct {v2}, Lc67;-><init>()V

    iput-object v2, p0, Ld87;->p:Lc67;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    :try_start_1
    iget v4, p0, Ld87;->n:I

    iget-object v5, p0, Ld87;->p:Lc67;

    .line 5
    iget v5, v5, Lc67;->e:I

    sub-int/2addr v4, v5

    if-lez v4, :cond_a

    .line 6
    iget-object v5, p0, Ld87;->j:Lv67;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 7
    :try_start_2
    iget-object v5, p0, Ld87;->k:[B

    if-eqz v5, :cond_1

    iget v6, p0, Ld87;->l:I

    array-length v5, v5

    if-ne v6, v5, :cond_2

    :cond_1
    const/high16 v5, 0x200000

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Ld87;->k:[B

    .line 9
    iput v1, p0, Ld87;->l:I

    .line 10
    :cond_2
    iget-object v5, p0, Ld87;->k:[B

    array-length v5, v5

    iget v6, p0, Ld87;->l:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    iget-object v5, p0, Ld87;->j:Lv67;

    iget-object v6, p0, Ld87;->k:[B

    iget v7, p0, Ld87;->l:I

    invoke-virtual {v5, v6, v7, v4}, Lv67;->a([BII)I

    move-result v4

    .line 12
    iget-object v5, p0, Ld87;->j:Lv67;

    .line 13
    iget v6, v5, Lv67;->q:I

    .line 14
    iput v1, v5, Lv67;->q:I

    add-int/2addr v2, v6

    .line 15
    iget v6, v5, Lv67;->r:I

    .line 16
    iput v1, v5, Lv67;->r:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v3, v6

    if-nez v4, :cond_5

    if-lez v2, :cond_4

    .line 17
    iget-object v4, p0, Ld87;->e:Ld87$b;

    invoke-interface {v4, v2}, Ld87$b;->g(I)V

    .line 18
    iget-object v4, p0, Ld87;->m:Ld87$e;

    if-ne v4, v0, :cond_4

    .line 19
    iget-object v0, p0, Ld87;->j:Lv67;

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, La97;->a(J)V

    .line 21
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v3

    iput v0, p0, Ld87;->u:I

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, La97;->a(J)V

    .line 23
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v2

    iput v0, p0, Ld87;->u:I

    :cond_4
    :goto_1
    return v1

    .line 24
    :cond_5
    :try_start_3
    iget-object v5, p0, Ld87;->p:Lc67;

    iget-object v6, p0, Ld87;->k:[B

    iget v7, p0, Ld87;->l:I

    .line 25
    sget v8, Lo87;->a:I

    .line 26
    new-instance v8, Lo87$b;

    invoke-direct {v8, v6, v7, v4}, Lo87$b;-><init>([BII)V

    .line 27
    invoke-virtual {v5, v8}, Lc67;->b(Ln87;)V

    .line 28
    iget v5, p0, Ld87;->l:I

    add-int/2addr v5, v4

    iput v5, p0, Ld87;->l:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 29
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v1

    .line 30
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 31
    :cond_6
    iget-object v5, p0, Ld87;->q:Lc67;

    .line 32
    iget v5, v5, Lc67;->e:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v5, :cond_9

    if-lez v2, :cond_8

    .line 33
    iget-object v4, p0, Ld87;->e:Ld87$b;

    invoke-interface {v4, v2}, Ld87$b;->g(I)V

    .line 34
    iget-object v4, p0, Ld87;->m:Ld87$e;

    if-ne v4, v0, :cond_8

    .line 35
    iget-object v0, p0, Ld87;->j:Lv67;

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, La97;->a(J)V

    .line 37
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v3

    iput v0, p0, Ld87;->u:I

    goto :goto_2

    .line 38
    :cond_7
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, La97;->a(J)V

    .line 39
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v2

    iput v0, p0, Ld87;->u:I

    :cond_8
    :goto_2
    return v1

    .line 40
    :cond_9
    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 41
    iget-object v5, p0, Ld87;->p:Lc67;

    iget-object v6, p0, Ld87;->q:Lc67;

    invoke-virtual {v6, v4}, Lc67;->f(I)Lc67;

    move-result-object v4

    invoke-virtual {v5, v4}, Lc67;->b(Ln87;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x1

    if-lez v2, :cond_c

    .line 42
    iget-object v4, p0, Ld87;->e:Ld87$b;

    invoke-interface {v4, v2}, Ld87$b;->g(I)V

    .line 43
    iget-object v4, p0, Ld87;->m:Ld87$e;

    if-ne v4, v0, :cond_c

    .line 44
    iget-object v0, p0, Ld87;->j:Lv67;

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, La97;->a(J)V

    .line 46
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v3

    iput v0, p0, Ld87;->u:I

    goto :goto_3

    .line 47
    :cond_b
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, La97;->a(J)V

    .line 48
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v2

    iput v0, p0, Ld87;->u:I

    :cond_c
    :goto_3
    return v1

    :catchall_0
    move-exception v1

    move v9, v2

    move-object v2, v1

    move v1, v9

    goto :goto_4

    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :goto_4
    if-lez v1, :cond_e

    .line 49
    iget-object v4, p0, Ld87;->e:Ld87$b;

    invoke-interface {v4, v1}, Ld87$b;->g(I)V

    .line 50
    iget-object v4, p0, Ld87;->m:Ld87$e;

    if-ne v4, v0, :cond_e

    .line 51
    iget-object v0, p0, Ld87;->j:Lv67;

    if-eqz v0, :cond_d

    .line 52
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, La97;->a(J)V

    .line 53
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v3

    iput v0, p0, Ld87;->u:I

    goto :goto_5

    .line 54
    :cond_d
    iget-object v0, p0, Ld87;->g:La97;

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, La97;->a(J)V

    .line 55
    iget v0, p0, Ld87;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Ld87;->u:I

    :cond_e
    :goto_5
    throw v2
.end method
