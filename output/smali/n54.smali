.class public final Ln54;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Ln54;",
        "Lm54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzh:Ln54;


# instance fields
.field private zza:Lh94;

.field private zze:Lh94;

.field private zzf:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lw44;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lp54;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln54;

    .line 1
    invoke-direct {v0}, Ln54;-><init>()V

    sput-object v0, Ln54;->zzh:Ln54;

    const-class v1, Ln54;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    .line 2
    sget-object v0, Lt94;->h:Lt94;

    .line 3
    iput-object v0, p0, Ln54;->zza:Lh94;

    .line 4
    iput-object v0, p0, Ln54;->zze:Lh94;

    .line 5
    sget-object v0, Lla4;->h:Lla4;

    .line 6
    iput-object v0, p0, Ln54;->zzf:Li94;

    .line 7
    iput-object v0, p0, Ln54;->zzg:Li94;

    return-void
.end method

.method public static C()Lm54;
    .locals 1

    sget-object v0, Ln54;->zzh:Ln54;

    .line 1
    invoke-virtual {v0}, Lc94;->m()Lz84;

    move-result-object v0

    check-cast v0, Lm54;

    return-object v0
.end method

.method public static D()Ln54;
    .locals 1

    sget-object v0, Ln54;->zzh:Ln54;

    return-object v0
.end method

.method public static synthetic E()Ln54;
    .locals 1

    sget-object v0, Ln54;->zzh:Ln54;

    return-object v0
.end method

.method public static F(Ln54;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Ln54;->zza:Lh94;

    move-object v1, v0

    check-cast v1, Lu74;

    .line 1
    iget-boolean v1, v1, Lu74;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lc94;->k(Lh94;)Lh94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zza:Lh94;

    :cond_0
    iget-object p0, p0, Ln54;->zza:Lh94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static G(Ln54;)V
    .locals 1

    .line 1
    sget-object v0, Lt94;->h:Lt94;

    .line 2
    iput-object v0, p0, Ln54;->zza:Lh94;

    return-void
.end method

.method public static H(Ln54;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Ln54;->zze:Lh94;

    move-object v1, v0

    check-cast v1, Lu74;

    .line 1
    iget-boolean v1, v1, Lu74;->e:Z

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lc94;->k(Lh94;)Lh94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zze:Lh94;

    :cond_0
    iget-object p0, p0, Ln54;->zze:Lh94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static I(Ln54;)V
    .locals 1

    .line 1
    sget-object v0, Lt94;->h:Lt94;

    .line 2
    iput-object v0, p0, Ln54;->zze:Lh94;

    return-void
.end method

.method public static J(Ln54;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln54;->zzf:Li94;

    .line 2
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zzf:Li94;

    .line 4
    :cond_0
    iget-object p0, p0, Ln54;->zzf:Li94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static K(Ln54;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln54;->zzf:Li94;

    .line 2
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zzf:Li94;

    .line 4
    :cond_0
    iget-object p0, p0, Ln54;->zzf:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static L(Ln54;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln54;->zzg:Li94;

    .line 2
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zzg:Li94;

    .line 4
    :cond_0
    iget-object p0, p0, Ln54;->zzg:Li94;

    invoke-static {p1, p0}, Lt74;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static M(Ln54;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln54;->zzg:Li94;

    .line 2
    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Ln54;->zzg:Li94;

    .line 4
    :cond_0
    iget-object p0, p0, Ln54;->zzg:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget-object v0, p0, Ln54;->zzg:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final B(I)Lp54;
    .locals 1

    iget-object v0, p0, Ln54;->zzg:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp54;

    return-object p1
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Ln54;->zzh:Ln54;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lm54;

    .line 3
    invoke-direct {p1, p2}, Lm54;-><init>(Lq44;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ln54;

    .line 5
    invoke-direct {p1}, Ln54;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Lw44;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lp54;

    aput-object p2, p1, p3

    sget-object p2, Ln54;->zzh:Ln54;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln54;->zza:Lh94;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Ln54;->zza:Lh94;

    .line 1
    check-cast v0, Lt94;

    invoke-virtual {v0}, Lt94;->size()I

    move-result v0

    return v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln54;->zze:Lh94;

    return-object v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Ln54;->zze:Lh94;

    .line 1
    check-cast v0, Lt94;

    invoke-virtual {v0}, Lt94;->size()I

    move-result v0

    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw44;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln54;->zzf:Li94;

    return-object v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Ln54;->zzf:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final y(I)Lw44;
    .locals 1

    iget-object v0, p0, Ln54;->zzf:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw44;

    return-object p1
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lp54;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ln54;->zzg:Li94;

    return-object v0
.end method
