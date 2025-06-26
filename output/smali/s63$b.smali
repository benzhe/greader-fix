.class public Ls63$b;
.super La53;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls63;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Ls63<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ls63$b<",
        "TMessageType;TBuilderType;>;>",
        "La53<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final e:Ls63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public f:Ls63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ls63;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La53;-><init>()V

    .line 2
    iput-object p1, p0, Ls63$b;->e:Ls63;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ls63;

    iput-object p1, p0, Ls63$b;->f:Ls63;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ls63$b;->g:Z

    return-void
.end method

.method public static l(Ls63;Ls63;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lq83;->c:Lq83;

    .line 2
    invoke-virtual {v0, p0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lw83;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls63$b;->e:Ls63;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls63$b;

    .line 4
    invoke-virtual {p0}, Ls63$b;->i()Le83;

    move-result-object v1

    check-cast v1, Ls63;

    invoke-virtual {v0, v1}, Ls63$b;->m(Ls63;)Ls63$b;

    return-object v0
.end method

.method public final synthetic e()Le83;
    .locals 1

    .line 1
    iget-object v0, p0, Ls63$b;->e:Ls63;

    return-object v0
.end method

.method public i()Le83;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls63$b;->f:Ls63;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    .line 4
    sget-object v1, Lq83;->c:Lq83;

    .line 5
    invoke-virtual {v1, v0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v1

    invoke-interface {v1, v0}, Lw83;->j(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 7
    iget-object v0, p0, Ls63$b;->f:Ls63;

    :goto_0
    return-object v0
.end method

.method public j()Le83;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls63$b;->i()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    .line 2
    invoke-virtual {v0}, Ls63;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lm93;

    invoke-direct {v0}, Lm93;-><init>()V

    .line 4
    throw v0
.end method

.method public final k([BIILe63;)La53;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Ls63$b;->g:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    :try_start_0
    sget-object p2, Lq83;->c:Lq83;

    .line 5
    iget-object v0, p0, Ls63$b;->f:Ls63;

    invoke-virtual {p2, v0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v1

    iget-object v2, p0, Ls63$b;->f:Ls63;

    const/4 v4, 0x0

    new-instance v6, Lg53;

    invoke-direct {v6, p4}, Lg53;-><init>(Le63;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lw83;->g(Ljava/lang/Object;[BIILg53;)V
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 7
    :catch_1
    invoke-static {}, Le73;->a()Le73;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 8
    throw p1
.end method

.method public final m(Ls63;)Ls63$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ls63$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls63$b;->o()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls63$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ls63$b;->f:Ls63;

    invoke-static {v0, p1}, Ls63$b;->l(Ls63;Ls63;)V

    return-object p0
.end method

.method public o()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls63$b;->f:Ls63;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Ls63;->q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls63;

    .line 4
    iget-object v1, p0, Ls63$b;->f:Ls63;

    .line 5
    sget-object v2, Lq83;->c:Lq83;

    .line 6
    invoke-virtual {v2, v0}, Lq83;->a(Ljava/lang/Object;)Lw83;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lw83;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Ls63$b;->f:Ls63;

    return-void
.end method
