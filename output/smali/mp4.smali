.class public final Lmp4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lmp4;",
        "Lmp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zze:Lmp4;

.field private static volatile zzf:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lmp4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmp4;

    invoke-direct {v0}, Lmp4;-><init>()V

    sput-object v0, Lmp4;->zze:Lmp4;

    const-class v1, Lmp4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpk4;-><init>()V

    return-void
.end method

.method public static synthetic p()Lmp4;
    .locals 1

    sget-object v0, Lmp4;->zze:Lmp4;

    return-object v0
.end method


# virtual methods
.method public final j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lbp4;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lmp4;->zzf:Ljm4;

    if-nez p1, :cond_1

    const-class p2, Lmp4;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmp4;->zzf:Ljm4;

    if-nez p1, :cond_0

    new-instance p1, Lpk4$a;

    sget-object p3, Lmp4;->zze:Lmp4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    sput-object p1, Lmp4;->zzf:Ljm4;

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

    :pswitch_3
    sget-object p1, Lmp4;->zze:Lmp4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    sget-object p3, Lxh4;->a:Lvk4;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    sget-object p3, Lmp4;->zze:Lmp4;

    .line 1
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lmp4$a;

    invoke-direct {p1, p2}, Lmp4$a;-><init>(Lbp4;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lmp4;

    invoke-direct {p1}, Lmp4;-><init>()V

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
