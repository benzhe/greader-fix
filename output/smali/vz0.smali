.class public final Lvz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lof2;

.field public b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lee2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Loe2;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lse2;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lye2;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ldf2;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lnf2;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lxf2;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lyr1;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lyr1;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lyr1;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lyr1;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Map<",
            "Lap2;",
            "Lyr1;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lfp2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public r:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lfp2;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public s:Lmb3;

.field public t:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lzo2;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic u:Lpz0;


# direct methods
.method public constructor <init>(Lpz0;Lof2;Loz0;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lvz0;->u:Lpz0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lvz0;->a:Lof2;

    .line 4
    new-instance p3, Lqf2;

    invoke-direct {p3, p2}, Lqf2;-><init>(Lof2;)V

    .line 5
    iput-object p3, p0, Lvz0;->b:Lmb3;

    .line 6
    sget-object v6, Lp11;->a:Lq11;

    .line 7
    iget-object v7, p1, Lpz0;->g:Lmb3;

    .line 8
    iget-object v8, p1, Lpz0;->m:Lmb3;

    .line 9
    sget-object v9, Lbo2;->a:Lyn2;

    .line 10
    new-instance v10, Lfe2;

    move-object v0, v10

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfe2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 11
    iput-object v10, p0, Lvz0;->c:Lmb3;

    .line 12
    new-instance v10, Lrf2;

    invoke-direct {v10, p2}, Lrf2;-><init>(Lof2;)V

    .line 13
    iput-object v10, p0, Lvz0;->d:Lmb3;

    .line 14
    sget-object v0, Lgz0;->a:Lhz0;

    .line 15
    new-instance v1, Lqe2;

    invoke-direct {v1, v0, v7, v10, v9}, Lqe2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 16
    iput-object v1, p0, Lvz0;->e:Lmb3;

    .line 17
    iget-object v4, p1, Lpz0;->R:Lmb3;

    .line 18
    new-instance v11, Lwe2;

    move-object v0, v11

    move-object v1, v6

    move-object v2, p3

    move-object v3, v7

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lwe2;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 19
    iput-object v11, p0, Lvz0;->f:Lmb3;

    .line 20
    sget-object p3, Lj11;->a:Lk11;

    .line 21
    new-instance v0, Laf2;

    invoke-direct {v0, p3, v9, v7}, Laf2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 22
    iput-object v0, p0, Lvz0;->g:Lmb3;

    .line 23
    sget-object p3, Ll11;->a:Lm11;

    .line 24
    new-instance v0, Lff2;

    invoke-direct {v0, p3, v9, v10}, Lff2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 25
    iput-object v0, p0, Lvz0;->h:Lmb3;

    .line 26
    sget-object p3, Ln11;->a:Lo11;

    .line 27
    new-instance v0, Lpf2;

    invoke-direct {v0, p3, v8, v7}, Lpf2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 28
    iput-object v0, p0, Lvz0;->i:Lmb3;

    .line 29
    new-instance p3, Lzf2;

    invoke-direct {p3, v9}, Lzf2;-><init>(Lmb3;)V

    .line 30
    iput-object p3, p0, Lvz0;->j:Lmb3;

    .line 31
    new-instance p3, Lsf2;

    invoke-direct {p3, p2}, Lsf2;-><init>(Lof2;)V

    .line 32
    iput-object p3, p0, Lvz0;->k:Lmb3;

    .line 33
    sget-object p2, Lqr1;->a:Lnr1;

    .line 34
    sget-object p3, Ldb3;->c:Ljava/lang/Object;

    .line 35
    instance-of p3, p2, Ldb3;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p3, Ldb3;

    invoke-direct {p3, p2}, Ldb3;-><init>(Lmb3;)V

    move-object p2, p3

    .line 37
    :goto_0
    iput-object p2, p0, Lvz0;->l:Lmb3;

    .line 38
    sget-object p2, Lor1;->a:Llr1;

    .line 39
    instance-of p3, p2, Ldb3;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    new-instance p3, Ldb3;

    invoke-direct {p3, p2}, Ldb3;-><init>(Lmb3;)V

    move-object p2, p3

    .line 41
    :goto_1
    iput-object p2, p0, Lvz0;->m:Lmb3;

    .line 42
    sget-object p2, Lsr1;->a:Lpr1;

    .line 43
    instance-of p3, p2, Ldb3;

    if-eqz p3, :cond_2

    goto :goto_2

    .line 44
    :cond_2
    new-instance p3, Ldb3;

    invoke-direct {p3, p2}, Ldb3;-><init>(Lmb3;)V

    move-object p2, p3

    .line 45
    :goto_2
    iput-object p2, p0, Lvz0;->n:Lmb3;

    .line 46
    sget-object p2, Lur1;->a:Lrr1;

    .line 47
    instance-of p3, p2, Ldb3;

    if-eqz p3, :cond_3

    goto :goto_3

    .line 48
    :cond_3
    new-instance p3, Ldb3;

    invoke-direct {p3, p2}, Ldb3;-><init>(Lmb3;)V

    move-object p2, p3

    .line 49
    :goto_3
    iput-object p2, p0, Lvz0;->o:Lmb3;

    const/4 p2, 0x4

    .line 50
    invoke-static {p2}, Leb3;->a(I)Lgb3;

    move-result-object p2

    sget-object p3, Lap2;->j:Lap2;

    iget-object v0, p0, Lvz0;->l:Lmb3;

    .line 51
    iget-object v1, p2, Lgb3;->a:Ljava/util/LinkedHashMap;

    const-string v2, "provider"

    .line 52
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object p3, Lap2;->l:Lap2;

    iget-object v0, p0, Lvz0;->m:Lmb3;

    .line 55
    iget-object v1, p2, Lgb3;->a:Ljava/util/LinkedHashMap;

    .line 56
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object p3, Lap2;->m:Lap2;

    iget-object v0, p0, Lvz0;->n:Lmb3;

    .line 59
    iget-object v1, p2, Lgb3;->a:Ljava/util/LinkedHashMap;

    .line 60
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p3, Lap2;->n:Lap2;

    iget-object v0, p0, Lvz0;->o:Lmb3;

    .line 63
    iget-object v1, p2, Lgb3;->a:Ljava/util/LinkedHashMap;

    .line 64
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p2}, Lgb3;->a()Leb3;

    move-result-object p2

    iput-object p2, p0, Lvz0;->p:Lmb3;

    .line 67
    iget-object p3, p0, Lvz0;->k:Lmb3;

    .line 68
    iget-object v0, p1, Lpz0;->g:Lmb3;

    .line 69
    new-instance v1, Ltr1;

    invoke-direct {v1, p3, v0, v9, p2}, Ltr1;-><init>(Lmb3;Lmb3;Lmb3;Lmb3;)V

    .line 70
    instance-of p2, v1, Ldb3;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 71
    :cond_4
    new-instance p2, Ldb3;

    invoke-direct {p2, v1}, Ldb3;-><init>(Lmb3;)V

    move-object v1, p2

    .line 72
    :goto_4
    iput-object v1, p0, Lvz0;->q:Lmb3;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 73
    invoke-static {p2, p3}, Ljb3;->a(II)Llb3;

    move-result-object p2

    iget-object p3, p0, Lvz0;->q:Lmb3;

    .line 74
    iget-object v0, p2, Llb3;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p2}, Llb3;->a()Ljb3;

    move-result-object p2

    iput-object p2, p0, Lvz0;->r:Lmb3;

    .line 76
    new-instance p3, Lhp2;

    invoke-direct {p3, p2}, Lhp2;-><init>(Lmb3;)V

    .line 77
    iput-object p3, p0, Lvz0;->s:Lmb3;

    .line 78
    iget-object p1, p1, Lpz0;->m:Lmb3;

    .line 79
    new-instance p2, Lip2;

    invoke-direct {p2, v9, p1, p3}, Lip2;-><init>(Lmb3;Lmb3;Lmb3;)V

    .line 80
    instance-of p1, p2, Ldb3;

    if-eqz p1, :cond_5

    goto :goto_5

    .line 81
    :cond_5
    new-instance p1, Ldb3;

    invoke-direct {p1, p2}, Ldb3;-><init>(Lmb3;)V

    move-object p2, p1

    .line 82
    :goto_5
    iput-object p2, p0, Lvz0;->t:Lmb3;

    return-void
