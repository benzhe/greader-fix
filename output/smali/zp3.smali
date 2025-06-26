.class public final Lzp3;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzp3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lzp3;",
        "Lzp3$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzcdh:Lzp3;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lzp3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcdd:Ljava/lang/String;

.field private zzcde:I

.field private zzcdf:Lx63;

.field private zzcdg:Ljq3;

.field private zzdv:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzp3;

    invoke-direct {v0}, Lzp3;-><init>()V

    .line 2
    sput-object v0, Lzp3;->zzcdh:Lzp3;

    .line 3
    const-class v1, Lzp3;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lzp3;->zzcdd:Ljava/lang/String;

    .line 3
    sget-object v0, Lv63;->h:Lv63;

    .line 4
    iput-object v0, p0, Lzp3;->zzcdf:Lx63;

    return-void
.end method

.method public static synthetic x()Lzp3;
    .locals 1

    .line 1
    sget-object v0, Lzp3;->zzcdh:Lzp3;

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
    sget-object p1, Lzp3;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lzp3;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lzp3;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lzp3;->zzcdh:Lzp3;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lzp3;->zzek:Ll83;

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
    sget-object p1, Lzp3;->zzcdh:Lzp3;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzcdd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzcde"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    sget-object p3, Lxq3;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzcdf"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzcdg"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u100c\u0001\u0003\u0016\u0004\u1009\u0002"

    .line 12
    sget-object p3, Lzp3;->zzcdh:Lzp3;

    .line 13
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lzp3$a;

    invoke-direct {p1, p2}, Lzp3$a;-><init>(Lrq3;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lzp3;

    invoke-direct {p1}, Lzp3;-><init>()V

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
