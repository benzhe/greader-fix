.class public final Lzy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy$a;
.implements Lqy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lny$d;",
        ">",
        "Ljava/lang/Object;",
        "Lqy$a;",
        "Lqy$b;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Liz;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lny$f;

.field public final g:Lny$b;

.field public final h:Lb00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb00<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final i:Lez;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc00;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcz<",
            "*>;",
            "Lrz;",
            ">;"
        }
    .end annotation
.end field

.field public final l:I

.field public final m:Ltz;

.field public n:Z

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzy$b;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic q:Lzy;


# direct methods
.method public constructor <init>(Lzy;Lpy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpy<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lzy$a;->q:Lzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzy$a;->e:Ljava/util/Queue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lzy$a;->j:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzy$a;->k:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzy$a;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lzy$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    .line 7
    iget-object v1, p1, Lzy;->n:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 9
    invoke-virtual {p2}, Lpy;->a()Lj00$a;

    move-result-object v1

    invoke-virtual {v1}, Lj00$a;->a()Lj00;

    move-result-object v5

    .line 10
    iget-object v1, p2, Lpy;->b:Lny;

    .line 11
    iget-object v2, v1, Lny;->a:Lny$a;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v2, v3}, Lbi;->m(ZLjava/lang/Object;)V

    .line 12
    iget-object v2, v1, Lny;->a:Lny$a;

    .line 13
    iget-object v3, p2, Lpy;->a:Landroid/content/Context;

    iget-object v6, p2, Lpy;->c:Lny$d;

    move-object v7, p0

    move-object v8, p0

    .line 14
    invoke-virtual/range {v2 .. v8}, Lny$a;->a(Landroid/content/Context;Landroid/os/Looper;Lj00;Ljava/lang/Object;Lqy$a;Lqy$b;)Lny$f;

    move-result-object v1

    .line 15
    iput-object v1, p0, Lzy$a;->f:Lny$f;

    .line 16
    instance-of v2, v1, Ly00;

    if-eqz v2, :cond_1

    .line 17
    move-object v2, v1

    check-cast v2, Ly00;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lzy$a;->g:Lny$b;

    goto :goto_1

    .line 18
    :cond_1
    iput-object v1, p0, Lzy$a;->g:Lny$b;

    .line 19
    :goto_1
    iget-object v2, p2, Lpy;->d:Lb00;

    .line 20
    iput-object v2, p0, Lzy$a;->h:Lb00;

    .line 21
    new-instance v2, Lez;

    invoke-direct {v2}, Lez;-><init>()V

    iput-object v2, p0, Lzy$a;->i:Lez;

    .line 22
    iget v2, p2, Lpy;->f:I

    .line 23
    iput v2, p0, Lzy$a;->l:I

    .line 24
    invoke-interface {v1}, Lny$f;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iget-object v0, p1, Lzy;->f:Landroid/content/Context;

    .line 26
    iget-object p1, p1, Lzy;->n:Landroid/os/Handler;

    .line 27
    new-instance v1, Ltz;

    invoke-virtual {p2}, Lpy;->a()Lj00$a;

    move-result-object p2

    invoke-virtual {p2}, Lj00$a;->a()Lj00;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Ltz;-><init>(Landroid/content/Context;Landroid/os/Handler;Lj00;)V

    .line 28
    iput-object v1, p0, Lzy$a;->m:Ltz;

    return-void

    .line 29
    :cond_2
    iput-object v0, p0, Lzy$a;->m:Ltz;

    return-void
.end method


