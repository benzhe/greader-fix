.class public final Lzn4$c;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzn4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzn4$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lzn4$c;",
        "Lzn4$c$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzg:Lzn4$c;

.field private static volatile zzh:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lzn4$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lzn4$b;

.field private zze:Lzn4$b;

.field private zzf:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzn4$c;

    invoke-direct {v0}, Lzn4$c;-><init>()V

    .line 2
    sput-object v0, Lzn4$c;->zzg:Lzn4$c;

    .line 3
    const-class v1, Lzn4$c;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    return-void
.end method

.method public static synthetic p()Lzn4$c;
    .locals 1

    .line 1
    sget-object v0, Lzn4$c;->zzg:Lzn4$c;

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
    sget-object p1, Lzn4$c;->zzh:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lzn4$c;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lzn4$c;->zzh:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Lzn4$c;->zzg:Lzn4$c;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Lzn4$c;->zzh:Ljm4;

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
    sget-object p1, Lzn4$c;->zzg:Lzn4$c;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

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

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002"

    .line 11
    sget-object p3, Lzn4$c;->zzg:Lzn4$c;

    .line 12
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lzn4$c$a;

    invoke-direct {p1, p2}, Lzn4$c$a;-><init>(Lwn4;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lzn4$c;

    invoke-direct {p1}, Lzn4$c;-><init>()V

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
