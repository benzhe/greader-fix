.class public final Lxp4$d;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxp4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxp4$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lxp4$d;",
        "Lxp4$d$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzd:Lxp4$d;

.field private static volatile zze:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lxp4$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lwk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk4<",
            "Lxp4$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lxp4$d;

    invoke-direct {v0}, Lxp4$d;-><init>()V

    .line 2
    sput-object v0, Lxp4$d;->zzd:Lxp4$d;

    .line 3
    const-class v1, Lxp4$d;

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
    iput-object v0, p0, Lxp4$d;->zzc:Lwk4;

    return-void
.end method

.method public static p()Lxp4$d$a;
    .locals 1

    .line 1
    sget-object v0, Lxp4$d;->zzd:Lxp4$d;

    invoke-virtual {v0}, Lpk4;->o()Lpk4$b;

    move-result-object v0

    check-cast v0, Lxp4$d$a;

    return-object v0
.end method

.method public static q(Lxp4$d;Lxp4$b;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lxp4$d;->zzc:Lwk4;

    .line 4
    invoke-interface {v0}, Lwk4;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lwk4;->i(I)Lwk4;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lxp4$d;->zzc:Lwk4;

    .line 8
    :cond_1
    iget-object p0, p0, Lxp4$d;->zzc:Lwk4;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static s()Lxp4$d;
    .locals 1

    .line 1
    sget-object v0, Lxp4$d;->zzd:Lxp4$d;

    return-object v0
.end method

.method public static synthetic t()Lxp4$d;
    .locals 1

    .line 1
    sget-object v0, Lxp4$d;->zzd:Lxp4$d;

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
    sget-object p1, Lxp4$d;->zze:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lxp4$d;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lxp4$d;->zze:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Lxp4$d;->zzd:Lxp4$d;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Lxp4$d;->zze:Ljm4;

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
    sget-object p1, Lxp4$d;->zzd:Lxp4$d;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    .line 11
    const-class p2, Lxp4$b;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 12
    sget-object p3, Lxp4$d;->zzd:Lxp4$d;

    .line 13
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lxp4$d$a;

    invoke-direct {p1, p2}, Lxp4$d$a;-><init>(Lbp4;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lxp4$d;

    invoke-direct {p1}, Lxp4$d;-><init>()V

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
