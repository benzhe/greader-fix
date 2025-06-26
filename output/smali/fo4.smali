.class public final Lfo4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfo4$a;,
        Lfo4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lfo4;",
        "Lfo4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzd:Lfo4;

.field private static volatile zze:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lfo4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Lfo4$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfo4;

    invoke-direct {v0}, Lfo4;-><init>()V

    .line 2
    sput-object v0, Lfo4;->zzd:Lfo4;

    .line 3
    const-class v1, Lfo4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    .line 2
    sget-object v0, Lmm4;->h:Lmm4;

    .line 3
    iput-object v0, p0, Lfo4;->zzc:Lwk4;

    return-void
.end method

.method public static synthetic p()Lfo4;
    .locals 1

    .line 1
    sget-object v0, Lfo4;->zzd:Lfo4;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lwn4;->a:[I

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
    sget-object p1, Lfo4;->zze:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lfo4;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lfo4;->zze:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Lfo4;->zzd:Lfo4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Lfo4;->zze:Ljm4;

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
    sget-object p1, Lfo4;->zzd:Lfo4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    .line 11
    const-class p2, Lfo4$b;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 12
    sget-object p3, Lfo4;->zzd:Lfo4;

    .line 13
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lfo4$a;

    invoke-direct {p1, p2}, Lfo4$a;-><init>(Lwn4;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lfo4;

    invoke-direct {p1}, Lfo4;-><init>()V

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
