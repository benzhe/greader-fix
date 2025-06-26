.class public final Lja3$i;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3$i;",
        "Lja3$i$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3$i;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjdy:Lja3$i;


# instance fields
.field private zzdv:I

.field private zzjdv:Ljava/lang/String;

.field private zzjdw:J

.field private zzjdx:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3$i;

    invoke-direct {v0}, Lja3$i;-><init>()V

    .line 2
    sput-object v0, Lja3$i;->zzjdy:Lja3$i;

    .line 3
    const-class v1, Lja3$i;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lja3$i;->zzjdv:Ljava/lang/String;

    return-void
.end method

.method public static A()Lja3$i$a;
    .locals 1

    .line 1
    sget-object v0, Lja3$i;->zzjdy:Lja3$i;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lja3$i$a;

    return-object v0
.end method

.method public static synthetic B()Lja3$i;
    .locals 1

    .line 1
    sget-object v0, Lja3$i;->zzjdy:Lja3$i;

    return-object v0
.end method

.method public static x(Lja3$i;J)V
    .locals 1

    .line 1
    iget v0, p0, Lja3$i;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lja3$i;->zzdv:I

    .line 2
    iput-wide p1, p0, Lja3$i;->zzjdw:J

    return-void
.end method

.method public static y(Lja3$i;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lja3$i;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lja3$i;->zzdv:I

    .line 4
    iput-object p1, p0, Lja3$i;->zzjdv:Ljava/lang/String;

    return-void
.end method

.method public static z(Lja3$i;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lja3$i;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lja3$i;->zzdv:I

    .line 2
    iput-boolean p1, p0, Lja3$i;->zzjdx:Z

    return-void
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
    sget-object p1, Lja3$i;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lja3$i;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lja3$i;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lja3$i;->zzjdy:Lja3$i;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lja3$i;->zzek:Ll83;

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
    sget-object p1, Lja3$i;->zzjdy:Lja3$i;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzjdv"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzjdw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjdx"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002"

    .line 11
    sget-object p3, Lja3$i;->zzjdy:Lja3$i;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lja3$i$a;

    invoke-direct {p1, p2}, Lja3$i$a;-><init>(Lha3;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lja3$i;

    invoke-direct {p1}, Lja3$i;-><init>()V

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
