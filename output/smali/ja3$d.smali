.class public final Lja3$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja3$d$b;,
        Lja3$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lja3$d;",
        "Lja3$d$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lja3$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjcf:Lja3$d;


# instance fields
.field private zzdv:I

.field private zzjat:B

.field private zzjca:Lja3$d$a;

.field private zzjcb:Lb73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb73<",
            "Lja3$c;",
            ">;"
        }
    .end annotation
.end field

.field private zzjcc:Lk53;

.field private zzjcd:Lk53;

.field private zzjce:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lja3$d;

    invoke-direct {v0}, Lja3$d;-><init>()V

    .line 2
    sput-object v0, Lja3$d;->zzjcf:Lja3$d;

    .line 3
    const-class v1, Lja3$d;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lja3$d;->zzjat:B

    .line 3
    sget-object v0, Lp83;->h:Lp83;

    .line 4
    iput-object v0, p0, Lja3$d;->zzjcb:Lb73;

    .line 5
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lja3$d;->zzjcc:Lk53;

    .line 6
    iput-object v0, p0, Lja3$d;->zzjcd:Lk53;

    return-void
.end method

.method public static x(Lja3$d;Lja3$c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lja3$d;->zzjcb:Lb73;

    .line 4
    invoke-interface {v0}, Lb73;->h0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Ls63;->p(Lb73;)Lb73;

    move-result-object v0

    iput-object v0, p0, Lja3$d;->zzjcb:Lb73;

    .line 6
    :cond_0
    iget-object p0, p0, Lja3$d;->zzjcb:Lb73;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static y()Lja3$d$b;
    .locals 1

    .line 1
    sget-object v0, Lja3$d;->zzjcf:Lja3$d;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lja3$d$b;

    return-object v0
.end method

.method public static synthetic z()Lja3$d;
    .locals 1

    .line 1
    sget-object v0, Lja3$d;->zzjcf:Lja3$d;

    return-object v0
.end method


# virtual methods
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
    iput-byte p1, p0, Lja3$d;->zzjat:B

    return-object v1

    .line 4
    :pswitch_1
    iget-byte p1, p0, Lja3$d;->zzjat:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lja3$d;->zzek:Ll83;

    if-nez p1, :cond_2

    .line 6
    const-class p2, Lja3$d;

    monitor-enter p2

    .line 7
    :try_start_0
    sget-object p1, Lja3$d;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ls63$a;

    sget-object p3, Lja3$d;->zzjcf:Lja3$d;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 9
    sput-object p1, Lja3$d;->zzek:Ll83;

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
    sget-object p1, Lja3$d;->zzjcf:Lja3$d;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzdv"

    aput-object p2, p1, p3

    const-string p2, "zzjca"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzjcb"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 12
    const-class p3, Lja3$c;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjcc"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjcd"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzjce"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003"

    .line 13
    sget-object p3, Lja3$d;->zzjcf:Lja3$d;

    .line 14
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_5
    new-instance p1, Lja3$d$b;

    invoke-direct {p1, v1}, Lja3$d$b;-><init>(Lha3;)V

    return-object p1

    .line 16
    :pswitch_6
    new-instance p1, Lja3$d;

    invoke-direct {p1}, Lja3$d;-><init>()V

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
