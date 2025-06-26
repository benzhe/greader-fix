.class public final Ly13;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly13$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Ly13;",
        "Ly13$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Ly13;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzijr:Ly13;


# instance fields
.field private zzihc:I

.field private zzihd:Lk53;

.field private zzijq:Lc23;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly13;

    invoke-direct {v0}, Ly13;-><init>()V

    .line 2
    sput-object v0, Ly13;->zzijr:Ly13;

    .line 3
    const-class v1, Ly13;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    .line 2
    sget-object v0, Lk53;->f:Lk53;

    iput-object v0, p0, Ly13;->zzihd:Lk53;

    return-void
.end method

.method public static A(Ly13;Lk53;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Ly13;->zzihd:Lk53;

    return-void
.end method

.method public static E()Ly13$a;
    .locals 1

    .line 1
    sget-object v0, Ly13;->zzijr:Ly13;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Ly13$a;

    return-object v0
.end method

.method public static F()Ly13;
    .locals 1

    .line 1
    sget-object v0, Ly13;->zzijr:Ly13;

    return-object v0
.end method

.method public static synthetic G()Ly13;
    .locals 1

    .line 1
    sget-object v0, Ly13;->zzijr:Ly13;

    return-object v0
.end method

.method public static H(Lk53;Le63;)Ly13;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le73;
        }
    .end annotation

    .line 1
    sget-object v0, Ly13;->zzijr:Ly13;

    invoke-static {v0, p0, p1}, Ls63;->l(Ls63;Lk53;Le63;)Ls63;

    move-result-object p0

    check-cast p0, Ly13;

    return-object p0
.end method

.method public static y(Ly13;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ly13;->zzihc:I

    return-void
.end method

.method public static z(Ly13;Lc23;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Ly13;->zzijq:Lc23;

    return-void
.end method


# virtual methods
.method public final B()Lk53;
    .locals 1

    .line 1
    iget-object v0, p0, Ly13;->zzihd:Lk53;

    return-object v0
.end method

.method public final D()Lc23;
    .locals 1

    .line 1
    iget-object v0, p0, Ly13;->zzijq:Lc23;

    if-nez v0, :cond_0

    invoke-static {}, Lc23;->z()Lc23;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lz13;->a:[I

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
    sget-object p1, Ly13;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Ly13;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Ly13;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Ly13;->zzijr:Ly13;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Ly13;->zzek:Ll83;

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
    sget-object p1, Ly13;->zzijr:Ly13;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzihc"

    aput-object v0, p1, p2

    const-string p2, "zzijq"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzihd"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    .line 11
    sget-object p3, Ly13;->zzijr:Ly13;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Ly13$a;

    invoke-direct {p1, p2}, Ly13$a;-><init>(Lz13;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Ly13;

    invoke-direct {p1}, Ly13;-><init>()V

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

.method public final x()I
    .locals 1

    .line 1
    iget v0, p0, Ly13;->zzihc:I

    return v0
.end method
