.class public final Lsp4;
.super Lpk4;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsp4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpk4<",
        "Lsp4;",
        "Lsp4$a;",
        ">;",
        "Lbm4;"
    }
.end annotation


# static fields
.field private static final zzj:Lsp4;

.field private static volatile zzk:Ljm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljm4<",
            "Lsp4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lip4;

.field private zze:Lvi4;

.field private zzf:Lhp4;

.field private zzg:Lfp4;

.field private zzh:I

.field private zzi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lsp4;

    invoke-direct {v0}, Lsp4;-><init>()V

    .line 2
    sput-object v0, Lsp4;->zzj:Lsp4;

    .line 3
    const-class v1, Lsp4;

    invoke-static {v1, v0}, Lpk4;->l(Ljava/lang/Class;Lpk4;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpk4;-><init>()V

    return-void
.end method

.method public static synthetic p()Lsp4;
    .locals 1

    .line 1
    sget-object v0, Lsp4;->zzj:Lsp4;

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
    sget-object p1, Lsp4;->zzk:Ljm4;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lsp4;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lsp4;->zzk:Ljm4;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lpk4$a;

    sget-object p3, Lsp4;->zzj:Lsp4;

    invoke-direct {p1, p3}, Lpk4$a;-><init>(Lpk4;)V

    .line 8
    sput-object p1, Lsp4;->zzk:Ljm4;

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
    sget-object p1, Lsp4;->zzj:Lsp4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

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

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u100b\u0004\u0006\u100b\u0005"

    .line 11
    sget-object p3, Lsp4;->zzj:Lsp4;

    .line 12
    new-instance v0, Llm4;

    invoke-direct {v0, p3, p2, p1}, Llm4;-><init>(Lam4;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lsp4$a;

    invoke-direct {p1, p2}, Lsp4$a;-><init>(Lbp4;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lsp4;

    invoke-direct {p1}, Lsp4;-><init>()V

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
