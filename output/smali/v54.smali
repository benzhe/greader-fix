.class public final Lv54;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lv54;",
        "Lu54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzg:Lv54;


# instance fields
.field private zza:I

.field private zze:Ljava/lang/String;

.field private zzf:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lc64;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv54;

    .line 1
    invoke-direct {v0}, Lv54;-><init>()V

    sput-object v0, Lv54;->zzg:Lv54;

    const-class v1, Lv54;

    .line 2
    invoke-static {v1, v0}, Lc94;->q(Ljava/lang/Class;Lc94;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc94;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lv54;->zze:Ljava/lang/String;

    .line 2
    sget-object v0, Lla4;->h:Lla4;

    .line 3
    iput-object v0, p0, Lv54;->zzf:Li94;

    return-void
.end method

.method public static synthetic s()Lv54;
    .locals 1

    sget-object v0, Lv54;->zzg:Lv54;

    return-object v0
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p3, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lv54;->zzg:Lv54;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lu54;

    .line 3
    invoke-direct {p1}, Lu54;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lv54;

    .line 5
    invoke-direct {p1}, Lv54;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zza"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    .line 6
    const-class p2, Lc64;

    aput-object p2, p1, v0

    sget-object p2, Lv54;->zzg:Lv54;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
