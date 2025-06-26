.class public final Lja3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$b;,
        Lja3$i;,
        Lja3$f;,
        Lja3$a;,
        Lja3$h;,
        Lja3$e;,
        Lja3$d;,
        Lja3$c;,
        Lja3$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3;",
        "Lja3$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjbv:Lja3;


# instance fields
.field private zzcan:I

.field private zzdv:I

.field private zzjap:Lk53;

.field private zzjat:B

.field private zzjaw:Ljava/lang/String;

.field private zzjbg:I

.field private zzjbh:Ljava/lang/String;

.field private zzjbi:Ljava/lang/String;

.field private zzjbj:Lja3$a;

.field private zzjbk:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Lja3$h;",
            ">;"
        }
    .end annotation
.end field

.field private zzjbl:Ljava/lang/String;

.field private zzjbm:Lja3$f;

.field private zzjbn:Z

.field private zzjbo:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzjbp:Ljava/lang/String;

.field private zzjbq:Z

.field private zzjbr:Z

.field private zzjbs:Lja3$i;

.field private zzjbt:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzjbu:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3;

    invoke-direct {v0}, Lja3;-><init>()V

    .line 2
    sput-object v0, Lja3;->zzjbv:Lja3;

    .line 3
    const-class v1, Lja3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lja3;->zzjat:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lja3;->zzjaw:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lja3;->zzjbh:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lja3;->zzjbi:Ljava/lang/String;

    .line 6
    sget-object v1, Lp83;->h:Lp83;

    .line 7
    iput-object v1, p0, Lja3;->zzjbk:Lb73;

    .line 8
    iput-object v0, p0, Lja3;->zzjbl:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lja3;->zzjbo:Lb73;

    .line 10
    iput-object v0, p0, Lja3;->zzjbp:Ljava/lang/String;

    .line 11
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lja3;->zzjap:Lk53;

    .line 12
    iput-object v1, p0, Lja3;->zzjbt:Lb73;

    .line 13
    iput-object v1, p0, Lja3;->zzjbu:Lb73;

    return-void
.end method

.method public static A(Lja3;Lja3$f;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lja3;->zzjbm:Lja3$f;

    .line 4
    iget p1, p0, Lja3;->zzdv:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lja3;->zzdv:I

    return-void
.end method

.method public static B(Lja3;Lja3$g;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lja3$g;->e:I

    .line 3
    iput p1, p0, Lja3;->zzcan:I

    .line 4
    iget p1, p0, Lja3;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lja3;->zzdv:I

    return-void
.end method

.method public static D(Lja3;Lja3$h;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lja3;->zzjbk:Lb73;

    .line 4
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lja3;->zzjbk:Lb73;

    .line 6
    :cond_0
    iget-object p0, p0, Lja3;->zzjbk:Lb73;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static E(Lja3;Lja3$i;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lja3;->zzjbs:Lja3$i;

    .line 4
    iget p1, p0, Lja3;->zzdv:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lja3;->zzdv:I

    return-void
.end method

.method public static F(Lja3;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lja3;->zzjbt:Lb73;

    .line 2
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lja3;->zzjbt:Lb73;

    .line 4
    :cond_0
    iget-object p0, p0, Lja3;->zzjbt:Lb73;

    invoke-static {p1, p0}, Lb53;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static G(Lja3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lja3;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lja3;->zzdv:I

    .line 4
    iput-object p1, p0, Lja3;->zzjaw:Ljava/lang/String;

    return-void
.end method

.method public static H(Lja3;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lja3;->zzjbu:Lb73;

    .line 2
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lja3;->zzjbu:Lb73;

    .line 4
    :cond_0
    iget-object p0, p0, Lja3;->zzjbu:Lb73;

    invoke-static {p1, p0}, Lb53;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static I(Lja3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lja3;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lja3;->zzdv:I

    .line 4
    iput-object p1, p0, Lja3;->zzjbh:Ljava/lang/String;

    return-void
.end method

.method public static L()Lja3$b;
    .locals 1

    .line 1
    sget-object v0, Lja3;->zzjbv:Lja3;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lja3$b;

    return-object v0
.end method

.method public static synthetic M()Lja3;
    .locals 1

    .line 1
    sget-object v0, Lja3;->zzjbv:Lja3;

    return-object v0
.end method

.method public static N(Lja3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lja3;->zzdv:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lja3;->zzdv:I

    .line 4
    iput-object p1, p0, Lja3;->zzjbl:Ljava/lang/String;

    return-void
.end method

.method public static y(Lja3;)V
    .locals 1

    .line 1
    iget v0, p0, Lja3;->zzdv:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lja3;->zzdv:I

    .line 2
    sget-object v0, Lja3;->zzjbv:Lja3;

    .line 3
    iget-object v0, v0, Lja3;->zzjbl:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lja3;->zzjbl:Ljava/lang/String;

    return-void
.end method

.method public static z(Lja3;Lja3$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lja3;->zzjbj:Lja3$a;

    .line 4
    iget p1, p0, Lja3;->zzdv:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lja3;->zzdv:I

    return-void
.end method


# virtual methods
.method public final J()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja3$h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lja3;->zzjbk:Lb73;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lja3;->zzjbl:Ljava/lang/String;

    return-object v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lha3;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lja3;->zzjat:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lja3;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lja3;->zzek:Ll83;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lja3;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lja3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ls63$a;

    sget-object p3, Lja3;->zzjbv:Lja3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 9
    sput-object p1, Lja3;->zzek:Ll83;

    .line 10
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lja3;->zzjbv:Lja3;

    return-object p1

    :pswitch_4
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, p3

    const-string p2, "zzjaw"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzjbh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjbi"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjbk"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 12
    const-class p3, Lja3$h;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjbn"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjbo"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzjbp"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzjbq"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzjbr"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzcan"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 13
    sget-object p3, Lna3;->a:Ly63;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzjbg"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    .line 14
    sget-object p3, Lla3;->a:Ly63;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzjbj"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzjbl"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzjbm"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzjap"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzjbs"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzjbt"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzjbu"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001\u1008\u0002\u0002\u1008\u0003\u0003\u1008\u0004\u0004\u041b\u0005\u1007\u0008\u0006\u001a\u0007\u1008\t\u0008\u1007\n\t\u1007\u000b\n\u100c\u0000\u000b\u100c\u0001\u000c\u1009\u0005\r\u1008\u0006\u000e\u1009\u0007\u000f\u100a\u000c\u0011\u1009\r\u0014\u001a\u0015\u001a"

    .line 15
    sget-object p3, Lja3;->zzjbv:Lja3;

    .line 16
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 17
    :pswitch_5
    new-instance p1, Lja3$b;

    invoke-direct {p1, v1}, Lja3$b;-><init>(Lha3;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lja3;

    invoke-direct {p1}, Lja3;-><init>()V

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

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lja3;->zzjaw:Ljava/lang/String;

    return-object v0
.end method
