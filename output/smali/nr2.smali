.class public final Lnr2;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnr2$b;,
        Lnr2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lnr2;",
        "Lnr2$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lnr2;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwu:Lnr2;


# instance fields
.field private zzdv:I

.field private zzdw:Ljava/lang/String;

.field private zzhwr:I

.field private zzhws:Ljava/lang/String;

.field private zzhwt:Lhr2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnr2;

    invoke-direct {v0}, Lnr2;-><init>()V

    .line 2
    sput-object v0, Lnr2;->zzhwu:Lnr2;

    .line 3
    const-class v1, Lnr2;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lnr2;->zzdw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lnr2;->zzhws:Ljava/lang/String;

    return-void
.end method

.method public static A()Lnr2$b;
    .locals 1

    .line 1
    sget-object v0, Lnr2;->zzhwu:Lnr2;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lnr2$b;

    return-object v0
.end method

.method public static synthetic B()Lnr2;
    .locals 1

    .line 1
    sget-object v0, Lnr2;->zzhwu:Lnr2;

    return-object v0
.end method

.method public static x(Lnr2;Lhr2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lnr2;->zzhwt:Lhr2;

    .line 3
    iget p1, p0, Lnr2;->zzdv:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lnr2;->zzdv:I

    return-void
.end method

.method public static y(Lnr2;Lnr2$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lnr2$a;->e:I

    .line 3
    iput p1, p0, Lnr2;->zzhwr:I

    .line 4
    iget p1, p0, Lnr2;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnr2;->zzdv:I

    return-void
.end method

.method public static z(Lnr2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lnr2;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnr2;->zzdv:I

    .line 4
    iput-object p1, p0, Lnr2;->zzdw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lmr2;->a:[I

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
    sget-object p1, Lnr2;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lnr2;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lnr2;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lnr2;->zzhwu:Lnr2;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lnr2;->zzek:Ll83;

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
    sget-object p1, Lnr2;->zzhwu:Lnr2;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzhwr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    sget-object p3, Lor2;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhws"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhwt"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003"

    .line 12
    sget-object p3, Lnr2;->zzhwu:Lnr2;

    .line 13
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lnr2$b;

    invoke-direct {p1, p2}, Lnr2$b;-><init>(Lmr2;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lnr2;

    invoke-direct {p1}, Lnr2;-><init>()V

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
