.class public final Lja3$d$a;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja3$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3$d$a;",
        "Lja3$d$a$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3$d$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjcj:Lja3$d$a;


# instance fields
.field private zzdv:I

.field private zzjcg:Lk53;

.field private zzjch:Lk53;

.field private zzjci:Lk53;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3$d$a;

    invoke-direct {v0}, Lja3$d$a;-><init>()V

    .line 2
    sput-object v0, Lja3$d$a;->zzjcj:Lja3$d$a;

    .line 3
    const-class v1, Lja3$d$a;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lja3$d$a;->zzjcg:Lk53;

    .line 3
    iput-object v0, p0, Lja3$d$a;->zzjch:Lk53;

    .line 4
    iput-object v0, p0, Lja3$d$a;->zzjci:Lk53;

    return-void
.end method

.method public static synthetic x()Lja3$d$a;
    .locals 1

    .line 1
    sget-object v0, Lja3$d$a;->zzjcj:Lja3$d$a;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lha3;->a:[I

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
    sget-object p1, Lja3$d$a;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lja3$d$a;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lja3$d$a;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lja3$d$a;->zzjcj:Lja3$d$a;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lja3$d$a;->zzek:Ll83;

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
    sget-object p1, Lja3$d$a;->zzjcj:Lja3$d$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzjcg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzjch"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjci"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 11
    sget-object p3, Lja3$d$a;->zzjcj:Lja3$d$a;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lja3$d$a$a;

    invoke-direct {p1, p2}, Lja3$d$a$a;-><init>(Lha3;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lja3$d$a;

    invoke-direct {p1}, Lja3$d$a;-><init>()V

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
