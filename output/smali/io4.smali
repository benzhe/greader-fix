.class public final Lio4;
.super Lpk4$c;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio4$a;,
        Lio4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4$c<",
        "Lio4;",
        "Lio4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzf:Lio4;

.field private static volatile zzg:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lio4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzd:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Lio4$b;",
            ">;"
        }
    .end annotation
.end field

.field private zze:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio4;

    invoke-direct {v0}, Lio4;-><init>()V

    .line 2
    sput-object v0, Lio4;->zzf:Lio4;

    .line 3
    const-class v1, Lio4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpk4$c;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lio4;->zze:B

    .line 3
    sget-object v0, Lmm4;->h:Lmm4;

    .line 4
    iput-object v0, p0, Lio4;->zzd:Lwk4;

    return-void
.end method

.method public static synthetic p()Lio4;
    .locals 1

    .line 1
    sget-object v0, Lio4;->zzf:Lio4;

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
    iput-byte p1, p0, Lio4;->zze:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lio4;->zze:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lio4;->zzg:Ljm4;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lio4;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lio4;->zzg:Ljm4;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Lpk4$a;

    sget-object p3, Lio4;->zzf:Lio4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 9
    sput-object p1, Lio4;->zzg:Ljm4;

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
    sget-object p1, Lio4;->zzf:Lio4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzd"

    aput-object p2, p1, p3

    .line 12
    const-class p2, Lio4$b;

    aput-object p2, p1, v0

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 13
    sget-object p3, Lio4;->zzf:Lio4;

    .line 14
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lio4$a;

    invoke-direct {p1, v1}, Lio4$a;-><init>(Lwn4;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lio4;

    invoke-direct {p1}, Lio4;-><init>()V

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
