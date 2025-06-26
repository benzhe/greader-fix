.class public Lcr5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw5$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcr5$b;,
        Lcr5$a;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "cr5"


# instance fields
.field public final a:Lfs5;

.field public final b:Lsw5;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lyq5;",
            "Lar5;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lyq5;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lbu5;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbu5;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcr5$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lys5;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ltp5;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf45<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lf45<",
            "Ljava/lang/Void;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final l:Ler5;

.field public m:Ltp5;

.field public n:Lcr5$b;


# direct methods
.method public constructor <init>(Lfs5;Lsw5;Ltp5;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcr5;->a:Lfs5;

    .line 3
    iput-object p2, p0, Lcr5;->b:Lsw5;

    .line 4
    iput p4, p0, Lcr5;->e:I

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->c:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->d:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcr5;->f:Ljava/util/Queue;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->g:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->h:Ljava/util/Map;

    .line 10
    new-instance p1, Lys5;

    invoke-direct {p1}, Lys5;-><init>()V

    iput-object p1, p0, Lcr5;->i:Lys5;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->j:Ljava/util/Map;

    .line 12
    new-instance p1, Ler5;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p2}, Ler5;-><init>(II)V

    .line 13
    iput-object p1, p0, Lcr5;->l:Ler5;

    .line 14
    iput-object p3, p0, Lcr5;->m:Ltp5;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcr5;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(ILx47;)V
    .locals 7

    const-string v0, "handleRejectedListen"

    .line 1
    invoke-virtual {p0, v0}, Lcr5;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcr5;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcr5$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcr5$a;->a:Lbu5;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcr5;->g:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcr5;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcr5;->k()V

    .line 7
    new-instance p1, Lgu5;

    sget-object v2, Lju5;->f:Lju5;

    const/4 p2, 0x0

    invoke-direct {p1, v0, v2, p2}, Lgu5;-><init>(Lbu5;Lju5;Z)V

    .line 8
    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 10
    new-instance p1, Lnw5;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lnw5;-><init>(Lju5;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 13
    invoke-virtual {p0, p1}, Lcr5;->c(Lnw5;)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcr5;->a:Lfs5;

    .line 15
    iget-object v1, v0, Lfs5;->a:Lts5;

    .line 16
    new-instance v2, Les5;

    invoke-direct {v2, v0, p1}, Les5;-><init>(Lfs5;I)V

    const-string v0, "Release target"

    .line 17
    invoke-virtual {v1, v0, v2}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcr5;->l(ILx47;)V

    :goto_1
    return-void
.end method

.method public b(ILx47;)V
    .locals 4

    const-string v0, "handleRejectedWrite"

    .line 1
    invoke-virtual {p0, v0}, Lcr5;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcr5;->a:Lfs5;

    .line 3
    iget-object v1, v0, Lfs5;->a:Lts5;

    .line 4
    new-instance v2, Lzr5;

    invoke-direct {v2, v0, p1}, Lzr5;-><init>(Lfs5;I)V

    const-string v0, "Reject batch"

    .line 5
    invoke-virtual {v1, v0, v2}, Lts5;->g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn5;

    .line 6
    invoke-virtual {v0}, Ljn5;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Ljn5;->n()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbu5;

    .line 8
    iget-object v3, v3, Lbu5;->e:Liu5;

    aput-object v3, v1, v2

    const-string v2, "Write failed at %s"

    .line 9
    invoke-virtual {p0, p2, v2, v1}, Lcr5;->i(Lx47;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcr5;->j(ILx47;)V

    .line 11
    invoke-virtual {p0, p1}, Lcr5;->n(I)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, v0, p1}, Lcr5;->h(Ljn5;Lnw5;)V

    return-void
.end method

.method public c(Lnw5;)V
    .locals 8

    const-string v0, "handleRemoteEvent"

    .line 1
    invoke-virtual {p0, v0}, Lcr5;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lnw5;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvw5;

    .line 6
    iget-object v3, p0, Lcr5;->h:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcr5$a;

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, v1, Lvw5;->c:Lln5;

    .line 8
    invoke-virtual {v3}, Lln5;->size()I

    move-result v3

    .line 9
    iget-object v4, v1, Lvw5;->d:Lln5;

    .line 10
    invoke-virtual {v4}, Lln5;->size()I

    move-result v4

    add-int/2addr v4, v3

    .line 11
    iget-object v3, v1, Lvw5;->e:Lln5;

    .line 12
    invoke-virtual {v3}, Lln5;->size()I

    move-result v3

    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Limbo resolution for single document contains multiple changes."

    .line 13
    invoke-static {v3, v7, v6}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v3, v1, Lvw5;->c:Lln5;

    .line 15
    invoke-virtual {v3}, Lln5;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 16
    iput-boolean v5, v2, Lcr5$a;->b:Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object v3, v1, Lvw5;->d:Lln5;

    .line 18
    invoke-virtual {v3}, Lln5;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 19
    iget-boolean v1, v2, Lcr5$a;->b:Z

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Received change for limbo target document without add."

    .line 20
    invoke-static {v1, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v1, v1, Lvw5;->e:Lln5;

    .line 22
    invoke-virtual {v1}, Lln5;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 23
    iget-boolean v1, v2, Lcr5$a;->b:Z

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "Received remove for limbo target document without add."

    .line 24
    invoke-static {v1, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iput-boolean v4, v2, Lcr5$a;->b:Z

    goto :goto_0

    .line 26
    :cond_4
    iget-object v0, p0, Lcr5;->a:Lfs5;

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p1, Lnw5;->a:Lju5;

    .line 29
    iget-object v2, v0, Lfs5;->a:Lts5;

    .line 30
    new-instance v3, Lbs5;

    invoke-direct {v3, v0, p1, v1}, Lbs5;-><init>(Lfs5;Lnw5;Lju5;)V

    const-string v0, "Apply remote event"

    .line 31
    invoke-virtual {v2, v0, v3}, Lts5;->g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn5;

    .line 32
    invoke-virtual {p0, v0, p1}, Lcr5;->h(Ljn5;Lnw5;)V

    return-void
.end method

.method public d(I)Lln5;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lln5<",
            "Lbu5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcr5;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcr5$a;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lcr5$a;->b:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p1, Lbu5;->f:Lln5;

    .line 4
    iget-object v0, v0, Lcr5$a;->a:Lbu5;

    .line 5
    invoke-virtual {p1, v0}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lbu5;->f:Lln5;

    .line 7
    iget-object v1, p0, Lcr5;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcr5;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyq5;

    .line 9
    iget-object v2, p0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcr5;->c:Ljava/util/Map;

    .line 11
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lar5;

    .line 12
    iget-object v1, v1, Lar5;->c:Lkr5;

    .line 13
    iget-object v1, v1, Lkr5;->e:Lln5;

    .line 14
    invoke-virtual {v0}, Lln5;->size()I

    move-result v2

    invoke-virtual {v1}, Lln5;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 15
    :goto_1
    invoke-virtual {v0}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    move-object v2, v0

    check-cast v2, Lln5$a;

    invoke-virtual {v2}, Lln5$a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public e(Lwq5;)V
    .locals 12

    const-string v0, "handleOnlineStateChange"

    .line 1
    invoke-virtual {p0, v0}, Lcr5;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lar5;

    .line 5
    iget-object v2, v2, Lar5;->c:Lkr5;

    .line 6
    iget-boolean v4, v2, Lkr5;->c:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lwq5;->g:Lwq5;

    if-ne p1, v4, :cond_1

    .line 7
    iput-boolean v3, v2, Lkr5;->c:Z

    .line 8
    new-instance v4, Lkr5$b;

    iget-object v7, v2, Lkr5;->d:Ldu5;

    new-instance v8, Lcq5;

    invoke-direct {v8}, Lcq5;-><init>()V

    iget-object v9, v2, Lkr5;->g:Lln5;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lkr5$b;-><init>(Ldu5;Lcq5;Lln5;ZLkr5$a;)V

    .line 9
    invoke-virtual {v2, v4, v5}, Lkr5;->a(Lkr5$b;Lvw5;)Llr5;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Llr5;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Llr5;-><init>(Lmr5;Ljava/util/List;)V

    .line 11
    :goto_1
    iget-object v4, v2, Llr5;->b:Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "OnlineState should not affect limbo documents."

    .line 13
    invoke-static {v4, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v2, v2, Llr5;->a:Lmr5;

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcr5;->n:Lcr5$b;

    check-cast v1, Ldq5;

    invoke-virtual {v1, v0}, Ldq5;->a(Ljava/util/List;)V

    .line 17
    iget-object v0, p0, Lcr5;->n:Lcr5$b;

    check-cast v0, Ldq5;

    .line 18
    iput-object p1, v0, Ldq5;->d:Lwq5;

    .line 19
    iget-object v1, v0, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldq5$b;

    .line 20
    iget-object v2, v2, Ldq5$b;->a:Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzq5;

    .line 22
    invoke-virtual {v4, p1}, Lzq5;->a(Lwq5;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v0}, Ldq5;->b()V

    :cond_6
    return-void
.end method

.method public f(Lsu5;)V
    .locals 4

    const-string v0, "handleSuccessfulWrite"

    .line 1
    invoke-virtual {p0, v0}, Lcr5;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lsu5;->a:Lru5;

    .line 3
    iget v0, v0, Lru5;->a:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcr5;->j(ILx47;)V

    .line 5
    iget-object v0, p1, Lsu5;->a:Lru5;

    .line 6
    iget v0, v0, Lru5;->a:I

    .line 7
    invoke-virtual {p0, v0}, Lcr5;->n(I)V

    .line 8
    iget-object v0, p0, Lcr5;->a:Lfs5;

    .line 9
    iget-object v2, v0, Lfs5;->a:Lts5;

    .line 10
    new-instance v3, Lyr5;

    invoke-direct {v3, v0, p1}, Lyr5;-><init>(Lfs5;Lsu5;)V

    const-string p1, "Acknowledge batch"

    .line 11
    invoke-virtual {v2, p1, v3}, Lts5;->g(Ljava/lang/String;Lrx5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljn5;

    .line 12
    invoke-virtual {p0, p1, v1}, Lcr5;->h(Ljn5;Lnw5;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcr5;->n:Lcr5$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Trying to call %s before setting callback"

    invoke-static {v0, p1, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljn5;Lnw5;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljn5<",
            "Lbu5;",
            "Lfu5;",
            ">;",
            "Lnw5;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lar5;

    .line 5
    iget-object v4, v3, Lar5;->c:Lkr5;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v4, p1, v5}, Lkr5;->c(Ljn5;Lkr5$b;)Lkr5$b;

    move-result-object v6

    .line 7
    iget-boolean v7, v6, Lkr5$b;->c:Z

    if-eqz v7, :cond_1

    .line 8
    iget-object v7, p0, Lcr5;->a:Lfs5;

    .line 9
    iget-object v8, v3, Lar5;->a:Lyq5;

    const/4 v9, 0x0

    .line 10
    invoke-virtual {v7, v8, v9}, Lfs5;->a(Lyq5;Z)Lws5;

    move-result-object v7

    .line 11
    iget-object v7, v7, Lws5;->a:Ljn5;

    .line 12
    invoke-virtual {v4, v7, v6}, Lkr5;->c(Ljn5;Lkr5$b;)Lkr5$b;

    move-result-object v6

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v4, p2, Lnw5;->b:Ljava/util/Map;

    .line 14
    iget v5, v3, Lar5;->b:I

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lvw5;

    .line 16
    :goto_1
    iget-object v4, v3, Lar5;->c:Lkr5;

    .line 17
    invoke-virtual {v4, v6, v5}, Lkr5;->a(Lkr5$b;Lvw5;)Llr5;

    move-result-object v4

    .line 18
    iget-object v5, v4, Llr5;->b:Ljava/util/List;

    .line 19
    iget v6, v3, Lar5;->b:I

    .line 20
    invoke-virtual {p0, v5, v6}, Lcr5;->o(Ljava/util/List;I)V

    .line 21
    iget-object v5, v4, Llr5;->a:Lmr5;

    if-eqz v5, :cond_0

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget v3, v3, Lar5;->b:I

    .line 24
    iget-object v4, v4, Llr5;->a:Lmr5;

    .line 25
    new-instance v5, Lln5;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    sget-object v7, Lbu5;->f:Lln5;

    sget-object v7, Lau5;->e:Lau5;

    invoke-direct {v5, v6, v7}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    new-instance v6, Lln5;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-direct {v6, v8, v7}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    iget-object v7, v4, Lmr5;->d:Ljava/util/List;

    .line 30
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbq5;

    .line 31
    iget-object v9, v8, Lbq5;->a:Lbq5$a;

    .line 32
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    goto :goto_2

    .line 33
    :cond_3
    iget-object v8, v8, Lbq5;->b:Lyt5;

    .line 34
    iget-object v8, v8, Lfu5;->a:Lbu5;

    .line 35
    invoke-virtual {v5, v8}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v5

    goto :goto_2

    .line 36
    :cond_4
    iget-object v8, v8, Lbq5;->b:Lyt5;

    .line 37
    iget-object v8, v8, Lfu5;->a:Lbu5;

    .line 38
    invoke-virtual {v6, v8}, Lln5;->d(Ljava/lang/Object;)Lln5;

    move-result-object v6

    goto :goto_2

    .line 39
    :cond_5
    new-instance v7, Lgs5;

    .line 40
    iget-boolean v4, v4, Lmr5;->e:Z

    .line 41
    invoke-direct {v7, v3, v4, v5, v6}, Lgs5;-><init>(IZLln5;Lln5;)V

    .line 42
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_6
    iget-object p1, p0, Lcr5;->n:Lcr5$b;

    check-cast p1, Ldq5;

    invoke-virtual {p1, v0}, Ldq5;->a(Ljava/util/List;)V

    .line 44
    iget-object p1, p0, Lcr5;->a:Lfs5;

    .line 45
    iget-object p2, p1, Lfs5;->a:Lts5;

    .line 46
    new-instance v0, Lcs5;

    invoke-direct {v0, p1, v1}, Lcs5;-><init>(Lfs5;Ljava/util/List;)V

    const-string p1, "notifyLocalViewChanges"

    .line 47
    invoke-virtual {p2, p1, v0}, Lts5;->h(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final varargs i(Lx47;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lx47;->a:Lx47$b;

    .line 2
    iget-object v1, p1, Lx47;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    sget-object v2, Lx47$b;->p:Lx47$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    const-string v2, "requires an index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Lx47$b;->n:Lx47$b;

    if-ne v0, v1, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 5
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v4

    aput-object p1, p3, v3

    .line 6
    sget-object p1, Lqx5$a;->f:Lqx5$a;

    const-string p2, "Firestore"

    const-string v0, "%s: %s"

    invoke-static {p1, p2, v0, p3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final j(ILx47;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr5;->j:Ljava/util/Map;

    iget-object v1, p0, Lcr5;->m:Ltp5;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf45;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p2}, Lvx5;->d(Lx47;)Lzo5;

    move-result-object p2

    .line 5
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, p2}, Le55;->r(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, p2}, Le55;->s(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 9

    .line 1
    :goto_0
    iget-object v0, p0, Lcr5;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcr5;->g:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcr5;->e:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcr5;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu5;

    .line 4
    iget-object v1, p0, Lcr5;->l:Ler5;

    invoke-virtual {v1}, Ler5;->a()I

    move-result v4

    .line 5
    iget-object v1, p0, Lcr5;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcr5$a;

    invoke-direct {v3, v0}, Lcr5$a;-><init>(Lbu5;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcr5;->g:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcr5;->b:Lsw5;

    new-instance v8, Lut5;

    .line 8
    iget-object v0, v0, Lbu5;->e:Liu5;

    .line 9
    invoke-static {v0}, Lyq5;->a(Liu5;)Lyq5;

    move-result-object v0

    invoke-virtual {v0}, Lyq5;->i()Ldr5;

    move-result-object v3

    const-wide/16 v5, -0x1

    sget-object v7, Lvs5;->g:Lvs5;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lut5;-><init>(Ldr5;IJLvs5;)V

    .line 10
    invoke-virtual {v1, v8}, Lsw5;->d(Lut5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(ILx47;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcr5;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyq5;

    .line 2
    iget-object v2, p0, Lcr5;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lx47;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcr5;->n:Lcr5$b;

    check-cast v2, Ldq5;

    .line 5
    iget-object v3, v2, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldq5$b;

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, v3, Ldq5$b;->a:Ljava/util/List;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzq5;

    .line 8
    invoke-static {p2}, Lvx5;->d(Lx47;)Lzo5;

    move-result-object v5

    .line 9
    iget-object v4, v4, Lzq5;->c:Lvo5;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lvo5;->a(Ljava/lang/Object;Lzo5;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, v2, Ldq5;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Listen for %s failed"

    .line 11
    invoke-virtual {p0, p2, v1, v2}, Lcr5;->i(Lx47;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lcr5;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lcr5;->i:Lys5;

    invoke-virtual {p2, p1}, Lys5;->d(I)Lln5;

    move-result-object p2

    .line 14
    iget-object v0, p0, Lcr5;->i:Lys5;

    invoke-virtual {v0, p1}, Lys5;->g(I)Lln5;

    .line 15
    invoke-virtual {p2}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    move-object p2, p1

    check-cast p2, Lln5$a;

    invoke-virtual {p2}, Lln5$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbu5;

    .line 16
    iget-object v0, p0, Lcr5;->i:Lys5;

    invoke-virtual {v0, p2}, Lys5;->c(Lbu5;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p0, p2}, Lcr5;->m(Lbu5;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final m(Lbu5;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcr5;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcr5;->b:Lsw5;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lsw5;->k(I)V

    .line 3
    iget-object v1, p0, Lcr5;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcr5;->h:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcr5;->k()V

    :cond_0
    return-void
.end method

.method public final n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcr5;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcr5;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf45;

    const/4 v2, 0x0

    .line 3
    iget-object v1, v1, Lf45;->a:Le55;

    invoke-virtual {v1, v2}, Le55;->s(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcr5;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final o(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lrq5;",
            ">;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lqx5$a;->e:Lqx5$a;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrq5;

    .line 2
    iget-object v2, v1, Lrq5;->a:Lrq5$a;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    .line 4
    sget-object v2, Lcr5;->o:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    .line 5
    iget-object v5, v1, Lrq5;->b:Lbu5;

    aput-object v5, v4, v3

    const-string v3, "Document no longer in limbo: %s"

    .line 6
    invoke-static {v0, v2, v3, v4}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, v1, Lrq5;->b:Lbu5;

    .line 8
    iget-object v2, p0, Lcr5;->i:Lys5;

    invoke-virtual {v2, v1, p2}, Lys5;->e(Lbu5;I)V

    .line 9
    iget-object v2, p0, Lcr5;->i:Lys5;

    invoke-virtual {v2, v1}, Lys5;->c(Lbu5;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lcr5;->m(Lbu5;)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 11
    iget-object p2, v1, Lrq5;->a:Lrq5$a;

    aput-object p2, p1, v3

    const-string p2, "Unknown limbo change type: %s"

    .line 12
    invoke-static {p2, p1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1

    .line 13
    :cond_2
    iget-object v2, p0, Lcr5;->i:Lys5;

    .line 14
    iget-object v5, v1, Lrq5;->b:Lbu5;

    .line 15
    invoke-virtual {v2, v5, p2}, Lys5;->a(Lbu5;I)V

    .line 16
    iget-object v1, v1, Lrq5;->b:Lbu5;

    .line 17
    iget-object v2, p0, Lcr5;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18
    sget-object v2, Lcr5;->o:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v3, "New document in limbo: %s"

    .line 19
    invoke-static {v0, v2, v3, v4}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcr5;->f:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Lcr5;->k()V

    goto :goto_0

    :cond_3
    return-void
.end method
