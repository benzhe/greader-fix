.class public final Lja3$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$h$b;,
        Lja3$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3$h;",
        "Lja3$h$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjdp:Lja3$h;


# instance fields
.field private zzdv:I

.field private zzjat:B

.field private zzjaw:Ljava/lang/String;

.field private zzjdh:I

.field private zzjdi:Lja3$d;

.field private zzjdj:Lja3$e;

.field private zzjdk:I

.field private zzjdl:Lx63;

.field private zzjdm:Ljava/lang/String;

.field private zzjdn:I

.field private zzjdo:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3$h;

    invoke-direct {v0}, Lja3$h;-><init>()V

    .line 2
    sput-object v0, Lja3$h;->zzjdp:Lja3$h;

    .line 3
    const-class v1, Lja3$h;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lja3$h;->zzjat:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lja3$h;->zzjaw:Ljava/lang/String;

    .line 4
    sget-object v1, Lv63;->h:Lv63;

    .line 5
    iput-object v1, p0, Lja3$h;->zzjdl:Lx63;

    .line 6
    iput-object v0, p0, Lja3$h;->zzjdm:Ljava/lang/String;

    .line 7
    sget-object v0, Lp83;->h:Lp83;

    .line 8
    iput-object v0, p0, Lja3$h;->zzjdo:Lb73;

    return-void
.end method

.method public static A(Lja3$h;Lja3$h$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lja3$h$a;->e:I

    .line 3
    iput p1, p0, Lja3$h;->zzjdn:I

    .line 4
    iget p1, p0, Lja3$h;->zzdv:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lja3$h;->zzdv:I

    return-void
.end method

.method public static B(Lja3$h;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lja3$h;->zzdv:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lja3$h;->zzdv:I

    .line 4
    iput-object p1, p0, Lja3$h;->zzjaw:Ljava/lang/String;

    return-void
.end method

.method public static D(Lja3$h;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lja3$h;->zzjdo:Lb73;

    .line 4
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lja3$h;->zzjdo:Lb73;

    .line 6
    :cond_0
    iget-object p0, p0, Lja3$h;->zzjdo:Lb73;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F()Lja3$h$b;
    .locals 1

    .line 1
    sget-object v0, Lja3$h;->zzjdp:Lja3$h;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lja3$h$b;

    return-object v0
.end method

.method public static synthetic G()Lja3$h;
    .locals 1

    .line 1
    sget-object v0, Lja3$h;->zzjdp:Lja3$h;

    return-object v0
.end method

.method public static y(Lja3$h;I)V
    .locals 1

    .line 1
    iget v0, p0, Lja3$h;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lja3$h;->zzdv:I

    .line 2
    iput p1, p0, Lja3$h;->zzjdh:I

    return-void
.end method

.method public static z(Lja3$h;Lja3$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lja3$h;->zzjdi:Lja3$d;

    .line 4
    iget p1, p0, Lja3$h;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lja3$h;->zzdv:I

    return-void
.end method


# virtual methods
.method public final E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lja3$h;->zzjdo:Lb73;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p3, Lha3;->a:[I

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
    iput-byte p1, p0, Lja3$h;->zzjat:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lja3$h;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lja3$h;->zzek:Ll83;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lja3$h;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lja3$h;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ls63$a;

    sget-object p3, Lja3$h;->zzjdp:Lja3$h;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 9
    sput-object p1, Lja3$h;->zzek:Ll83;

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
    sget-object p1, Lja3$h;->zzjdp:Lja3$h;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, p3

    const-string p2, "zzjdh"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzjaw"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjdi"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjdj"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjdk"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjdl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzjdm"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzjdn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 12
    sget-object p3, Loa3;->a:Ly63;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzjdo"

    aput-object p3, p1, p2

    const-string p2, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u100c\u0006\t\u001a"

    .line 13
    sget-object p3, Lja3$h;->zzjdp:Lja3$h;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lja3$h$b;

    invoke-direct {p1, v1}, Lja3$h$b;-><init>(Lha3;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lja3$h;

    invoke-direct {p1}, Lja3$h;-><init>()V

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

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lja3$h;->zzjaw:Ljava/lang/String;

    return-object v0
.end method
