.class public final Lc64;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lc64;",
        "Lz54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzk:Lc64;


# instance fields
.field private zza:I

.field private zze:I

.field private zzf:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lc64;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc64;

    .line 1
    invoke-direct {v0}, Lc64;-><init>()V

    sput-object v0, Lc64;->zzk:Lc64;

    const-class v1, Lc64;

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
    iput-object v0, p0, Lc64;->zzf:Li94;

    const-string v0, ""

    iput-object v0, p0, Lc64;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lc64;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic s()Lc64;
    .locals 1

    sget-object v0, Lc64;->zzk:Lc64;

    return-object v0
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

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lc64;->zzk:Lc64;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lz54;

    .line 3
    invoke-direct {p1}, Lz54;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lc64;

    .line 5
    invoke-direct {p1}, Lc64;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zza"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 6
    sget-object p2, La64;->a:Lf94;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-class p2, Lc64;

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lc64;->zzk:Lc64;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
