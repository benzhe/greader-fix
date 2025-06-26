.class public final Lf54;
.super Lc94;
.source "SourceFile"

# interfaces
.implements Lea4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc94<",
        "Lf54;",
        "Le54;",
        ">;",
        "Lea4;"
    }
.end annotation


# static fields
.field private static final zze:Lf54;


# instance fields
.field private zza:Li94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li94<",
            "Lh54;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf54;

    .line 1
    invoke-direct {v0}, Lf54;-><init>()V

    sput-object v0, Lf54;->zze:Lf54;

    const-class v1, Lf54;

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
    iput-object v0, p0, Lf54;->zza:Li94;

    return-void
.end method

.method public static u()Le54;
    .locals 1

    sget-object v0, Lf54;->zze:Lf54;

    .line 1
    invoke-virtual {v0}, Lc94;->m()Lz84;

    move-result-object v0

    check-cast v0, Le54;

    return-object v0
.end method

.method public static synthetic v()Lf54;
    .locals 1

    sget-object v0, Lf54;->zze:Lf54;

    return-object v0
.end method

.method public static synthetic w(Lf54;Lh54;)V
    .locals 2

    iget-object v0, p0, Lf54;->zza:Li94;

    invoke-interface {v0}, Li94;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lc94;->l(Li94;)Li94;

    move-result-object v0

    iput-object v0, p0, Lf54;->zza:Li94;

    :cond_0
    iget-object p0, p0, Lf54;->zza:Li94;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lf54;->zze:Lf54;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Le54;

    .line 3
    invoke-direct {p1, p3}, Le54;-><init>(Lq44;)V

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lf54;

    .line 5
    invoke-direct {p1}, Lf54;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zza"

    aput-object v0, p1, p3

    .line 6
    const-class p3, Lh54;

    aput-object p3, p1, p2

    sget-object p2, Lf54;->zze:Lf54;

    .line 7
    new-instance p3, Lma4;

    const-string v0, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

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
            "Lh54;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf54;->zza:Li94;

    return-object v0
.end method

.method public final t()Lh54;
    .locals 2

    iget-object v0, p0, Lf54;->zza:Li94;

    const/4 v1, 0x0

    .line 1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh54;

    return-object v0
.end method