# virtual methods
.method public final Z(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lzy$a;->g()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lzy$a;->q:Lzy;

    .line 6
    iget-object p1, p1, Lzy;->n:Landroid/os/Handler;

    .line 7
    new-instance v0, Llz;

    invoke-direct {v0, p0}, Llz;-><init>(Lzy$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 6
    iget-object v1, v0, Lzy;->h:Lp00;

    .line 7
    iget-object v0, v0, Lzy;->f:Landroid/content/Context;

    .line 8
    iget-object v2, p0, Lzy$a;->f:Lny$f;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "null reference"

    .line 10
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {v2}, Lny$f;->requiresGooglePlayServices()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    invoke-interface {v2}, Lny$f;->getMinApkVersion()I

    move-result v2

    .line 14
    iget-object v3, v1, Lp00;->a:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 15
    :goto_0
    iget-object v7, v1, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 16
    iget-object v7, v1, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-le v7, v2, :cond_3

    .line 17
    iget-object v8, v1, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_1
    if-ne v4, v5, :cond_5

    .line 18
    iget-object v3, v1, Lp00;->b:Lgy;

    invoke-virtual {v3, v0, v2}, Lgy;->d(Landroid/content/Context;I)I

    move-result v0

    move v4, v0

    .line 19
    :cond_5
    iget-object v0, v1, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v4, :cond_6

    .line 20
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 21
    invoke-virtual {p0, v0}, Lzy$a;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 22
    :cond_6
    new-instance v0, Lzy$c;

    iget-object v1, p0, Lzy$a;->q:Lzy;

    iget-object v2, p0, Lzy$a;->f:Lny$f;

    iget-object v3, p0, Lzy$a;->h:Lb00;

    invoke-direct {v0, v1, v2, v3}, Lzy$c;-><init>(Lzy;Lny$f;Lb00;)V

    .line 23
    invoke-interface {v2}, Lny$f;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    iget-object v1, p0, Lzy$a;->m:Ltz;

    .line 25
    iget-object v2, v1, Ltz;->j:Lu35;

    if-eqz v2, :cond_7

    .line 26
    invoke-interface {v2}, Lny$f;->disconnect()V

    .line 27
    :cond_7
    iget-object v2, v1, Ltz;->i:Lj00;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 28
    iput-object v3, v2, Lj00;->h:Ljava/lang/Integer;

    .line 29
    iget-object v2, v1, Ltz;->g:Lny$a;

    iget-object v3, v1, Ltz;->e:Landroid/content/Context;

    iget-object v4, v1, Ltz;->f:Landroid/os/Handler;

    .line 30
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Ltz;->i:Lj00;

    .line 31
    iget-object v6, v5, Lj00;->g:Lh35;

    move-object v7, v1

    move-object v8, v1

    .line 32
    invoke-virtual/range {v2 .. v8}, Lny$a;->a(Landroid/content/Context;Landroid/os/Looper;Lj00;Ljava/lang/Object;Lqy$a;Lqy$b;)Lny$f;

    move-result-object v2

    check-cast v2, Lu35;

    iput-object v2, v1, Ltz;->j:Lu35;

    .line 33
    iput-object v0, v1, Ltz;->k:Lwz;

    .line 34
    iget-object v2, v1, Ltz;->h:Ljava/util/Set;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 35
    :cond_8
    iget-object v1, v1, Ltz;->j:Lu35;

    invoke-interface {v1}, Lu35;->connect()V

    goto :goto_4

    .line 36
    :cond_9
    :goto_3
    iget-object v2, v1, Ltz;->f:Landroid/os/Handler;

    new-instance v3, Luz;

    invoke-direct {v3, v1}, Luz;-><init>(Ltz;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_a
    :goto_4
    iget-object v1, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v1, v0}, Lny$f;->connect(Li00$c;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->requiresSignIn()Z

    move-result v0

    return v0
.end method

.method public final c([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Lzy$a;->f:Lny$f;

    .line 3
    invoke-interface {v1}, Lny$f;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    .line 4
    :cond_1
    new-instance v3, Lf4;

    array-length v4, v1

    invoke-direct {v3, v4}, Lf4;-><init>(I)V

    .line 5
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 6
    iget-object v7, v6, Lcom/google/android/gms/common/Feature;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->n()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lm4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    .line 9
    iget-object v5, v4, Lcom/google/android/gms/common/Feature;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v5}, Lm4;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 11
    iget-object v5, v4, Lcom/google/android/gms/common/Feature;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v5}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->n()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final d(Liz;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lzy$a;->e(Liz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lzy$a;->l()V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lzy$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_3

    .line 10
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lzy$a;->g0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 12
    :cond_3
    invoke-virtual {p0}, Lzy$a;->a()V

    return-void
.end method

.method public final e(Liz;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lsz;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lzy$a;->n(Liz;)V

    return v1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lsz;

    .line 4
    invoke-virtual {v0, p0}, Lsz;->f(Lzy$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzy$a;->c([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lzy$a;->n(Liz;)V

    return v1

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Lsz;->g(Lzy$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    new-instance p1, Lzy$b;

    iget-object v0, p0, Lzy$a;->h:Lb00;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lzy$b;-><init>(Lb00;Lcom/google/android/gms/common/Feature;Ljz;)V

    .line 8
    iget-object v0, p0, Lzy$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v2, 0x1388

    const/16 v4, 0xf

    if-ltz v0, :cond_2

    .line 9
    iget-object p1, p0, Lzy$a;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$b;

    .line 10
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 11
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 12
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 14
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 15
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lzy$a;->q:Lzy;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lzy$a;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 20
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 21
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lzy$a;->q:Lzy;

    .line 22
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 24
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 25
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 26
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lzy$a;->q:Lzy;

    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    .line 28
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 29
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 30
    sget-object v1, Lzy;->q:Ljava/lang/Object;

    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 33
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lzy$a;->q:Lzy;

    iget v1, p0, Lzy$a;->l:I

    invoke-virtual {v0, p1, v1}, Lzy;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 37
    :cond_3
    new-instance p1, Lvy;

    invoke-direct {p1, v2}, Lvy;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Liz;->d(Ljava/lang/RuntimeException;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzy$a;->j()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lzy$a;->p(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {p0}, Lzy$a;->k()V

    .line 4
    iget-object v0, p0, Lzy$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lzy$a;->h()V

    .line 7
    invoke-virtual {p0}, Lzy$a;->l()V

    return-void

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrz;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lzy$a;->j()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lzy$a;->n:Z

    .line 3
    iget-object v1, p0, Lzy$a;->i:Lez;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lxz;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0, v2}, Lez;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 6
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 7
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 8
    iget-object v1, p0, Lzy$a;->h:Lb00;

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lzy$a;->q:Lzy;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 12
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 13
    iget-object v1, p0, Lzy$a;->h:Lb00;

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lzy$a;->q:Lzy;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 17
    iget-object v0, v0, Lzy;->h:Lp00;

    .line 18
    iget-object v0, v0, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final g0(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lzy$a;->m:Ltz;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Ltz;->j:Lu35;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lny$f;->disconnect()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lzy$a;->j()V

    .line 8
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 9
    iget-object v0, v0, Lzy;->h:Lp00;

    .line 10
    iget-object v0, v0, Lp00;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 11
    invoke-virtual {p0, p1}, Lzy$a;->p(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 12
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 13
    sget-object p1, Lzy;->p:Lcom/google/android/gms/common/api/Status;

    .line 14
    invoke-virtual {p0, p1}, Lzy$a;->m(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iput-object p1, p0, Lzy$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    .line 17
    :cond_2
    sget-object v0, Lzy;->q:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lzy$a;->q:Lzy;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lzy$a;->q:Lzy;

    iget v1, p0, Lzy$a;->l:I

    invoke-virtual {v0, p1, v1}, Lzy;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lzy$a;->n:Z

    .line 25
    :cond_3
    iget-boolean p1, p0, Lzy$a;->n:Z

    if-eqz p1, :cond_4

    .line 26
    iget-object p1, p0, Lzy$a;->q:Lzy;

    .line 27
    iget-object p1, p1, Lzy;->n:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 28
    iget-object v1, p0, Lzy$a;->h:Lb00;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzy$a;->q:Lzy;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 31
    :cond_4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, Lzy$a;->h:Lb00;

    .line 32
    iget-object v1, v1, Lb00;->b:Lny;

    .line 33
    iget-object v1, v1, Lny;->c:Ljava/lang/String;

    const/16 v2, 0x26

    .line 34
    invoke-static {v1, v2}, Ljo;->x(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "API: "

    const-string v4, " is not available on this device."

    invoke-static {v2, v3, v1, v4}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lzy$a;->m(Lcom/google/android/gms/common/api/Status;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Liz;

    .line 2
    iget-object v4, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v4}, Lny$f;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Lzy$a;->e(Liz;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    sget-object v0, Lzy;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lzy$a;->m(Lcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v1, p0, Lzy$a;->i:Lez;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2, v0}, Lez;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 8
    iget-object v0, p0, Lzy$a;->k:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lzy$a;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcz;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcz;

    .line 10
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 11
    new-instance v4, La00;

    new-instance v5, Lf45;

    invoke-direct {v5}, Lf45;-><init>()V

    invoke-direct {v4, v3, v5}, La00;-><init>(Lcz;Lf45;)V

    invoke-virtual {p0, v4}, Lzy$a;->d(Liz;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lzy$a;->p(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 13
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    new-instance v1, Lmz;

    invoke-direct {v1, p0}, Lmz;-><init>(Lzy$a;)V

    invoke-interface {v0, v1}, Lny$f;->onUserSignOut(Li00$e;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lzy$a;->p:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lzy$a;->n:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 3
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 4
    iget-object v2, p0, Lzy$a;->h:Lb00;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 6
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 7
    iget-object v2, p0, Lzy$a;->h:Lb00;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lzy$a;->n:Z

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lzy$a;->h:Lb00;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 5
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 6
    iget-object v1, p0, Lzy$a;->h:Lb00;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lzy$a;->q:Lzy;

    .line 7
    iget-wide v2, v2, Lzy;->e:J

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final l0(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lzy$a;->f()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lzy$a;->q:Lzy;

    .line 6
    iget-object p1, p1, Lzy;->n:Landroid/os/Handler;

    .line 7
    new-instance v0, Lkz;

    invoke-direct {v0, p0}, Lkz;-><init>(Lzy$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liz;

    .line 5
    invoke-virtual {v1, p1}, Liz;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final n(Liz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzy$a;->i:Lez;

    invoke-virtual {p0}, Lzy$a;->b()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Liz;->c(Lez;Z)V

    .line 2
    :try_start_0
    invoke-virtual {p1, p0}, Liz;->b(Lzy$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lzy$a;->Z(I)V

    .line 4
    iget-object p1, p0, Lzy$a;->f:Lny$f;

    invoke-interface {p1}, Lny$f;->disconnect()V

    return-void
.end method

.method public final o(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lzy$a;->q:Lzy;

    .line 2
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 3
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 4
    iget-object v0, p0, Lzy$a;->f:Lny$f;

    invoke-interface {v0}, Lny$f;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzy$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lzy$a;->i:Lez;

    .line 6
    iget-object v2, v0, Lez;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lez;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lzy$a;->l()V

    :cond_2
    return v1

    .line 8
    :cond_3
    iget-object p1, p0, Lzy$a;->f:Lny$f;

    invoke-interface {p1}, Lny$f;->disconnect()V

    return v3

    :cond_4
    return v1
.end method

.method public final p(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzy$a;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc00;

    .line 2
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->i:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v1}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lzy$a;->f:Lny$f;

    invoke-interface {p1}, Lny$f;->getEndpointPackageName()Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Lzy$a;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
