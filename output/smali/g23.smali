.class public final Lg23;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg23$b;,
        Lg23$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lg23;",
        "Lg23$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lg23;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzijy:Lg23;


# instance fields
.field private zzijv:Ljava/lang/String;

.field private zzijw:Lk53;

.field private zzijx:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg23;

    invoke-direct {v0}, Lg23;-><init>()V

    .line 2
    sput-object v0, Lg23;->zzijy:Lg23;

    .line 3
    const-class v1, Lg23;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg23;->zzijv:Ljava/lang/String;

    .line 3
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Lg23;->zzijw:Lk53;

    return-void
.end method

.method public static E()Lg23$b;
    .locals 1

    .line 1
    sget-object v0, Lg23;->zzijy:Lg23;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lg23$b;

    return-object v0
.end method

.method public static F()Lg23;
    .locals 1

    .line 1
    sget-object v0, Lg23;->zzijy:Lg23;

    return-object v0
.end method

.method public static synthetic G()Lg23;
    .locals 1

    .line 1
    sget-object v0, Lg23;->zzijy:Lg23;

    return-object v0
.end method

.method public static x(Lg23;Lg23$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lg23$a;->f()I

    move-result p1

    iput p1, p0, Lg23;->zzijx:I

    return-void
.end method

.method public static y(Lg23;Lk53;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lg23;->zzijw:Lk53;

    return-void
.end method

.method public static z(Lg23;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lg23;->zzijv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg23;->zzijv:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Lg23;->zzijw:Lk53;

    return-object v0
.end method

.method public final D()Lg23$a;
    .locals 2

    .line 1
    iget v0, p0, Lg23;->zzijx:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lg23$a;->j:Lg23$a;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lg23$a;->i:Lg23$a;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lg23$a;->h:Lg23$a;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lg23$a;->g:Lg23$a;

    goto :goto_0

    .line 6
    :cond_4
    sget-object v0, Lg23$a;->f:Lg23$a;

    :goto_0
    if-nez v0, :cond_5

    .line 7
    sget-object v0, Lg23$a;->k:Lg23$a;

    :cond_5
    return-object v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lf23;->a:[I

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
    sget-object p1, Lg23;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lg23;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lg23;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lg23;->zzijy:Lg23;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lg23;->zzek:Ll83;

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
    sget-object p1, Lg23;->zzijy:Lg23;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzijv"

    aput-object v0, p1, p2

    const-string p2, "zzijw"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzijx"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 11
    sget-object p3, Lg23;->zzijy:Lg23;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lg23$b;

    invoke-direct {p1, p2}, Lg23$b;-><init>(Lf23;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lg23;

    invoke-direct {p1}, Lg23;-><init>()V

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
