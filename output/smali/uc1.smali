.class public final Luc1;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luc1$b;,
        Luc1$a;,
        Luc1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Luc1;",
        "Luc1$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static final zzej:Luc1;

.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Luc1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdv:I

.field private zzdw:Ljava/lang/String;

.field private zzdx:J

.field private zzdy:Ljava/lang/String;

.field private zzdz:Ljava/lang/String;

.field private zzea:Ljava/lang/String;

.field private zzeb:J

.field private zzec:J

.field private zzed:Ljava/lang/String;

.field private zzee:J

.field private zzef:Ljava/lang/String;

.field private zzeg:Ljava/lang/String;

.field private zzeh:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Luc1$a;",
            ">;"
        }
    .end annotation
.end field

.field private zzei:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Luc1;

    invoke-direct {v0}, Luc1;-><init>()V

    .line 2
    sput-object v0, Luc1;->zzej:Luc1;

    .line 3
    const-class v1, Luc1;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Luc1;->zzdw:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Luc1;->zzdy:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Luc1;->zzdz:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Luc1;->zzea:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Luc1;->zzed:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Luc1;->zzef:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Luc1;->zzeg:Ljava/lang/String;

    .line 9
    sget-object v0, Lp83;->h:Lp83;

    .line 10
    iput-object v0, p0, Luc1;->zzeh:Lb73;

    return-void
.end method

.method public static A(Luc1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Luc1;->zzdv:I

    .line 4
    iput-object p1, p0, Luc1;->zzdy:Ljava/lang/String;

    return-void
.end method

.method public static B(Luc1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Luc1;->zzdv:I

    .line 4
    iput-object p1, p0, Luc1;->zzdz:Ljava/lang/String;

    return-void
.end method

.method public static D(Luc1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Luc1;->zzdv:I

    .line 4
    iput-object p1, p0, Luc1;->zzea:Ljava/lang/String;

    return-void
.end method

.method public static E(Luc1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Luc1;->zzdv:I

    .line 4
    iput-object p1, p0, Luc1;->zzeg:Ljava/lang/String;

    return-void
.end method

.method public static F()Luc1$b;
    .locals 1

    .line 1
    sget-object v0, Luc1;->zzej:Luc1;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Luc1$b;

    return-object v0
.end method

.method public static synthetic G()Luc1;
    .locals 1

    .line 1
    sget-object v0, Luc1;->zzej:Luc1;

    return-object v0
.end method

.method public static x(Luc1;J)V
    .locals 1

    .line 1
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Luc1;->zzdv:I

    .line 2
    iput-wide p1, p0, Luc1;->zzdx:J

    return-void
.end method

.method public static y(Luc1;Luc1$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Luc1$c;->e:I

    .line 3
    iput p1, p0, Luc1;->zzei:I

    .line 4
    iget p1, p0, Luc1;->zzdv:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Luc1;->zzdv:I

    return-void
.end method

.method public static z(Luc1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Luc1;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Luc1;->zzdv:I

    .line 4
    iput-object p1, p0, Luc1;->zzdw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lgd1;->a:[I

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
    sget-object p1, Luc1;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Luc1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Luc1;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Luc1;->zzej:Luc1;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Luc1;->zzek:Ll83;

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
    sget-object p1, Luc1;->zzej:Luc1;

    return-object p1

    :pswitch_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzdw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzdx"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzdy"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzdz"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzea"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzeb"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzec"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzed"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzee"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzef"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzeg"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzeh"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    .line 11
    const-class p3, Luc1$a;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzei"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    .line 12
    sget-object p3, Lhe1;->a:Ly63;

    aput-object p3, p1, p2

    const-string p2, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1002\u0008\n\u1008\t\u000b\u1008\n\u000c\u001b\r\u100c\u000b"

    .line 13
    sget-object p3, Luc1;->zzej:Luc1;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Luc1$b;

    invoke-direct {p1, p2}, Luc1$b;-><init>(Lgd1;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Luc1;

    invoke-direct {p1}, Luc1;-><init>()V

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
