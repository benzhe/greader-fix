.class public final Lll1;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lll1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lll1;",
        "Lll1$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lll1;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmm:Lll1;


# instance fields
.field private zzdv:I

.field private zzhv:I

.field private zzhw:I

.field private zzlm:Lk53;

.field private zzml:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Lk53;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lll1;

    invoke-direct {v0}, Lll1;-><init>()V

    .line 2
    sput-object v0, Lll1;->zzmm:Lll1;

    .line 3
    const-class v1, Lll1;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lp83;->h:Lp83;

    .line 3
    iput-object v0, p0, Lll1;->zzml:Lb73;

    .line 4
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lll1;->zzlm:Lk53;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lll1;->zzhw:I

    .line 6
    iput v0, p0, Lll1;->zzhv:I

    return-void
.end method

.method public static A()Lll1$a;
    .locals 1

    .line 1
    sget-object v0, Lll1;->zzmm:Lll1;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lll1$a;

    return-object v0
.end method

.method public static synthetic B()Lll1;
    .locals 1

    .line 1
    sget-object v0, Lll1;->zzmm:Lll1;

    return-object v0
.end method

.method public static x(Lll1;Lls1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p1, p1, Lls1;->e:I

    .line 3
    iput p1, p0, Lll1;->zzhv:I

    .line 4
    iget p1, p0, Lll1;->zzdv:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lll1;->zzdv:I

    return-void
.end method

.method public static y(Lll1;Lk53;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lll1;->zzml:Lb73;

    .line 4
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lll1;->zzml:Lb73;

    .line 6
    :cond_0
    iget-object p0, p0, Lll1;->zzml:Lb73;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static z(Lll1;Lk53;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget v0, p0, Lll1;->zzdv:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lll1;->zzdv:I

    .line 4
    iput-object p1, p0, Lll1;->zzlm:Lk53;

    return-void
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lmm1;->a:[I

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
    sget-object p1, Lll1;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lll1;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lll1;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lll1;->zzmm:Lll1;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lll1;->zzek:Ll83;

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
    sget-object p1, Lll1;->zzmm:Lll1;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdv"

    aput-object v0, p1, p2

    const-string p2, "zzml"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzlm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 11
    sget-object p3, Lkz1;->a:Ly63;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzhv"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    sget-object p3, Llt1;->a:Ly63;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    .line 13
    sget-object p3, Lll1;->zzmm:Lll1;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lll1$a;

    invoke-direct {p1, p2}, Lll1$a;-><init>(Lmm1;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lll1;

    invoke-direct {p1}, Lll1;-><init>()V

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
