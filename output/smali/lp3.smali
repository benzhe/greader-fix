.class public final Llp3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llp3$b;,
        Llp3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Llp3;",
        "Llp3$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzbzk:Llp3;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Llp3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbyz:I

.field private zzbza:I

.field private zzbzb:Ltp3;

.field private zzbzc:Lup3;

.field private zzbzd:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Lsp3;",
            ">;"
        }
    .end annotation
.end field

.field private zzbze:Lvp3;

.field private zzbzf:Lfq3;

.field private zzbzg:Ldq3;

.field private zzbzh:Laq3;

.field private zzbzi:Lbq3;

.field private zzbzj:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Llq3;",
            ">;"
        }
    .end annotation
.end field

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llp3;

    invoke-direct {v0}, Llp3;-><init>()V

    .line 2
    sput-object v0, Llp3;->zzbzk:Llp3;

    .line 3
    const-class v1, Llp3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Llp3;->zzbza:I

    .line 3
    sget-object v0, Lp83;->h:Lp83;

    .line 4
    iput-object v0, p0, Llp3;->zzbzd:Lb73;

    .line 5
    iput-object v0, p0, Llp3;->zzbzj:Lb73;

    return-void
.end method

.method public static A()Llp3;
    .locals 1

    .line 1
    sget-object v0, Llp3;->zzbzk:Llp3;

    return-object v0
.end method

.method public static synthetic B()Llp3;
    .locals 1

    .line 1
    sget-object v0, Llp3;->zzbzk:Llp3;

    return-object v0
.end method

.method public static x(Llp3;Llp3$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Llp3$a;->e:I

    .line 3
    iput p1, p0, Llp3;->zzbyz:I

    .line 4
    iget p1, p0, Llp3;->zzdv:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Llp3;->zzdv:I

    return-void
.end method

.method public static y(Llp3;Lup3;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Llp3;->zzbzc:Lup3;

    .line 3
    iget p1, p0, Llp3;->zzdv:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Llp3;->zzdv:I

    return-void
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lrq3;->a:[I

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
    sget-object p1, Llp3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Llp3;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Llp3;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Llp3;->zzbzk:Llp3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Llp3;->zzek:Ll83;

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
    sget-object p1, Llp3;->zzbzk:Llp3;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzbyz"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    sget-object p3, Lsq3;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbza"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    sget-object p3, Lxq3;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzbzb"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzbzc"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzbzd"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lsp3;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzbze"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzbzf"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzbzg"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzbzh"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzbzi"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzbzj"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Llq3;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 13
    sget-object p3, Llp3;->zzbzk:Llp3;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Llp3$b;

    invoke-direct {p1, p2}, Llp3$b;-><init>(Lrq3;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Llp3;

    invoke-direct {p1}, Llp3;-><init>()V

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

.method public final z()Lup3;
    .locals 1

    .line 1
    iget-object v0, p0, Llp3;->zzbzc:Lup3;

    if-nez v0, :cond_0

    invoke-static {}, Lup3;->y()Lup3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
