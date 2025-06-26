.class public final Lfs5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs5$b;
    }
.end annotation


# static fields
.field public static final k:J

.field public static final synthetic l:I


# instance fields
.field public final a:Lts5;

.field public b:Lss5;

.field public final c:Lzs5;

.field public d:Ltr5;

.field public e:Lus5;

.field public final f:Lys5;

.field public final g:Ltt5;

.field public final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lut5;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldr5;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ler5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lfs5;->k:J

    return-void
.end method

.method public constructor <init>(Lts5;Lus5;Ltp5;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lts5;->f()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LocalStore was passed an unstarted persistence implementation"

    .line 3
    invoke-static {v0, v3, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lfs5;->a:Lts5;

    .line 5
    invoke-virtual {p1}, Lts5;->e()Ltt5;

    move-result-object v0

    iput-object v0, p0, Lfs5;->g:Ltt5;

    .line 6
    invoke-interface {v0}, Ltt5;->c()I

    move-result v0

    .line 7
    new-instance v2, Ler5;

    invoke-direct {v2, v1, v0}, Ler5;-><init>(II)V

    .line 8
    invoke-virtual {v2}, Ler5;->a()I

    .line 9
    iput-object v2, p0, Lfs5;->j:Ler5;

    .line 10
    invoke-virtual {p1, p3}, Lts5;->b(Ltp5;)Lss5;

    move-result-object p3

    iput-object p3, p0, Lfs5;->b:Lss5;

    .line 11
    invoke-virtual {p1}, Lts5;->d()Lzs5;

    move-result-object p3

    iput-object p3, p0, Lfs5;->c:Lzs5;

    .line 12
    new-instance v0, Ltr5;

    iget-object v1, p0, Lfs5;->b:Lss5;

    .line 13
    invoke-virtual {p1}, Lts5;->a()Lsr5;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Ltr5;-><init>(Lzs5;Lss5;Lsr5;)V

    iput-object v0, p0, Lfs5;->d:Ltr5;

    .line 14
    iput-object p2, p0, Lfs5;->e:Lus5;

    .line 15
    check-cast p2, Lnr5;

    .line 16
    iput-object v0, p2, Lnr5;->a:Ltr5;

    .line 17
    new-instance p2, Lys5;

    invoke-direct {p2}, Lys5;-><init>()V

    iput-object p2, p0, Lfs5;->f:Lys5;

    .line 18
    invoke-virtual {p1}, Lts5;->c()Lxs5;

    move-result-object p1

    invoke-interface {p1, p2}, Lxs5;->g(Lys5;)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lfs5;->h:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfs5;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lyq5;Z)Lws5;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lyq5;->i()Ldr5;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lfs5;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lfs5;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut5;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lfs5;->g:Ltt5;

    invoke-interface {v1, v0}, Ltt5;->b(Ldr5;)Lut5;

    move-result-object v0

    .line 5
    :goto_0
    sget-object v1, Lju5;->f:Lju5;

    .line 6
    sget-object v2, Lbu5;->f:Lln5;

    if-eqz v0, :cond_1

    .line 7
    iget-object v3, v0, Lut5;->f:Lju5;

    .line 8
    iget-object v4, p0, Lfs5;->g:Ltt5;

    .line 9
    iget v0, v0, Lut5;->b:I

    .line 10
    invoke-interface {v4, v0}, Ltt5;->d(I)Lln5;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    move-object v0, v2

    .line 11
    :goto_1
    iget-object v4, p0, Lfs5;->e:Lus5;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz p2, :cond_3

    move-object v2, v0

    .line 12
    :cond_3
    check-cast v4, Lnr5;

    .line 13
    iget-object p2, v4, Lnr5;->a:Ltr5;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "setLocalDocumentsView() not called"

    invoke-static {p2, v8, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object p2, p1, Lyq5;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-wide v7, p1, Lyq5;->g:J

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-nez p2, :cond_6

    iget-object p2, p1, Lyq5;->i:Lyp5;

    if-nez p2, :cond_6

    iget-object p2, p1, Lyq5;->j:Lyp5;

    if-nez p2, :cond_6

    .line 15
    iget-object p2, p1, Lyq5;->a:Ljava/util/List;

    .line 16
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 17
    iget-object p2, p1, Lyq5;->a:Ljava/util/List;

    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v5, :cond_6

    invoke-virtual {p1}, Lyq5;->c()Leu5;

    move-result-object p2

    invoke-virtual {p2}, Leu5;->N()Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_7

    .line 19
    invoke-virtual {v4, p1}, Lnr5;->a(Lyq5;)Ljn5;

    move-result-object p1

    goto/16 :goto_d

    .line 20
    :cond_7
    invoke-virtual {v3, v1}, Lju5;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {v4, p1}, Lnr5;->a(Lyq5;)Ljn5;

    move-result-object p1

    goto/16 :goto_d

    .line 22
    :cond_8
    iget-object p2, v4, Lnr5;->a:Ltr5;

    .line 23
    iget-object v1, p2, Ltr5;->a:Lzs5;

    invoke-interface {v1, v2}, Lzs5;->c(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Ltr5;->e(Ljava/util/Map;)Ljn5;

    move-result-object p2

    .line 25
    new-instance v1, Lln5;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lyq5;->b()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lln5;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    invoke-virtual {p2}, Ljn5;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfu5;

    .line 29
    instance-of v8, v7, Lyt5;

    if-eqz v8, :cond_9

    check-cast v7, Lyt5;

    invoke-virtual {p1, v7}, Lyq5;->h(Lyt5;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 30
    new-instance v8, Lln5;

    iget-object v1, v1, Lln5;->e:Ljn5;

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object v1

    invoke-direct {v8, v1}, Lln5;-><init>(Ljn5;)V

    move-object v1, v8

    goto :goto_5

    .line 31
    :cond_a
    invoke-virtual {p1}, Lyq5;->e()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lyq5;->f()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 32
    :cond_b
    invoke-virtual {p1}, Lyq5;->f()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-virtual {p1}, Lyq5;->e()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_6

    :cond_c
    const/4 p2, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 p2, 0x1

    :goto_7
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "Called getLimitType when no limit was set"

    invoke-static {p2, v8, v7}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object p2, p1, Lyq5;->h:Lyq5$a;

    .line 34
    invoke-virtual {v2}, Lln5;->size()I

    move-result v2

    invoke-virtual {v1}, Lln5;->size()I

    move-result v7

    if-eq v2, v7, :cond_e

    goto :goto_a

    .line 35
    :cond_e
    sget-object v2, Lyq5$a;->e:Lyq5$a;

    if-ne p2, v2, :cond_f

    .line 36
    iget-object p2, v1, Lln5;->e:Ljn5;

    invoke-virtual {p2}, Ljn5;->l()Ljava/lang/Object;

    move-result-object p2

    .line 37
    check-cast p2, Lyt5;

    goto :goto_8

    .line 38
    :cond_f
    iget-object p2, v1, Lln5;->e:Ljn5;

    invoke-virtual {p2}, Ljn5;->n()Ljava/lang/Object;

    move-result-object p2

    .line 39
    check-cast p2, Lyt5;

    :goto_8
    if-nez p2, :cond_10

    goto :goto_9

    .line 40
    :cond_10
    invoke-virtual {p2}, Lyt5;->a()Z

    move-result v2

    if-nez v2, :cond_12

    .line 41
    iget-object p2, p2, Lfu5;->b:Lju5;

    .line 42
    iget-object p2, p2, Lju5;->e:Lcom/google/firebase/Timestamp;

    iget-object v2, v3, Lju5;->e:Lcom/google/firebase/Timestamp;

    invoke-virtual {p2, v2}, Lcom/google/firebase/Timestamp;->i(Lcom/google/firebase/Timestamp;)I

    move-result p2

    if-lez p2, :cond_11

    goto :goto_a

    :cond_11
    :goto_9
    const/4 p2, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 p2, 0x1

    :goto_b
    if-eqz p2, :cond_13

    .line 43
    invoke-virtual {v4, p1}, Lnr5;->a(Lyq5;)Ljn5;

    move-result-object p1

    goto :goto_d

    :cond_13
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v3}, Lju5;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v6

    .line 45
    invoke-virtual {p1}, Lyq5;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v5

    .line 46
    sget-object v2, Lqx5$a;->e:Lqx5$a;

    const-string v5, "DefaultQueryEngine"

    const-string v6, "Re-using previous result from %s to execute query: %s"

    invoke-static {v2, v5, v6, p2}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object p2, v4, Lnr5;->a:Ltr5;

    .line 48
    invoke-virtual {p2, p1, v3}, Ltr5;->d(Lyq5;Lju5;)Ljn5;

    move-result-object p1

    .line 49
    invoke-virtual {v1}, Lln5;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    move-object v1, p2

    check-cast v1, Lln5$a;

    invoke-virtual {v1}, Lln5$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lln5$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyt5;

    .line 50
    iget-object v2, v1, Lfu5;->a:Lbu5;

    .line 51
    invoke-virtual {p1, v2, v1}, Ljn5;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljn5;

    move-result-object p1

    goto :goto_c

    .line 52
    :cond_14
    :goto_d
    new-instance p2, Lws5;

    invoke-direct {p2, p1, v0}, Lws5;-><init>(Ljn5;Lln5;)V

    return-object p2
.end method
