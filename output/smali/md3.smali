.class public final Lmd3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmd3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lmd3;",
        "Lmd3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzach:Lmd3;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lmd3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzace:Lpd3;

.field private zzacf:Lk53;

.field private zzacg:Lk53;

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmd3;

    invoke-direct {v0}, Lmd3;-><init>()V

    .line 2
    sput-object v0, Lmd3;->zzach:Lmd3;

    .line 3
    const-class v1, Lmd3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lmd3;->zzacf:Lk53;

    .line 3
    iput-object v0, p0, Lmd3;->zzacg:Lk53;

    return-void
.end method

.method public static synthetic B()Lmd3;
    .locals 1

    .line 1
    sget-object v0, Lmd3;->zzach:Lmd3;

    return-object v0
.end method

.method public static x(Lk53;Le63;)Lmd3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    sget-object v0, Lmd3;->zzach:Lmd3;

    invoke-static {v0, p0, p1}, Ls63;->l(Ls63;Lk53;Le63;)Ls63;

    move-result-object p0

    check-cast p0, Lmd3;

    return-object p0
.end method


# virtual methods
.method public final A()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd3;->zzacg:Lk53;

    return-object v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lnd3;->a:[I

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
    sget-object p1, Lmd3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lmd3;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lmd3;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lmd3;->zzach:Lmd3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lmd3;->zzek:Ll83;

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
    sget-object p1, Lmd3;->zzach:Lmd3;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzace"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzacf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzacg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 11
    sget-object p3, Lmd3;->zzach:Lmd3;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lmd3$a;

    invoke-direct {p1, p2}, Lmd3$a;-><init>(Lnd3;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lmd3;

    invoke-direct {p1}, Lmd3;-><init>()V

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

.method public final y()Lpd3;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd3;->zzace:Lpd3;

    if-nez v0, :cond_0

    invoke-static {}, Lpd3;->K()Lpd3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lmd3;->zzacf:Lk53;

    return-object v0
.end method
