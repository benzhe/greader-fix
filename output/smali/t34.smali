.class public final Lt34;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lt34;",
        "Ls34;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzj:Lt34;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Le44;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lv34;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt34;

    .line 1
    invoke-direct {v0}, Lt34;-><init>()V

    sput-object v0, Lt34;->zzj:Lt34;

    const-class v1, Lt34;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    .line 2
    sget-object v0, Lla4;->h:Lla4;

    .line 3
    iput-object v0, p0, Lt34;->zzf:Li94;

    .line 4
    iput-object v0, p0, Lt34;->zzg:Li94;

    return-void
.end method

.method public static synthetic A()Lt34;
    .locals 1

    sget-object v0, Lt34;->zzj:Lt34;

    return-object v0
.end method

.method public static synthetic B(Lt34;ILe44;)V
    .locals 2

    iget-object v0, p0, Lt34;->zzf:Li94;

    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lt34;->zzf:Li94;

    :cond_0
    iget-object p0, p0, Lt34;->zzf:Li94;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic C(Lt34;ILv34;)V
    .locals 2

    iget-object v0, p0, Lt34;->zzg:Li94;

    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lt34;->zzg:Li94;

    :cond_0
    iget-object p0, p0, Lt34;->zzg:Li94;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
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
    sget-object p1, Lt34;->zzj:Lt34;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Ls34;

    .line 3
    invoke-direct {p1, p2}, Ls34;-><init>(Lr34;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lt34;

    .line 5
    invoke-direct {p1}, Lt34;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    .line 6
    const-class p2, Le44;

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-class p2, Lv34;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    sget-object p2, Lt34;->zzj:Lt34;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()Z
    .locals 2

    iget v0, p0, Lt34;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lt34;->zze:I

    return v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le44;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt34;->zzf:Li94;

    return-object v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lt34;->zzf:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final w(I)Le44;
    .locals 1

    iget-object v0, p0, Lt34;->zzf:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le44;

    return-object p1
.end method

.method public final x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lv34;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt34;->zzg:Li94;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Lt34;->zzg:Li94;

    .line 1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final z(I)Lv34;
    .locals 1

    iget-object v0, p0, Lt34;->zzg:Li94;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv34;

    return-object p1
.end method
