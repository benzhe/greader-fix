.class public final Ly54;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Ly54;",
        "Lx54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zzg:Ly54;


# instance fields
.field private zza:I

.field private zze:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lc64;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lt54;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly54;

    .line 1
    invoke-direct {v0}, Ly54;-><init>()V

    sput-object v0, Ly54;->zzg:Ly54;

    const-class v1, Ly54;

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
    iput-object v0, p0, Ly54;->zze:Li94;

    return-void
.end method

.method public static synthetic s()Ly54;
    .locals 1

    sget-object v0, Ly54;->zzg:Ly54;

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
    sget-object p1, Ly54;->zzg:Ly54;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lx54;

    .line 3
    invoke-direct {p1}, Lx54;-><init>()V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ly54;

    .line 5
    invoke-direct {p1}, Ly54;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zza"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 6
    const-class p2, Lc64;

    aput-object p2, p1, v1

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Ly54;->zzg:Ly54;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 8
    invoke-direct {p3, p2, v0, p1}, Lma4;-><init>(Lda4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    .line 9
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
