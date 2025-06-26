.class public final Lfp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnp0;


# static fields
.field public static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lja3$b;

.field public final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lja3$h$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Lop0;

.field public g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzaxn;

.field public final i:Ljava/lang/Object;

.field public j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfp0;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/zzaxn;Ljava/lang/String;Lop0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfp0;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfp0;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfp0;->i:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfp0;->j:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lfp0;->k:Z

    .line 7
    iput-boolean v0, p0, Lfp0;->l:Z

    const-string v1, "SafeBrowsing config is not present."

    .line 8
    invoke-static {p3, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lfp0;->e:Landroid/content/Context;

    .line 10
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    .line 11
    iput-object p5, p0, Lfp0;->f:Lop0;

    .line 12
    iput-object p3, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    .line 13
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzaxn;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 14
    iget-object p5, p0, Lfp0;->j:Ljava/util/HashSet;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lfp0;->j:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lja3;->L()Lja3$b;

    move-result-object p1

    .line 17
    sget-object p3, Lja3$g;->n:Lja3$g;

    .line 18
    iget-boolean p5, p1, Ls63$b;->g:Z

    if-eqz p5, :cond_2

    .line 19
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 20
    iput-boolean v0, p1, Ls63$b;->g:Z

    .line 21
    :cond_2
    iget-object p5, p1, Ls63$b;->f:Ls63;

    check-cast p5, Lja3;

    invoke-static {p5, p3}, Lja3;->B(Lja3;Lja3$g;)V

    .line 22
    iget-boolean p3, p1, Ls63$b;->g:Z

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 24
    iput-boolean v0, p1, Ls63$b;->g:Z

    .line 25
    :cond_3
    iget-object p3, p1, Ls63$b;->f:Ls63;

    check-cast p3, Lja3;

    invoke-static {p3, p4}, Lja3;->G(Lja3;Ljava/lang/String;)V

    .line 26
    iget-boolean p3, p1, Ls63$b;->g:Z

    if-eqz p3, :cond_4

    .line 27
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 28
    iput-boolean v0, p1, Ls63$b;->g:Z

    .line 29
    :cond_4
    iget-object p3, p1, Ls63$b;->f:Ls63;

    check-cast p3, Lja3;

    invoke-static {p3, p4}, Lja3;->I(Lja3;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lja3$a;->y()Lja3$a$a;

    move-result-object p3

    .line 31
    iget-object p4, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzaxn;->e:Ljava/lang/String;

    if-eqz p4, :cond_6

    .line 32
    iget-boolean p5, p3, Ls63$b;->g:Z

    if-eqz p5, :cond_5

    .line 33
    invoke-virtual {p3}, Ls63$b;->o()V

    .line 34
    iput-boolean v0, p3, Ls63$b;->g:Z

    .line 35
    :cond_5
    iget-object p5, p3, Ls63$b;->f:Ls63;

    check-cast p5, Lja3$a;

    invoke-static {p5, p4}, Lja3$a;->x(Lja3$a;Ljava/lang/String;)V

    .line 36
    :cond_6
    invoke-virtual {p3}, Ls63$b;->j()Le83;

    move-result-object p3

    check-cast p3, Ls63;

    check-cast p3, Lja3$a;

    .line 37
    iget-boolean p4, p1, Ls63$b;->g:Z

    if-eqz p4, :cond_7

    .line 38
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 39
    iput-boolean v0, p1, Ls63$b;->g:Z

    .line 40
    :cond_7
    iget-object p4, p1, Ls63$b;->f:Ls63;

    check-cast p4, Lja3;

    invoke-static {p4, p3}, Lja3;->z(Lja3;Lja3$a;)V

    .line 41
    invoke-static {}, Lja3$i;->A()Lja3$i$a;

    move-result-object p3

    iget-object p4, p0, Lfp0;->e:Landroid/content/Context;

    .line 42
    invoke-static {p4}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object p4

    invoke-virtual {p4}, Lh20;->c()Z

    move-result p4

    .line 43
    iget-boolean p5, p3, Ls63$b;->g:Z

    if-eqz p5, :cond_8

    .line 44
    invoke-virtual {p3}, Ls63$b;->o()V

    .line 45
    iput-boolean v0, p3, Ls63$b;->g:Z

    .line 46
    :cond_8
    iget-object p5, p3, Ls63$b;->f:Ls63;

    check-cast p5, Lja3$i;

    invoke-static {p5, p4}, Lja3$i;->z(Lja3$i;Z)V

    .line 47
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 48
    iget-boolean p4, p3, Ls63$b;->g:Z

    if-eqz p4, :cond_9

    .line 49
    invoke-virtual {p3}, Ls63$b;->o()V

    .line 50
    iput-boolean v0, p3, Ls63$b;->g:Z

    .line 51
    :cond_9
    iget-object p4, p3, Ls63$b;->f:Ls63;

    check-cast p4, Lja3$i;

    invoke-static {p4, p2}, Lja3$i;->y(Lja3$i;Ljava/lang/String;)V

    .line 52
    :cond_a
    sget-object p2, Lgy;->b:Lgy;

    .line 53
    iget-object p4, p0, Lfp0;->e:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lgy;->a(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v1, 0x0

    cmp-long p2, p4, v1

    if-lez p2, :cond_c

    .line 54
    iget-boolean p2, p3, Ls63$b;->g:Z

    if-eqz p2, :cond_b

    .line 55
    invoke-virtual {p3}, Ls63$b;->o()V

    .line 56
    iput-boolean v0, p3, Ls63$b;->g:Z

    .line 57
    :cond_b
    iget-object p2, p3, Ls63$b;->f:Ls63;

    check-cast p2, Lja3$i;

    invoke-static {p2, p4, p5}, Lja3$i;->x(Lja3$i;J)V

    .line 58
    :cond_c
    invoke-virtual {p3}, Ls63$b;->j()Le83;

    move-result-object p2

    check-cast p2, Ls63;

    check-cast p2, Lja3$i;

    .line 59
    iget-boolean p3, p1, Ls63$b;->g:Z

    if-eqz p3, :cond_d

    .line 60
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 61
    iput-boolean v0, p1, Ls63$b;->g:Z

    .line 62
    :cond_d
    iget-object p3, p1, Ls63$b;->f:Ls63;

    check-cast p3, Lja3;

    invoke-static {p3, p2}, Lja3;->E(Lja3;Lja3$i;)V

    .line 63
    iput-object p1, p0, Lfp0;->a:Lja3$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfp0;->f:Lop0;

    iget-object v2, p0, Lfp0;->e:Landroid/content/Context;

    iget-object v3, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lop0;->a(Landroid/content/Context;Ljava/util/Set;)Law2;

    move-result-object v1

    .line 4
    new-instance v2, Lhp0;

    invoke-direct {v2, p0}, Lhp0;-><init>(Lfp0;)V

    .line 5
    sget-object v3, Lms0;->f:Lzv2;

    .line 6
    invoke-static {v1, v2, v3}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    const-wide/16 v4, 0xa

    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lms0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    invoke-static {v1, v4, v5, v2, v6}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object v2

    .line 9
    new-instance v4, Lip0;

    invoke-direct {v4, v2}, Lip0;-><init>(Law2;)V

    .line 10
    new-instance v5, Lsv2;

    invoke-direct {v5, v1, v4}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    check-cast v1, Lsu2;

    invoke-virtual {v1, v5, v3}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 11
    sget-object v1, Lfp0;->m:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lfp0;->a:Lja3$b;

    .line 3
    iget-boolean v2, p1, Ls63$b;->g:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 5
    iput-boolean v1, p1, Ls63$b;->g:Z

    .line 6
    :cond_0
    iget-object p1, p1, Ls63$b;->f:Ls63;

    check-cast p1, Lja3;

    invoke-static {p1}, Lja3;->y(Lja3;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lfp0;->a:Lja3$b;

    .line 8
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 10
    iput-boolean v1, v2, Ls63$b;->g:Z

    .line 11
    :cond_2
    iget-object v1, v2, Ls63$b;->f:Ls63;

    check-cast v1, Lja3;

    invoke-static {v1, p1}, Lja3;->N(Lja3;Ljava/lang/String;)V

    .line 12
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iput-boolean v2, p0, Lfp0;->l:Z

    .line 3
    :cond_0
    iget-object v2, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-ne p3, v1, :cond_2

    .line 4
    iget-object p2, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lja3$h$b;

    invoke-static {p3}, Lja3$h$a;->i(I)Lja3$h$a;

    move-result-object p2

    .line 5
    iget-boolean p3, p1, Ls63$b;->g:Z

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1}, Ls63$b;->o()V

    .line 7
    iput-boolean v3, p1, Ls63$b;->g:Z

    .line 8
    :cond_1
    iget-object p1, p1, Ls63$b;->f:Ls63;

    check-cast p1, Lja3$h;

    invoke-static {p1, p2}, Lja3$h;->A(Lja3$h;Lja3$h$a;)V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lja3$h;->F()Lja3$h$b;

    move-result-object v1

    .line 11
    invoke-static {p3}, Lja3$h$a;->i(I)Lja3$h$a;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 12
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 14
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 15
    :cond_4
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lja3$h;

    invoke-static {v2, p3}, Lja3$h;->A(Lja3$h;Lja3$h$a;)V

    .line 16
    :cond_5
    iget-object p3, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    .line 17
    iget-boolean v2, v1, Ls63$b;->g:Z

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 19
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 20
    :cond_6
    iget-object v2, v1, Ls63$b;->f:Ls63;

    check-cast v2, Lja3$h;

    invoke-static {v2, p3}, Lja3$h;->y(Lja3$h;I)V

    .line 21
    iget-boolean p3, v1, Ls63$b;->g:Z

    if-eqz p3, :cond_7

    .line 22
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 23
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 24
    :cond_7
    iget-object p3, v1, Ls63$b;->f:Ls63;

    check-cast p3, Lja3$h;

    invoke-static {p3, p1}, Lja3$h;->B(Lja3$h;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lja3$d;->y()Lja3$d$b;

    move-result-object p3

    .line 26
    iget-object v2, p0, Lfp0;->j:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_e

    if-eqz p2, :cond_e

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v4, ""

    .line 29
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v2, ""

    .line 30
    :goto_2
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 31
    iget-object v6, p0, Lfp0;->j:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 32
    invoke-static {}, Lja3$c;->z()Lja3$c$a;

    move-result-object v5

    .line 33
    invoke-static {v4}, Lk53;->J(Ljava/lang/String;)Lk53;

    move-result-object v4

    .line 34
    iget-boolean v6, v5, Ls63$b;->g:Z

    if-eqz v6, :cond_b

    .line 35
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 36
    iput-boolean v3, v5, Ls63$b;->g:Z

    .line 37
    :cond_b
    iget-object v6, v5, Ls63$b;->f:Ls63;

    check-cast v6, Lja3$c;

    invoke-static {v6, v4}, Lja3$c;->x(Lja3$c;Lk53;)V

    .line 38
    invoke-static {v2}, Lk53;->J(Ljava/lang/String;)Lk53;

    move-result-object v2

    .line 39
    iget-boolean v4, v5, Ls63$b;->g:Z

    if-eqz v4, :cond_c

    .line 40
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 41
    iput-boolean v3, v5, Ls63$b;->g:Z

    .line 42
    :cond_c
    iget-object v4, v5, Ls63$b;->f:Ls63;

    check-cast v4, Lja3$c;

    invoke-static {v4, v2}, Lja3$c;->y(Lja3$c;Lk53;)V

    .line 43
    invoke-virtual {v5}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lja3$c;

    .line 44
    iget-boolean v4, p3, Ls63$b;->g:Z

    if-eqz v4, :cond_d

    .line 45
    invoke-virtual {p3}, Ls63$b;->o()V

    .line 46
    iput-boolean v3, p3, Ls63$b;->g:Z

    .line 47
    :cond_d
    iget-object v4, p3, Ls63$b;->f:Ls63;

    check-cast v4, Lja3$d;

    invoke-static {v4, v2}, Lja3$d;->x(Lja3$d;Lja3$c;)V

    goto :goto_0

    .line 48
    :cond_e
    invoke-virtual {p3}, Ls63$b;->j()Le83;

    move-result-object p2

    check-cast p2, Ls63;

    check-cast p2, Lja3$d;

    .line 49
    iget-boolean p3, v1, Ls63$b;->g:Z

    if-eqz p3, :cond_f

    .line 50
    invoke-virtual {v1}, Ls63$b;->o()V

    .line 51
    iput-boolean v3, v1, Ls63$b;->g:Z

    .line 52
    :cond_f
    iget-object p3, v1, Ls63$b;->f:Ls63;

    check-cast p3, Lja3$h;

    invoke-static {p3, p2}, Lja3$h;->z(Lja3$h;Lja3$d;)V

    .line 53
    iget-object p2, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaxn;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfp0;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaxn;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lfp0;->k:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzn(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to capture the webview bitmap."

    .line 4
    invoke-static {p1}, Lc50;->L3(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lfp0;->k:Z

    .line 6
    new-instance v0, Lep0;

    invoke-direct {v0, p0, p1}, Lep0;-><init>(Lfp0;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzaxn;
    .locals 1

    .line 1
    iget-object v0, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    return-object v0
.end method

.method public final h()Law2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfp0;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaxn;->k:Z

    if-nez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lfp0;->l:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzaxn;->j:Z

    if-nez v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaxn;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-static {v3}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_4
    iget-object v0, p0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v4, p0, Lfp0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lja3$h$b;

    .line 5
    iget-object v6, p0, Lfp0;->a:Lja3$b;

    invoke-virtual {v5}, Ls63$b;->j()Le83;

    move-result-object v5

    check-cast v5, Ls63;

    check-cast v5, Lja3$h;

    .line 6
    iget-boolean v7, v6, Ls63$b;->g:Z

    if-eqz v7, :cond_5

    .line 7
    invoke-virtual {v6}, Ls63$b;->o()V

    .line 8
    iput-boolean v1, v6, Ls63$b;->g:Z

    .line 9
    :cond_5
    iget-object v6, v6, Ls63$b;->f:Ls63;

    check-cast v6, Lja3;

    invoke-static {v6, v5}, Lja3;->D(Lja3;Lja3$h;)V

    goto :goto_1

    .line 10
    :cond_6
    iget-object v4, p0, Lfp0;->a:Lja3$b;

    iget-object v5, p0, Lfp0;->c:Ljava/util/List;

    .line 11
    iget-boolean v6, v4, Ls63$b;->g:Z

    if-eqz v6, :cond_7

    .line 12
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 13
    iput-boolean v1, v4, Ls63$b;->g:Z

    .line 14
    :cond_7
    iget-object v4, v4, Ls63$b;->f:Ls63;

    check-cast v4, Lja3;

    invoke-static {v4, v5}, Lja3;->F(Lja3;Ljava/lang/Iterable;)V

    .line 15
    iget-object v4, p0, Lfp0;->a:Lja3$b;

    iget-object v5, p0, Lfp0;->d:Ljava/util/List;

    .line 16
    iget-boolean v6, v4, Ls63$b;->g:Z

    if-eqz v6, :cond_8

    .line 17
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 18
    iput-boolean v1, v4, Ls63$b;->g:Z

    .line 19
    :cond_8
    iget-object v1, v4, Ls63$b;->f:Ls63;

    check-cast v1, Lja3;

    invoke-static {v1, v5}, Lja3;->H(Lja3;Ljava/lang/Iterable;)V

    .line 20
    sget-object v1, Lx60;->a:Le60;

    invoke-virtual {v1}, Le60;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lfp0;->a:Lja3$b;

    .line 22
    iget-object v4, v4, Ls63$b;->f:Ls63;

    check-cast v4, Lja3;

    invoke-virtual {v4}, Lja3;->x()Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v5, p0, Lfp0;->a:Lja3$b;

    .line 24
    iget-object v5, v5, Ls63$b;->f:Ls63;

    check-cast v5, Lja3;

    invoke-virtual {v5}, Lja3;->K()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sending SB report\n  url: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  clickUrl: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  resources: \n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v4, p0, Lfp0;->a:Lja3$b;

    .line 27
    iget-object v4, v4, Ls63$b;->f:Ls63;

    check-cast v4, Lja3;

    .line 28
    invoke-virtual {v4}, Lja3;->J()Ljava/util/List;

    move-result-object v4

    .line 29
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 30
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lja3$h;

    const-string v6, "    ["

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5}, Lja3$h;->E()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5}, Lja3$h;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 35
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc50;->L3(Ljava/lang/String;)V

    .line 36
    :cond_a
    iget-object v1, p0, Lfp0;->a:Lja3$b;

    invoke-virtual {v1}, Ls63$b;->j()Le83;

    move-result-object v1

    check-cast v1, Ls63;

    check-cast v1, Lja3;

    invoke-virtual {v1}, Lb53;->b()[B

    move-result-object v1

    iget-object v4, p0, Lfp0;->h:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaxn;->f:Ljava/lang/String;

    .line 37
    new-instance v5, Lcom/google/android/gms/ads/internal/util/zzay;

    iget-object v6, p0, Lfp0;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/internal/util/zzay;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/google/android/gms/ads/internal/util/zzay;->zza(ILjava/lang/String;Ljava/util/Map;[B)Law2;

    move-result-object v1

    .line 39
    sget-object v2, Lx60;->a:Le60;

    invoke-virtual {v2}, Le60;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 40
    sget-object v2, Lgp0;->e:Ljava/lang/Runnable;

    sget-object v3, Lms0;->a:Lzv2;

    invoke-interface {v1, v2, v3}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 41
    :cond_b
    sget-object v2, Ljp0;->a:Lvs2;

    .line 42
    sget-object v3, Lms0;->f:Lzv2;

    .line 43
    invoke-static {v1, v2, v3}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    .line 44
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
