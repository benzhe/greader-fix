.class public Lzq5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyq5;

.field public final b:Ldq5$a;

.field public final c:Lvo5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvo5<",
            "Lmr5;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lwq5;

.field public f:Lmr5;


# direct methods
.method public constructor <init>(Lyq5;Ldq5$a;Lvo5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyq5;",
            "Ldq5$a;",
            "Lvo5<",
            "Lmr5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzq5;->d:Z

    .line 3
    sget-object v0, Lwq5;->e:Lwq5;

    iput-object v0, p0, Lzq5;->e:Lwq5;

    .line 4
    iput-object p1, p0, Lzq5;->a:Lyq5;

    .line 5
    iput-object p3, p0, Lzq5;->c:Lvo5;

    .line 6
    iput-object p2, p0, Lzq5;->b:Ldq5$a;

    return-void
.end method


# virtual methods
.method public a(Lwq5;)Z
    .locals 2

    .line 1
    iput-object p1, p0, Lzq5;->e:Lwq5;

    .line 2
    iget-object v0, p0, Lzq5;->f:Lmr5;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lzq5;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lzq5;->d(Lmr5;Lwq5;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzq5;->f:Lmr5;

    invoke-virtual {p0, p1}, Lzq5;->c(Lmr5;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lmr5;)Z
    .locals 12

    .line 1
    iget-object v0, p1, Lmr5;->d:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p1, Lmr5;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "We got a new snapshot with no changes?"

    .line 4
    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lzq5;->b:Ldq5$a;

    iget-boolean v0, v0, Ldq5$a;->a:Z

    if-nez v0, :cond_4

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v0, p1, Lmr5;->d:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbq5;

    .line 9
    iget-object v4, v3, Lbq5;->a:Lbq5$a;

    .line 10
    sget-object v5, Lbq5$a;->h:Lbq5$a;

    if-eq v4, v5, :cond_2

    .line 11
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_3
    new-instance v0, Lmr5;

    .line 13
    iget-object v4, p1, Lmr5;->a:Lyq5;

    .line 14
    iget-object v5, p1, Lmr5;->b:Ldu5;

    .line 15
    iget-object v6, p1, Lmr5;->c:Ldu5;

    .line 16
    iget-boolean v8, p1, Lmr5;->e:Z

    .line 17
    iget-object v9, p1, Lmr5;->f:Lln5;

    .line 18
    iget-boolean v10, p1, Lmr5;->g:Z

    const/4 v11, 0x1

    move-object v3, v0

    .line 19
    invoke-direct/range {v3 .. v11}, Lmr5;-><init>(Lyq5;Ldu5;Ldu5;Ljava/util/List;ZLln5;ZZ)V

    move-object p1, v0

    .line 20
    :cond_4
    iget-boolean v0, p0, Lzq5;->d:Z

    if-nez v0, :cond_5

    .line 21
    iget-object v0, p0, Lzq5;->e:Lwq5;

    invoke-virtual {p0, p1, v0}, Lzq5;->d(Lmr5;Lwq5;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p0, p1}, Lzq5;->c(Lmr5;)V

    goto :goto_6

    .line 23
    :cond_5
    iget-object v0, p1, Lmr5;->d:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    .line 25
    :cond_6
    iget-object v0, p0, Lzq5;->f:Lmr5;

    if-eqz v0, :cond_7

    .line 26
    iget-object v0, v0, Lmr5;->f:Lln5;

    .line 27
    iget-object v0, v0, Lln5;->e:Ljn5;

    invoke-virtual {v0}, Ljn5;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 28
    iget-object v3, p1, Lmr5;->f:Lln5;

    .line 29
    iget-object v3, v3, Lln5;->e:Ljn5;

    invoke-virtual {v3}, Ljn5;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eq v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 30
    :goto_3
    iget-boolean v3, p1, Lmr5;->g:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 31
    :cond_9
    :goto_4
    iget-object v0, p0, Lzq5;->b:Ldq5$a;

    iget-boolean v0, v0, Ldq5$a;->b:Z

    :goto_5
    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lzq5;->c:Lvo5;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 33
    :goto_6
    iput-object p1, p0, Lzq5;->f:Lmr5;

    return v1
.end method

.method public final c(Lmr5;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lzq5;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Trying to raise initial event for second time"

    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v5, p1, Lmr5;->a:Lyq5;

    .line 3
    iget-object v6, p1, Lmr5;->b:Ldu5;

    .line 4
    iget-object v10, p1, Lmr5;->f:Lln5;

    .line 5
    iget-boolean v9, p1, Lmr5;->e:Z

    .line 6
    iget-boolean v12, p1, Lmr5;->h:Z

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v6}, Ldu5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lln5$a;

    invoke-virtual {v0}, Lln5$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt5;

    .line 9
    sget-object v2, Lbq5$a;->f:Lbq5$a;

    .line 10
    new-instance v3, Lbq5;

    invoke-direct {v3, v2, v0}, Lbq5;-><init>(Lbq5$a;Lyt5;)V

    .line 11
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lmr5;

    .line 13
    invoke-virtual {v5}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object v0

    .line 14
    new-instance v2, Lcu5;

    invoke-direct {v2, v0}, Lcu5;-><init>(Ljava/util/Comparator;)V

    .line 15
    new-instance v7, Ldu5;

    .line 16
    sget-object v0, Lzt5;->a:Ljn5;

    .line 17
    new-instance v3, Lln5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v7, v0, v3}, Ldu5;-><init>(Ljn5;Lln5;)V

    const/4 v11, 0x1

    move-object v4, p1

    .line 18
    invoke-direct/range {v4 .. v12}, Lmr5;-><init>(Lyq5;Ldu5;Ldu5;Ljava/util/List;ZLln5;ZZ)V

    .line 19
    iput-boolean v1, p0, Lzq5;->d:Z

    .line 20
    iget-object v0, p0, Lzq5;->c:Lvo5;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    return-void
.end method

.method public final d(Lmr5;Lwq5;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lzq5;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Determining whether to raise first event but already had first event."

    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p1, Lmr5;->e:Z

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lwq5;->g:Lwq5;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v1

    .line 4
    iget-object v4, p0, Lzq5;->b:Ldq5$a;

    iget-boolean v4, v4, Ldq5$a;->c:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 5
    iget-boolean p1, p1, Lmr5;->e:Z

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Waiting for sync, but snapshot is not from cache"

    .line 6
    invoke-static {p1, v0, p2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 7
    :cond_1
    iget-object p1, p1, Lmr5;->b:Ldu5;

    .line 8
    iget-object p1, p1, Ldu5;->e:Ljn5;

    invoke-virtual {p1}, Ljn5;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method
