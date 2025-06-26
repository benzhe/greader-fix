.class public final Lrm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsm2;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lbn2;",
            "Lpm2;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/google/android/gms/internal/ads/zzdrc;

.field public c:Lum2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 4
    new-instance p1, Lum2;

    invoke-direct {p1}, Lum2;-><init>()V

    iput-object p1, p0, Lrm2;->c:Lum2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    sget-object v0, Ly40;->R3:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->j:Lym2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lrm2;->c:Lum2;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\tPool does not exist: "

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v3, v1, Lum2;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\tNew pools created: "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v3, v1, Lum2;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\tPools removed: "

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v3, v1, Lum2;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\tEntries added: "

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v3, v1, Lum2;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n\tNo entries retrieved: "

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, v1, Lum2;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbn2;

    invoke-interface {v5}, Lbn2;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 31
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpm2;

    invoke-virtual {v6}, Lpm2;->a()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpm2;

    invoke-virtual {v5}, Lpm2;->a()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpm2;

    .line 37
    iget-object v4, v4, Lpm2;->d:Lqn2;

    .line 38
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created: "

    .line 40
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v6, v4, Lqn2;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Last accessed: "

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-wide v6, v4, Lqn2;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " Accesses: "

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget v6, v4, Lqn2;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\nEntries retrieved: Valid: "

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v6, v4, Lqn2;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Stale: "

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v4, v4, Lqn2;->f:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 53
    :cond_2
    :goto_3
    iget-object v1, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 56
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final b(Lcn2;Lpn2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn2<",
            "*>;",
            "Lpn2;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lrp3;->y()Lrp3$b;

    move-result-object v0

    .line 2
    invoke-static {}, Lrp3$a;->A()Lrp3$a$a;

    move-result-object v1

    sget-object v2, Lrp3$c;->g:Lrp3$c;

    .line 3
    invoke-virtual {v1, v2}, Lrp3$a$a;->q(Lrp3$c;)Lrp3$a$a;

    .line 4
    invoke-static {}, Lrp3$d;->z()Lrp3$d$a;

    move-result-object v2

    iget-boolean v3, p2, Lpn2;->e:Z

    .line 5
    iget-boolean v4, v2, Ls63$b;->g:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 7
    iput-boolean v5, v2, Ls63$b;->g:Z

    .line 8
    :cond_0
    iget-object v4, v2, Ls63$b;->f:Ls63;

    check-cast v4, Lrp3$d;

    invoke-static {v4, v3}, Lrp3$d;->y(Lrp3$d;Z)V

    .line 9
    iget p2, p2, Lpn2;->f:I

    .line 10
    iget-boolean v3, v2, Ls63$b;->g:Z

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v2}, Ls63$b;->o()V

    .line 12
    iput-boolean v5, v2, Ls63$b;->g:Z

    .line 13
    :cond_1
    iget-object v3, v2, Ls63$b;->f:Ls63;

    check-cast v3, Lrp3$d;

    invoke-static {v3, p2}, Lrp3$d;->x(Lrp3$d;I)V

    .line 14
    invoke-virtual {v1, v2}, Lrp3$a$a;->p(Lrp3$d$a;)Lrp3$a$a;

    .line 15
    invoke-virtual {v0, v1}, Lrp3$b;->p(Lrp3$a$a;)Lrp3$b;

    .line 16
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p2

    check-cast p2, Ls63;

    check-cast p2, Lrp3;

    .line 17
    iget-object p1, p1, Lcn2;->a:Lh71;

    .line 18
    iget-object p1, p1, Lh71;->f:Lmd1;

    .line 19
    new-instance v0, Lpd1;

    invoke-direct {v0, p2}, Lpd1;-><init>(Lrp3;)V

    invoke-virtual {p1, v0}, Lxd1;->D0(Lzd1;)V

    .line 20
    :cond_2
    invoke-virtual {p0}, Lrm2;->a()V

    return-void
.end method

