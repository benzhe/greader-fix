.class public final Lvp4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lvp4;",
        "Lvp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzf:Lxk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxk4<",
            "Ljava/lang/Integer;",
            "Lnh4;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lvp4;

.field private static volatile zzk:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lvp4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lwp4;

.field private zze:Luk4;

.field private zzg:J

.field private zzh:J

.field private zzi:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Ljq4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhi4;

    invoke-direct {v0}, Lhi4;-><init>()V

    sput-object v0, Lvp4;->zzf:Lxk4;

    .line 2
    new-instance v0, Lvp4;

    invoke-direct {v0}, Lvp4;-><init>()V

    .line 3
    sput-object v0, Lvp4;->zzj:Lvp4;

    .line 4
    const-class v1, Lvp4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    .line 2
    sget-object v0, Lsk4;->h:Lsk4;

    .line 3
    iput-object v0, p0, Lvp4;->zze:Luk4;

    .line 4
    sget-object v0, Lmm4;->h:Lmm4;

    .line 5
    iput-object v0, p0, Lvp4;->zzi:Lwk4;

    return-void
.end method

.method public static synthetic p()Lvp4;
    .locals 1

    .line 1
    sget-object v0, Lvp4;->zzj:Lvp4;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lbp4;->a:[I

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
    sget-object p1, Lvp4;->zzk:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lvp4;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lvp4;->zzk:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Lvp4;->zzj:Lvp4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Lvp4;->zzk:Ljm4;

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
    sget-object p1, Lvp4;->zzj:Lvp4;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    sget-object p3, Lph4;->a:Lvk4;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Ljq4;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u001e\u0003\u1003\u0001\u0004\u1003\u0002\u0005\u001b"

    .line 12
    sget-object p3, Lvp4;->zzj:Lvp4;

    .line 13
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lvp4$a;

    invoke-direct {p1, p2}, Lvp4$a;-><init>(Lbp4;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lvp4;

    invoke-direct {p1}, Lvp4;-><init>()V

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
