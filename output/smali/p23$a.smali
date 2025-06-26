.class public final Lp23$a;
.super Ls63;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp23$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63<",
        "Lp23$a;",
        "Lp23$a$a;",
        ">;",
        "Lf83;"
    }
.end annotation


# static fields
.field private static volatile zzek:Ll83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll83<",
            "Lp23$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzilc:Lp23$a;


# instance fields
.field private zzijv:Ljava/lang/String;

.field private zzikm:I

.field private zzikx:I

.field private zziky:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp23$a;

    invoke-direct {v0}, Lp23$a;-><init>()V

    .line 2
    sput-object v0, Lp23$a;->zzilc:Lp23$a;

    .line 3
    const-class v1, Lp23$a;

    invoke-static {v1, v0}, Ls63;->s(Ljava/lang/Class;Ls63;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls63;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lp23$a;->zzijv:Ljava/lang/String;

    return-void
.end method

.method public static A(Lp23$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lp23$a;->zzijv:Ljava/lang/String;

    return-void
.end method

.method public static B()Lp23$a$a;
    .locals 1

    .line 1
    sget-object v0, Lp23$a;->zzilc:Lp23$a;

    invoke-virtual {v0}, Ls63;->u()Ls63$b;

    move-result-object v0

    check-cast v0, Lp23$a$a;

    return-object v0
.end method

.method public static synthetic D()Lp23$a;
    .locals 1

    .line 1
    sget-object v0, Lp23$a;->zzilc:Lp23$a;

    return-object v0
.end method

.method public static x(Lp23$a;I)V
    .locals 0

    .line 1
    iput p1, p0, Lp23$a;->zziky:I

    return-void
.end method

.method public static y(Lp23$a;Lh23;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lh23;->f()I

    move-result p1

    iput p1, p0, Lp23$a;->zzikx:I

    return-void
.end method

.method public static z(Lp23$a;Ly23;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ly23;->f()I

    move-result p1

    iput p1, p0, Lp23$a;->zzikm:I

    return-void
.end method


# virtual methods
.method public final q(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lo23;->a:[I

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
    sget-object p1, Lp23$a;->zzek:Ll83;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lp23$a;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lp23$a;->zzek:Ll83;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Ls63$a;

    sget-object p3, Lp23$a;->zzilc:Lp23$a;

    invoke-direct {p1, p3}, Ls63$a;-><init>(Ls63;)V

    .line 8
    sput-object p1, Lp23$a;->zzek:Ll83;

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
    sget-object p1, Lp23$a;->zzilc:Lp23$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzijv"

    aput-object v0, p1, p2

    const-string p2, "zzikx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zziky"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzikm"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    .line 11
    sget-object p3, Lp23$a;->zzilc:Lp23$a;

    .line 12
    new-instance v0, Lr83;

    invoke-direct {v0, p3, p2, p1}, Lr83;-><init>(Le83;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 13
    :pswitch_5
    new-instance p1, Lp23$a$a;

    invoke-direct {p1, p2}, Lp23$a$a;-><init>(Lo23;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lp23$a;

    invoke-direct {p1}, Lp23$a;-><init>()V

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
