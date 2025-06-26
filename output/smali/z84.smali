.class public Lz84;
.super Ls74;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc94<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lz84<",
        "TMessageType;TBuilderType;>;>",
        "Ls74<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final e:Lc94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public f:Lc94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lc94;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Ls74;-><init>()V

    iput-object p1, p0, Lz84;->e:Lc94;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1, v1}, Lc94;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc94;

    iput-object p1, p0, Lz84;->f:Lc94;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz84;->g:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lz84;->k()Lz84;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lda4;
    .locals 1

    iget-object v0, p0, Lz84;->e:Lc94;

    return-object v0
.end method

.method public final g()Lc94;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lz84;->l()Lc94;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lc94;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 4
    :cond_1
    sget-object v3, Lka4;->c:Lka4;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lka4;->a(Ljava/lang/Class;)Lna4;

    move-result-object v3

    invoke-interface {v3, v0}, Lna4;->f(Ljava/lang/Object;)Z

    move-result v3

    if-eq v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const/4 v4, 0x2

    .line 7
    invoke-virtual {v0, v4, v1, v2}, Lc94;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Lza4;

    .line 9
    invoke-direct {v0}, Lza4;-><init>()V

    .line 10
    throw v0
.end method

.method public final h(Lc94;)Lz84;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lz84;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz84;->g:Z

    :cond_0
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 2
    sget-object v1, Lka4;->c:Lka4;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lka4;->a(Ljava/lang/Class;)Lna4;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lna4;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final i([BIILp84;)Lz84;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lp84;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll94;
        }
    .end annotation

    iget-boolean p2, p0, Lz84;->g:Z

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lz84;->j()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lz84;->g:Z

    .line 2
    :cond_0
    :try_start_0
    sget-object p2, Lka4;->c:Lka4;

    .line 3
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lka4;->a(Ljava/lang/Class;)Lna4;

    move-result-object v1

    iget-object v2, p0, Lz84;->f:Lc94;

    new-instance v6, Lw74;

    invoke-direct {v6, p4}, Lw74;-><init>(Lp84;)V

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lna4;->h(Ljava/lang/Object;[BIILw74;)V
    :try_end_0
    .catch Ll94; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 6
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :catch_2
    invoke-static {}, Ll94;->a()Ll94;

    move-result-object p1

    throw p1

    .line 8
    :goto_1
    throw p1
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lz84;->f:Lc94;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lc94;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc94;

    iget-object v1, p0, Lz84;->f:Lc94;

    .line 2
    sget-object v2, Lka4;->c:Lka4;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lka4;->a(Ljava/lang/Class;)Lna4;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lna4;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lz84;->f:Lc94;

    return-void
.end method

.method public final k()Lz84;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lz84;->e:Lc94;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lc94;->r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lz84;

    .line 3
    invoke-virtual {p0}, Lz84;->l()Lc94;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz84;->h(Lc94;)Lz84;

    return-object v0
.end method

.method public l()Lc94;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lz84;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz84;->f:Lc94;

    return-object v0

    :cond_0
    iget-object v0, p0, Lz84;->f:Lc94;

    .line 1
    sget-object v1, Lka4;->c:Lka4;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lka4;->a(Ljava/lang/Class;)Lna4;

    move-result-object v1

    invoke-interface {v1, v0}, Lna4;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz84;->g:Z

    iget-object v0, p0, Lz84;->f:Lc94;

    return-object v0
.end method