.method public final declared-synchronized c(Lbn2;Lcn2;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbn2;",
            "Lcn2<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpm2;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v1

    invoke-interface {v1}, Lb20;->a()J

    move-result-wide v1

    iput-wide v1, p2, Lcn2;->d:J

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 3
    new-instance v0, Lpm2;

    iget-object v2, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzdrc;->l:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdrc;->m:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v3, v2}, Lpm2;-><init>(II)V

    .line 4
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzdrc;->k:I

    if-ne v2, v4, :cond_a

    .line 5
    sget-object v2, Lvm2;->a:[I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->p:I

    sub-int/2addr v3, v1

    aget v2, v2, v3

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    if-eq v2, v1, :cond_6

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const v2, 0x7fffffff

    .line 6
    iget-object v3, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpm2;

    .line 8
    iget-object v6, v6, Lpm2;->d:Lqn2;

    .line 9
    iget v6, v6, Lqn2;->d:I

    if-ge v6, v2, :cond_1

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpm2;

    .line 11
    iget-object v2, v2, Lpm2;->d:Lqn2;

    .line 12
    iget v2, v2, Lqn2;->d:I

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lbn2;

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_9

    .line 14
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 15
    :cond_3
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpm2;

    .line 17
    iget-object v7, v7, Lpm2;->d:Lqn2;

    .line 18
    iget-wide v7, v7, Lqn2;->c:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_4

    .line 19
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpm2;

    .line 20
    iget-object v3, v3, Lpm2;->d:Lqn2;

    .line 21
    iget-wide v3, v3, Lqn2;->c:J

    .line 22
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbn2;

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_9

    .line 23
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 24
    :cond_6
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lpm2;

    .line 26
    iget-object v7, v7, Lpm2;->d:Lqn2;

    .line 27
    iget-wide v7, v7, Lqn2;->a:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_7

    .line 28
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpm2;

    .line 29
    iget-object v3, v3, Lpm2;->d:Lqn2;

    .line 30
    iget-wide v3, v3, Lqn2;->a:J

    .line 31
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbn2;

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    .line 32
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_9
    :goto_3
    iget-object v2, p0, Lrm2;->c:Lum2;

    .line 34
    iget v3, v2, Lum2;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lum2;->c:I

    .line 35
    iget-object v2, v2, Lum2;->a:Lwm2;

    iput-boolean v1, v2, Lwm2;->f:Z

    .line 36
    :cond_a
    iget-object v2, p0, Lrm2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lrm2;->c:Lum2;

    .line 38
    iget v2, p1, Lum2;->b:I

    add-int/2addr v2, v1

    iput v2, p1, Lum2;->b:I

    .line 39
    iget-object p1, p1, Lum2;->a:Lwm2;

    iput-boolean v1, p1, Lwm2;->e:Z

    .line 40
    :cond_b
    iget-object p1, v0, Lpm2;->d:Lqn2;

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v2

    iput-wide v2, p1, Lqn2;->c:J

    .line 43
    iget v2, p1, Lqn2;->d:I

    add-int/2addr v2, v1

    iput v2, p1, Lqn2;->d:I

    .line 44
    invoke-virtual {v0}, Lpm2;->c()V

    .line 45
    iget-object p1, v0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v2, v0, Lpm2;->b:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_c

    const/4 p1, 0x0

    goto :goto_4

    .line 46
    :cond_c
    iget-object p1, v0, Lpm2;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 47
    :goto_4
    iget-object v2, p0, Lrm2;->c:Lum2;

    .line 48
    iget v4, v2, Lum2;->f:I

    add-int/2addr v4, v1

    iput v4, v2, Lum2;->f:I

    .line 49
    iget-object v1, v2, Lum2;->a:Lwm2;

    invoke-virtual {v1}, Lwm2;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwm2;

    .line 50
    iget-object v2, v2, Lum2;->a:Lwm2;

    .line 51
    iput-boolean v3, v2, Lwm2;->e:Z

    .line 52
    iput-boolean v3, v2, Lwm2;->f:Z

    .line 53
    iget-object v0, v0, Lpm2;->d:Lqn2;

    .line 54
    iget-object v2, v0, Lqn2;->b:Lpn2;

    invoke-virtual {v2}, Lpn2;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpn2;

    .line 55
    iget-object v0, v0, Lqn2;->b:Lpn2;

    .line 56
    iput-boolean v3, v0, Lpn2;->e:Z

    .line 57
    iput v3, v0, Lpn2;->f:I

    .line 58
    invoke-static {}, Lrp3;->y()Lrp3$b;

    move-result-object v0

    .line 59
    invoke-static {}, Lrp3$a;->A()Lrp3$a$a;

    move-result-object v4

    sget-object v5, Lrp3$c;->g:Lrp3$c;

    .line 60
    invoke-virtual {v4, v5}, Lrp3$a$a;->q(Lrp3$c;)Lrp3$a$a;

    .line 61
    invoke-static {}, Lrp3$e;->A()Lrp3$e$a;

    move-result-object v5

    iget-boolean v6, v1, Lwm2;->e:Z

    .line 62
    iget-boolean v7, v5, Ls63$b;->g:Z

    if-eqz v7, :cond_d

    .line 63
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 64
    iput-boolean v3, v5, Ls63$b;->g:Z

    .line 65
    :cond_d
    iget-object v7, v5, Ls63$b;->f:Ls63;

    check-cast v7, Lrp3$e;

    invoke-static {v7, v6}, Lrp3$e;->y(Lrp3$e;Z)V

    .line 66
    iget-boolean v1, v1, Lwm2;->f:Z

    .line 67
    iget-boolean v6, v5, Ls63$b;->g:Z

    if-eqz v6, :cond_e

    .line 68
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 69
    iput-boolean v3, v5, Ls63$b;->g:Z

    .line 70
    :cond_e
    iget-object v6, v5, Ls63$b;->f:Ls63;

    check-cast v6, Lrp3$e;

    invoke-static {v6, v1}, Lrp3$e;->z(Lrp3$e;Z)V

    .line 71
    iget v1, v2, Lpn2;->f:I

    .line 72
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_f

    .line 73
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 74
    iput-boolean v3, v5, Ls63$b;->g:Z

    .line 75
    :cond_f
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Lrp3$e;

    invoke-static {v2, v1}, Lrp3$e;->x(Lrp3$e;I)V

    .line 76
    iget-boolean v1, v4, Ls63$b;->g:Z

    if-eqz v1, :cond_10

    .line 77
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 78
    iput-boolean v3, v4, Ls63$b;->g:Z

    .line 79
    :cond_10
    iget-object v1, v4, Ls63$b;->f:Ls63;

    check-cast v1, Lrp3$a;

    invoke-virtual {v5}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lrp3$e;

    invoke-static {v1, v2}, Lrp3$a;->z(Lrp3$a;Lrp3$e;)V

    .line 80
    invoke-virtual {v0, v4}, Lrp3$b;->p(Lrp3$a$a;)Lrp3$b;

    .line 81
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Lrp3;

    .line 82
    iget-object p2, p2, Lcn2;->a:Lh71;

    .line 83
    iget-object p2, p2, Lh71;->f:Lmd1;

    .line 84
    new-instance v1, Lod1;

    invoke-direct {v1, v0}, Lod1;-><init>(Lrp3;)V

    invoke-virtual {p2, v1}, Lxd1;->D0(Lzd1;)V

    .line 85
    invoke-virtual {p0}, Lrm2;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
