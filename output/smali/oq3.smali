.class public final Loq3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loq3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Loq3;",
        "Loq3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzche:Loq3;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Loq3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcdi:I

.field private zzcgt:Lnq3;

.field private zzcgu:Ljq3;

.field private zzchd:Lkq3;

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Loq3;

    invoke-direct {v0}, Loq3;-><init>()V

    .line 2
    sput-object v0, Loq3;->zzche:Loq3;

    .line 3
    const-class v1, Loq3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Loq3;->zzcdi:I

    return-void
.end method

.method public static synthetic x()Loq3;
    .locals 1

    .line 1
    sget-object v0, Loq3;->zzche:Loq3;

    return-object v0
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
    sget-object p1, Loq3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Loq3;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Loq3;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Loq3;->zzche:Loq3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Loq3;->zzek:Ll83;

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
    sget-object p1, Loq3;->zzche:Loq3;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzchd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcdi"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    sget-object p3, Lxq3;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcgt"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcgu"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100c\u0001\u0003\u1009\u0002\u0004\u1009\u0003"

    .line 12
    sget-object p3, Loq3;->zzche:Loq3;

    .line 13
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Loq3$a;

    invoke-direct {p1, p2}, Loq3$a;-><init>(Lrq3;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Loq3;

    invoke-direct {p1}, Loq3;-><init>()V

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
