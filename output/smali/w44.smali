.class public final Lw44;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lw44;",
        "Lv44;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzg:Lw44;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw44;

    .line 1
    invoke-direct {v0}, Lw44;-><init>()V

    sput-object v0, Lw44;->zzg:Lw44;

    const-class v1, Lw44;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    return-void
.end method

.method public static w()Lv44;
    .locals 1

    sget-object v0, Lw44;->zzg:Lw44;

    .line 1
    invoke-virtual {v0}, Lc94;->m()Lz84;

    move-result-object v0

    check-cast v0, Lv44;

    return-object v0
.end method

.method public static synthetic x()Lw44;
    .locals 1

    sget-object v0, Lw44;->zzg:Lw44;

    return-object v0
.end method

.method public static synthetic y(Lw44;I)V
    .locals 1

    iget v0, p0, Lw44;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw44;->zza:I

    iput p1, p0, Lw44;->zze:I

    return-void
.end method

.method public static synthetic z(Lw44;J)V
    .locals 1

    iget v0, p0, Lw44;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lw44;->zza:I

    iput-wide p1, p0, Lw44;->zzf:J

    return-void
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lw44;->zzg:Lw44;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lv44;

    .line 3
    invoke-direct {p1, p3}, Lv44;-><init>(Lq44;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lw44;

    .line 5
    invoke-direct {p1}, Lw44;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zza"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    .line 6
    sget-object p2, Lw44;->zzg:Lw44;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

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

    iget v0, p0, Lw44;->zza:I

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

    iget v0, p0, Lw44;->zze:I

    return v0
.end method

.method public final u()Z
    .locals 1

    iget v0, p0, Lw44;->zza:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lw44;->zzf:J

    return-wide v0
.end method
