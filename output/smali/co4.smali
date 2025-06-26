.class public final Lco4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lco4;",
        "Lco4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzo:Lco4;

.field private static volatile zzp:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lco4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lyn4;

.field private zze:Lfo4;

.field private zzf:Lao4;

.field private zzg:I

.field private zzh:Lzn4;

.field private zzi:Lio4;

.field private zzj:J

.field private zzk:J

.field private zzl:Z

.field private zzm:I

.field private zzn:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lco4;

    invoke-direct {v0}, Lco4;-><init>()V

    .line 2
    sput-object v0, Lco4;->zzo:Lco4;

    .line 3
    const-class v1, Lco4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lco4;->zzn:B

    return-void
.end method

.method public static synthetic p()Lco4;
    .locals 1

    .line 1
    sget-object v0, Lco4;->zzo:Lco4;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lwn4;->a:[I

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
    iput-byte p1, p0, Lco4;->zzn:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lco4;->zzn:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lco4;->zzp:Ljm4;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lco4;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lco4;->zzp:Ljm4;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lpk4$a;

    sget-object p3, Lco4;->zzo:Lco4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 9
    sput-object p1, Lco4;->zzp:Ljm4;

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
    sget-object p1, Lco4;->zzo:Lco4;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    sget-object p3, Lmo4;->a:Lvk4;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u100c\u0003\u0004\u1009\u0004\u0005\u1409\u0005\u0006\u1002\u0006\u0007\u1002\u0007\u0008\u1007\u0008\t\u1004\t\n\u1009\u0002"

    .line 13
    sget-object p3, Lco4;->zzo:Lco4;

    .line 14
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lco4$a;

    invoke-direct {p1, v1}, Lco4$a;-><init>(Lwn4;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lco4;

    invoke-direct {p1}, Lco4;-><init>()V

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
