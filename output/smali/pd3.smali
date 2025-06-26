.class public final Lpd3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpd3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lpd3;",
        "Lpd3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzacn:Lpd3;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lpd3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaci:Ljava/lang/String;

.field private zzacj:Ljava/lang/String;

.field private zzack:J

.field private zzacl:J

.field private zzacm:J

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lpd3;

    invoke-direct {v0}, Lpd3;-><init>()V

    .line 2
    sput-object v0, Lpd3;->zzacn:Lpd3;

    .line 3
    const-class v1, Lpd3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lpd3;->zzaci:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lpd3;->zzacj:Ljava/lang/String;

    return-void
.end method

.method public static A(Lpd3;J)V
    .locals 1

    .line 1
    iget v0, p0, Lpd3;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lpd3;->zzdv:I

    .line 2
    iput-wide p1, p0, Lpd3;->zzacl:J

    return-void
.end method

.method public static B(Lpd3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lpd3;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lpd3;->zzdv:I

    .line 4
    iput-object p1, p0, Lpd3;->zzacj:Ljava/lang/String;

    return-void
.end method

.method public static D(Lpd3;J)V
    .locals 1

    .line 1
    iget v0, p0, Lpd3;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lpd3;->zzdv:I

    .line 2
    iput-wide p1, p0, Lpd3;->zzacm:J

    return-void
.end method

.method public static J()Lpd3$a;
    .locals 1

    .line 1
    sget-object v0, Lpd3;->zzacn:Lpd3;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lpd3$a;

    return-object v0
.end method

.method public static K()Lpd3;
    .locals 1

    .line 1
    sget-object v0, Lpd3;->zzacn:Lpd3;

    return-object v0
.end method

.method public static synthetic L()Lpd3;
    .locals 1

    .line 1
    sget-object v0, Lpd3;->zzacn:Lpd3;

    return-object v0
.end method

.method public static M(Lk53;)Lpd3;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    sget-object v0, Lpd3;->zzacn:Lpd3;

    .line 2
    invoke-static {}, Le63;->a()Le63;

    move-result-object v1

    .line 3
    invoke-static {v0, p0, v1}, Ls63;->t(Ls63;Lk53;Le63;)Ls63;

    move-result-object p0

    invoke-static {p0}, Ls63;->k(Ls63;)Ls63;

    .line 4
    invoke-static {p0}, Ls63;->k(Ls63;)Ls63;

    .line 5
    check-cast p0, Lpd3;

    return-object p0
.end method

.method public static x(Lpd3;J)V
    .locals 1

    .line 1
    iget v0, p0, Lpd3;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lpd3;->zzdv:I

    .line 2
    iput-wide p1, p0, Lpd3;->zzack:J

    return-void
.end method

.method public static y(Lpd3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lpd3;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpd3;->zzdv:I

    .line 4
    iput-object p1, p0, Lpd3;->zzaci:Ljava/lang/String;

    return-void
.end method

.method public static z(Lk53;Le63;)Lpd3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    sget-object v0, Lpd3;->zzacn:Lpd3;

    invoke-static {v0, p0, p1}, Ls63;->l(Ls63;Lk53;Le63;)Ls63;

    move-result-object p0

    check-cast p0, Lpd3;

    return-object p0
.end method


# virtual methods
.method public final E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd3;->zzaci:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lpd3;->zzacj:Ljava/lang/String;

    return-object v0
.end method

.method public final G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpd3;->zzack:J

    return-wide v0
.end method

.method public final H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpd3;->zzacl:J

    return-wide v0
.end method

.method public final I()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lpd3;->zzacm:J

    return-wide v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lod3;->a:[I

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
    sget-object p1, Lpd3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lpd3;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lpd3;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lpd3;->zzacn:Lpd3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lpd3;->zzek:Ll83;

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
    sget-object p1, Lpd3;->zzacn:Lpd3;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzaci"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzacj"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzack"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzacl"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzacm"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 11
    sget-object p3, Lpd3;->zzacn:Lpd3;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lpd3$a;

    invoke-direct {p1, p2}, Lpd3$a;-><init>(Lod3;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lpd3;

    invoke-direct {p1}, Lpd3;-><init>()V

    return-object p1

    nop

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