.end method


# virtual methods
.method public final a()Lhf2;
    .locals 5

    .line 1
    new-instance v0, Lhf2;

    .line 2
    new-instance v1, Lm40;

    invoke-direct {v1}, Lm40;-><init>()V

    .line 3
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v2

    iget-object v3, p0, Lvz0;->a:Lof2;

    .line 4
    iget-object v3, v3, Lof2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzauj;->i:Ljava/util/List;

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lhf2;-><init>(Lm40;Lzv2;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Lje2;
    .locals 7

    .line 1
    new-instance v6, Lje2;

    .line 2
    new-instance v1, Lir0;

    invoke-direct {v1}, Lir0;-><init>()V

    .line 3
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v2

    iget-object v0, p0, Lvz0;->a:Lof2;

    .line 4
    iget-object v0, v0, Lof2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauj;->e:Landroid/os/Bundle;

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 5
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lvz0;->a:Lof2;

    .line 7
    iget-object v4, v0, Lof2;->a:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzauj;->j:Landroid/content/pm/PackageInfo;

    .line 8
    iget v5, v0, Lof2;->b:I

    move-object v0, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Lje2;-><init>(Lkr0;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/content/pm/PackageInfo;I)V

    return-object v6
.end method

.method public final c()Lzo2;
    .locals 1

    .line 1
    iget-object v0, p0, Lvz0;->t:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzo2;

    return-object v0
.end method
