.class public final Lx34;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lx34;",
        "Lw34;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzi:Lx34;


# instance fields
.field private zza:I

.field private zze:Li44;

.field private zzf:Lc44;

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx34;

    .line 1
    invoke-direct {v0}, Lx34;-><init>()V

    sput-object v0, Lx34;->zzi:Lx34;

    const-class v1, Lx34;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lx34;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static A()Lx34;
    .locals 1

    sget-object v0, Lx34;->zzi:Lx34;

    return-object v0
.end method

.method public static synthetic B()Lx34;
    .locals 1

    sget-object v0, Lx34;->zzi:Lx34;

    return-object v0
.end method

.method public static synthetic C(Lx34;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lx34;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lx34;->zza:I

    iput-object p1, p0, Lx34;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lx34;->zzi:Lx34;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lw34;

    .line 3
    invoke-direct {p1, p2}, Lw34;-><init>(Lr34;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lx34;

    .line 5
    invoke-direct {p1}, Lx34;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zza"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lx34;->zzi:Lx34;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

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

    iget v0, p0, Lx34;->zza:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Li44;
    .locals 1

    iget-object v0, p0, Lx34;->zze:Li44;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Li44;->A()Li44;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u()Z
    .locals 1

    iget v0, p0, Lx34;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Lc44;
    .locals 1

    iget-object v0, p0, Lx34;->zzf:Lc44;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lc44;->C()Lc44;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Lx34;->zza:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lx34;->zzg:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    iget v0, p0, Lx34;->zza:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx34;->zzh:Ljava/lang/String;

    return-object v0
.end method
