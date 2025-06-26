.class public final Lhr2;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhr2$b;,
        Lhr2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lhr2;",
        "Lhr2$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lhr2;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwj:Lz63;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz63<",
            "Ljava/lang/Integer;",
            "Lhr2$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhwn:Lhr2;


# instance fields
.field private zzdv:I

.field private zzhwi:Lx63;

.field private zzhwk:Ljava/lang/String;

.field private zzhwl:Ljava/lang/String;

.field private zzhwm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkr2;

    invoke-direct {v0}, Lkr2;-><init>()V

    sput-object v0, Lhr2;->zzhwj:Lz63;

    .line 2
    new-instance v0, Lhr2;

    invoke-direct {v0}, Lhr2;-><init>()V

    .line 3
    sput-object v0, Lhr2;->zzhwn:Lhr2;

    .line 4
    const-class v1, Lhr2;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lv63;->h:Lv63;

    .line 3
    iput-object v0, p0, Lhr2;->zzhwi:Lx63;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lhr2;->zzhwk:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lhr2;->zzhwl:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lhr2;->zzhwm:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Lhr2;
    .locals 1

    .line 1
    sget-object v0, Lhr2;->zzhwn:Lhr2;

    return-object v0
.end method

.method public static x(Lhr2;Lhr2$a;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lhr2;->zzhwi:Lx63;

    .line 4
    move-object v1, v0

    check-cast v1, Lf53;

    .line 5
    iget-boolean v1, v1, Lf53;->e:Z

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ls63;->o(Lx63;)Lx63;

    move-result-object v0

    iput-object v0, p0, Lhr2;->zzhwi:Lx63;

    .line 7
    :cond_0
    iget-object p0, p0, Lhr2;->zzhwi:Lx63;

    .line 8
    iget p1, p1, Lhr2$a;->e:I

    .line 9
    check-cast p0, Lv63;

    invoke-virtual {p0, p1}, Lv63;->o(I)V

    return-void
.end method

.method public static y(Lhr2;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lhr2;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhr2;->zzdv:I

    .line 4
    iput-object p1, p0, Lhr2;->zzhwk:Ljava/lang/String;

    return-void
.end method

.method public static z()Lhr2$b;
    .locals 1

    .line 1
    sget-object v0, Lhr2;->zzhwn:Lhr2;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lhr2$b;

    return-object v0
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Ljr2;->a:[I

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
    sget-object p1, Lhr2;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lhr2;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lhr2;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lhr2;->zzhwn:Lhr2;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lhr2;->zzek:Ll83;

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
    sget-object p1, Lhr2;->zzhwn:Lhr2;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzhwi"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 11
    sget-object p3, Llr2;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhwk"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhwl"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhwm"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    .line 12
    sget-object p3, Lhr2;->zzhwn:Lhr2;

    .line 13
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 14
    :pswitch_5
    new-instance p1, Lhr2$b;

    invoke-direct {p1, p2}, Lhr2$b;-><init>(Lkr2;)V

    return-object p1

    .line 15
    :pswitch_6
    new-instance p1, Lhr2;

    invoke-direct {p1}, Lhr2;-><init>()V

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
