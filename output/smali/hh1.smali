.class public final Lhh1;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhh1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lhh1;",
        "Lhh1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lhh1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfm:Lhh1;


# instance fields
.field private zzdv:I

.field private zzfg:Ljava/lang/String;

.field private zzfh:Ljava/lang/String;

.field private zzfi:Ljava/lang/String;

.field private zzfj:Ljava/lang/String;

.field private zzfk:Ljava/lang/String;

.field private zzfl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhh1;

    invoke-direct {v0}, Lhh1;-><init>()V

    .line 2
    sput-object v0, Lhh1;->zzfm:Lhh1;

    .line 3
    const-class v1, Lhh1;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lhh1;->zzfg:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lhh1;->zzfh:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lhh1;->zzfi:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lhh1;->zzfj:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lhh1;->zzfk:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lhh1;->zzfl:Ljava/lang/String;

    return-void
.end method

.method public static y()Lhh1;
    .locals 1

    .line 1
    sget-object v0, Lhh1;->zzfm:Lhh1;

    return-object v0
.end method

.method public static synthetic z()Lhh1;
    .locals 1

    .line 1
    sget-object v0, Lhh1;->zzfm:Lhh1;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lhg1;->a:[I

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
    sget-object p1, Lhh1;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lhh1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lhh1;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lhh1;->zzfm:Lhh1;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lhh1;->zzek:Ll83;

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
    sget-object p1, Lhh1;->zzfm:Lhh1;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzfg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzfh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzfi"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzfj"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzfk"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzfl"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    .line 11
    sget-object p3, Lhh1;->zzfm:Lhh1;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lhh1$a;

    invoke-direct {p1, p2}, Lhh1$a;-><init>(Lhg1;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lhh1;

    invoke-direct {p1}, Lhh1;-><init>()V

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
    iget-object v0, p0, Lhh1;->zzfg:Ljava/lang/String;

    return-object v0
.end method
