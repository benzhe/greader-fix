.class public final Lil1;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lil1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lil1;",
        "Lil1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lil1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzlp:Lil1;


# instance fields
.field private zzdv:I

.field private zzll:Lk53;

.field private zzlm:Lk53;

.field private zzln:Lk53;

.field private zzlo:Lk53;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lil1;

    invoke-direct {v0}, Lil1;-><init>()V

    .line 2
    sput-object v0, Lil1;->zzlp:Lil1;

    .line 3
    const-class v1, Lil1;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lil1;->zzll:Lk53;

    .line 3
    iput-object v0, p0, Lil1;->zzlm:Lk53;

    .line 4
    iput-object v0, p0, Lil1;->zzln:Lk53;

    .line 5
    iput-object v0, p0, Lil1;->zzlo:Lk53;

    return-void
.end method

.method public static F()Lil1$a;
    .locals 1

    .line 1
    sget-object v0, Lil1;->zzlp:Lil1;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lil1$a;

    return-object v0
.end method

.method public static synthetic G()Lil1;
    .locals 1

    .line 1
    sget-object v0, Lil1;->zzlp:Lil1;

    return-object v0
.end method

.method public static H(Lil1;Lk53;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lil1;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lil1;->zzdv:I

    .line 4
    iput-object p1, p0, Lil1;->zzln:Lk53;

    return-void
.end method

.method public static I(Lil1;Lk53;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lil1;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lil1;->zzdv:I

    .line 4
    iput-object p1, p0, Lil1;->zzlo:Lk53;

    return-void
.end method

.method public static x(Lil1;Lk53;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lil1;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lil1;->zzdv:I

    .line 4
    iput-object p1, p0, Lil1;->zzll:Lk53;

    return-void
.end method

.method public static y([BLe63;)Lil1;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    sget-object v0, Lil1;->zzlp:Lil1;

    .line 2
    array-length v1, p0

    .line 3
    invoke-static {v0, p0, v1, p1}, Ls63;->n(Ls63;[BILe63;)Ls63;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ls63;->k(Ls63;)Ls63;

    .line 5
    check-cast p0, Lil1;

    return-object p0
.end method

.method public static z(Lil1;Lk53;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lil1;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lil1;->zzdv:I

    .line 4
    iput-object p1, p0, Lil1;->zzlm:Lk53;

    return-void
.end method


# virtual methods
.method public final A()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lil1;->zzll:Lk53;

    return-object v0
.end method

.method public final B()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lil1;->zzlm:Lk53;

    return-object v0
.end method

.method public final D()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lil1;->zzln:Lk53;

    return-object v0
.end method

.method public final E()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lil1;->zzlo:Lk53;

    return-object v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lmm1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lil1;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lil1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lil1;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lil1;->zzlp:Lil1;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lil1;->zzek:Ll83;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lil1;->zzlp:Lil1;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzll"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzlm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzln"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzlo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    .line 11
    sget-object p3, Lil1;->zzlp:Lil1;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lil1$a;

    invoke-direct {p1, p2}, Lil1$a;-><init>(Lmm1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lil1;

    invoke-direct {p1}, Lil1;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
